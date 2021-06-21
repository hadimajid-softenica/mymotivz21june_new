<?php

namespace App\Http\Controllers;

use App\candidate_resume;
use App\NewCandidate;
use App\NewClient;
use App\Notifications\Info;
use App\Candidate;
use App\Client;
use App\contract;
use App\Education;
use App\Http\Requests\CandidateRequest;
use App\Http\Requests\SubAdminCreateRequest;
use App\Http\Requests\SubAdminEditRequest;
use App\Http\Requests\ClientRequest;
use App\Http\Requests\TodoCreateRequest;
use App\Http\Requests\EditCandidateRequest;
use App\Http\Requests\JobRequest;
use App\Http\Requests\EditClientRequest;
use App\Imports\CandidateImport;
use App\Imports\ClientImport;
use App\Imports\JobImport;
use App\InterviewStage;
use App\Mail\contactmail;
use App\Mail\subAdminmail;
use App\placement;
use App\Privileges;
use App\schedule_interview;
use App\InterviewStatus;
use App\Note;
use App\Mail\contractmail;
use App\Job;
use App\Resume;
use App\Status;
use App\todo;
use App\todo_action;
use App\User;
use function Couchbase\defaultDecoder;
use Foo\DataProviderIssue2922\SecondHelloWorldTest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use App\Http\Requests\PasswordRequest;
use Illuminate\Support\Facades\Mail;
use Maatwebsite\Excel\Facades\Excel;
use phpDocumentor\Reflection\DocBlock\Tags\Reference\Url;
use Illuminate\Support\Facades\Validator;
use PhpOffice\PhpSpreadsheet\Shared\TimeZone;


class AdminController extends Controller
{
    //   public function index()
    // {
    //     $job = Job::all();
    //     $client = Client::all();

    //     return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $job]);
    // }
    //


    //privileges

    public function sub_admin_resume_delete(Request $request)
    {
        $user = User::find($request->id);
        if (file_exists(public_path() . '/files/' . $user->resume)) {

            unlink(public_path() . '/files/' . $user->resume);
        }
        $user->resume = null;
        $user->save();
    }

    public function privilegeList()
    {
        return json_encode(Privileges::all())  ;
    }

    public function createprivilege()
    {
        return view('admin.sub_admin.privileges.create') ;
    }

    public function createdprivilege(Request $request)
    {
        $exist = Privileges::where('name' , $request->privilegeName)->exists() ;
//            ->orWhere('color' , $request->statusColor)->exists() ;

        if($exist)
        {
            return json_encode($exist) ;
        }else{
            $privilege = new Privileges ;

            $privilege->name = $request->privilegeName ;
            $privilege->save() ;

            return "success" ;
        }

    }

    public function deleteprivilege(Request $request)
    {
        Privileges::where('id' , $request->privilegeId)->delete() ;
    }

    public function editprivilege(Request $request)
    {

        $privilege = Privileges::find($request->id) ;

        $statusExist = Privileges::where('name' , $request->eLetestName)
            ->Where('id' ,'!=' , $request->id)->exists() ;


        if($statusExist)
        {
            $statusExistBool = true ;
            return json_encode($statusExistBool) ;
        }else{
            $privilege->name = $request->eLetestName ;

            $privilege->save() ;
            return "status updated" ;
        }

    }
    //end privilege



    //Notifications

    public function markread()
    {
        Auth::user()->unreadNotifications->markAsRead();

        $notifications = Auth::user()->readNotifications;
        return json_encode($notifications)  ;

    }


    public function sub_admin_create()
    {
//        dd(Auth::id());
        $this->authorize('create', User::class);
        $privileges = Privileges::all();
        return view('admin.sub_admin.create-sub-admin')->with('privileges',$privileges);
    }
    public function sub_admin_created(SubAdminCreateRequest $request)
    {

        $this->authorize('create', User::class);

//       dd($request->all());
       $sub_admin = new User;
       $sub_admin->email = $request->email;
       $sub_admin->name = $request->name;
       $sub_admin->phone_no = $request->phone_no;
        $date = date('Y-m-d', strtotime(str_replace('-', '/', $request->hire_date)));
       $sub_admin->hiring_date = $date;
       $sub_admin->job_title = $request->job_title;
       $sub_admin->home_address = $request->home_address;
       $sub_admin->description = $request->description;
        $password = bcrypt($request->password);
       $sub_admin->password = $password;
       $sub_admin->is_admin = 1;
        $date = date('Y_m_d-H-i-s');

        if($request->hasfile('resume')) {

            $name = $request->file('resume')->getClientOriginalName();
            $fileName = pathinfo($name)['filename'];
            $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
            $ext = pathinfo(storage_path() . $name, PATHINFO_EXTENSION);
            //$newD =  \Carbon\Carbon::now()->timestamp ;
            $randResume = $newName . "-" . $date . "." . $ext;

            $request->file('resume')->move(public_path() . '/files/', $randResume);
            $sub_admin->resume = $randResume;
        }
        $sub_admin->save();

        foreach ($request->privileges as $p_id)
        {

            $sub_admin->privileges()->attach($p_id);
            if($p_id==1)
            {
                $sub_admin->is_super_admin = 1;
                $sub_admin->save();
                break;
            }
        }


        $data = array([
         'email' =>  $request->email  ,
         'password' =>  $request->password
        ]);
//        dd($data[0]['email']);
        session()->flash('SubAdmin', 'Employee is Successfully Created!');
        $email = $request->email;
//        $email = 'qatesting119@gmail.com';
//        $email = 'softenicaemail@gmail.com';
        Mail::to($email)->send(new subAdminmail($data));
        $user_id=Auth::id();

        if($user_id!=1)
        {
            $user = User::find(1);

            $details=
                [
                    'info' => 'New Employee Signed up',
                    'data' => 'A new employee ' .$sub_admin->name.' has signed up <br> <a href="'.route('sub_admin_all').'">View Details<a>',

                ];
            $user->notify(New Info($details));
        }
        return redirect()->back();
    }
    public function sub_admin_edit($id)
    {
        $privileges = Privileges::all();
        $user = User::with('privileges')->find($id);
//        dd($user->toArray());
        return view('admin.sub_admin.edit-sub-admin')->with(['user'=>$user , 'privileges'=>$privileges]);
    }
    public function sub_admin_delete(Request $request)
    {
        $user = User::find($request->id);
        $user->privileges()->detach();
        User::destroy($request->id);
    }

    public function sub_admin_update(SubAdminEditRequest $request)
    {
//       dd($request->all());
        $sub_admin = User::find($request->id);

        $sub_admin->name = $request->name;
        $sub_admin->phone_no = $request->phone_no;
        $sub_admin->description = $request->description;
        $date = date('Y-m-d', strtotime(str_replace('-', '/', $request->hire_date)));
        $sub_admin->hiring_date = $date;
        $sub_admin->job_title = $request->job_title;
        $sub_admin->home_address = $request->home_address;
        if($request->hasfile('resume'))
        {
            if($sub_admin->resume!=null) {
                if (file_exists(public_path() . '/files/' . $sub_admin->resume)) {

                    unlink(public_path() . '/files/' . $sub_admin->resume);
                }
            }
            $date = date('Y_m_d-H-i-s');


            $name=$request->file('resume')->getClientOriginalName();
            $fileName = pathinfo($name)['filename'] ;
            $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
            $ext = pathinfo(storage_path().$name, PATHINFO_EXTENSION) ;
            //$newD =  \Carbon\Carbon::now()->timestamp ;
            $randResume = $newName."-".$date.".".$ext;

            $request->file('resume')->move(public_path().'/files/', $randResume);
            $sub_admin->resume = $randResume;
        }
        if ($request->password)
        {
            $password = bcrypt($request->password);
            $sub_admin->password = $password;
        }
        $sub_admin->save();

        $sub_admin->privileges()->detach();
        $sub_admin->is_super_admin = 0;
        $sub_admin->save();
        foreach ($request->privileges as $p_id)
        {

            $sub_admin->privileges()->attach($p_id);
            if($p_id==1)
            {
                $sub_admin->is_super_admin = 1;
                $sub_admin->save();
                break;
            }
        }

        session()->flash('SubAdmin', 'Employee is Successfully Edited!');
        return redirect()->back();
    }

    public function sub_admin_all()
    {
//        $user = User::with('privileges')->where('is_super_admin',0)->get();
//        dd($user->toArray());
        return view('admin.sub_admin.view-all');
    }
    public function sub_admin_all_ajax(Request $request)
    {
        $page_num = $request->page_num;
        if ($page_num==1)
            $offset = 0;
        else
        {
            $offset = ($page_num-1) * 10;
        }
        if($request->admin!=0)
        {
            $sub_admins = User::with('privileges')->where('id',$request->admin)->offset($offset)->limit(10)->orderby('name')->get();
            $total= User::where('id',$request->admin)->count();
        }
        else
        {
        $sub_admins = User::with('privileges')->where([['id','!=',1],['id','!=',Auth::id()]])->offset($offset)->limit(10)->orderby('name')->get();
        $total= User::where('id','!=',1)->count();
//            dd($clients->toArray());
        }
        $drop_down = User::with('privileges')->where([['id','!=',1],['id','!=',Auth::id()]])->offset($offset)->limit(10)->orderby('name')->get();
//        $data = array(['clients'=>$clients , 'total'=>$total,'drop_down'=>$drop_down]) ;
        $data = array(['sub_admins'=>$sub_admins , 'total'=>$total,'drop_down'=>$drop_down]) ;

        return json_encode($data) ;

    }
    public function sub_admin_search_ajax(Request $request)
    {
        $user = User::with('privileges')->find($request->id);

        return json_encode($user) ;
    }


    public function candidatebulkstatus(Request $request)
    {
//        dd($request->all());
        Candidate::whereIn('id' , $request->candIds)
            ->update(['status_id' => $request->status]) ;

    }
    public function todo()
    {
        $user_id = Auth::id();
        $employees = User::where([['is_super_admin',0],['id','!=',$user_id]])->get();
        return view('admin.todo.to-do-list')->with(['employees' => $employees]);

    }
    public function calendar()
    {
        $user_id = Auth::id();
        $employees = User::where([['is_super_admin',0],['id','!=',$user_id]])->get();
        return view('admin.calendar.calendar')->with(['employees' => $employees]);

    }
    public function addtodo(TodoCreateRequest $request)
    {
        $todo = new todo;
        $todo->action_id=$request->action;
        $todo->time=$request->time;
        $date = date('Y-m-d', strtotime(str_replace('-', '/', $request->date)));
        $todo->date=$date;
        $todo->details=$request->task;
        $todo->user_id=Auth::id();
        $todo->save();

    }

    public function edittodo(TodoCreateRequest $request)
    {
//        dd($request->all());
        $todo =todo::find($request->id);
        $todo->action_id=$request->action;
        $todo->time=$request->time;
        $date = date('Y-m-d', strtotime(str_replace('-', '/', $request->date)));
        $todo->date=$date;
        $todo->details=$request->task;
        $todo->save();

    }
    public function searchtodo(Request $request)
    {
//        dd($request->all());
        $todo =todo::find($request->id);
        $date = date('m/d/Y', strtotime(str_replace('/', '-', $todo->date)));

        $action = todo_action::all() ;
        $data = array(['todo'=>$todo,'date'=>$date , 'action'=>$action]) ;

        return json_encode($data) ;

    }
    public function deletetodo(Request $request)
    {
//        dd($request->all());
        todo::destroy($request->id);
    }
    public function bulkdeletetodo(Request $request)
    {
//        dd($request->all());
//        todo::destroy($request->id);
        todo::whereIn('id', $request->list)->delete();

    }
    public function todoactions()
    {

        return view('admin.todo.actions');
    }
    public function todoactionslist()
    {
        $action = todo_action::all() ;

        return json_encode($action) ;
    }
    public function todoajax()
    {


            $todo = todo::with('action')->where('user_id',Auth::id())->get() ;


        return json_encode($todo) ;
    }

    public function todolist(Request $request)
    {
        $page_num = $request->page_num;
        if ($page_num==1)
            $offset = 0;
        else
        {
            $offset = ($page_num-1) * 10;
        }
        {
            $todo = todo::with('action')->where('user_id',Auth::id())->offset($offset)->limit(10)->get() ;
            $total= todo::count();

        }
        $data = array(['todo'=>$todo , 'total'=>$total]) ;

        return json_encode($data) ;
    }
    public function createdaction(Request $request)
    {

        $exist = todo_action::where('name' , $request->Name)->exists() ;
//            ->orWhere('color' , $request->statusColor)->exists() ;

        if($exist)
        {
            return json_encode($exist) ;
        }else{
            $action = new todo_action ;

            $action->name = $request->Name ;
            $action->color = $request->Color ;

            $action->save() ;

            return "success" ;
        }


    }
//
    public function updateaction(Request $request)
    {
//dd($request->all());
        $actionExistBool = false ;

        $action = todo_action::find($request->id) ;

        $actionExist = todo_action::where('name' , $request->Text)
            ->Where('id' ,'!=' , $request->id)->exists() ;


        if($actionExist)
        {
            $actionExistBool = true ;
            return json_encode($actionExistBool) ;
        }else{
            $action->name = $request->Text ;
            $action->color = $request->Color ;

            $action->save() ;
            return "Action updated" ;
        }



    }
//
    public function deleteaction(Request $request)
    {
        $todo = todo::where('action_id' , $request->actionId)->count() ;
//        dd($todo);
//
//        //it means it has a candidate so it cant be delete.
        if($todo > 0)
        {
            $boolean = true ;
            return  json_encode($boolean);
        }else{
            todo_action::where('id' , $request->actionId)->delete() ;
        }
    }

    public function noncontract()
    {
//       $clients = DB::table('clients')
//       $clients = Client::doesntHave('contracts')->get();
        $clients = Client::all();
//        dd($clients->toArray());
        return json_encode($clients);
    }
    public function contractdelete(Request $request)
    {
        $this->authorize('delete', contract::class);

        contract::destroy($request->interview_id);
    }
    public function signcontract(Request $request)
    {
     $contract=contract::find($request->contract_id);
     $contract->status= 1;
     $contract->save();
    }
    public function contractedit(Request $request)
    {
//        dd($request->all());
        $request->validate([
//            'edit_full_name'=> 'required',
//            'client_id'=> 'required',
//            'edit_phone_no'=> 'required',
//            'edit_email_address'=> 'required',
//            'edit_business_name'=> 'required',
            'edit_business_address'=> 'required',
            'edit_business_number'=> 'required',
//            'edit_business_web'=> 'required',
//            'edit_job_title'=> 'required',
            'edit_positions'=> 'required',
            'edit_opening'=> 'required',
            'edit_quoted_fee'=> 'required',
        ]);
        $contract = contract::find($request->contract_id_edit);
//        $contract->client_id = $request->edit_client_id;
//        $contract->business_name = $request->edit_business_name;
        $contract->business_address = $request->edit_business_address;
        $contract->business_number = $request->edit_business_number;
//        $contract->business_web = $request->edit_business_web;
//        $contract->full_name = $request->edit_full_name;
//        $contract->job_title = $request->edit_job_title;
//        $contract->phone_no = $request->edit_phone_no;
//        $contract->email = $request->edit_email_address;
        $contract->positions = $request->edit_positions;
        $contract->openings = $request->edit_opening;
        $contract->quoted_fee = $request->edit_quoted_fee;
//        dd($request->contract_file);
        if($request->hasfile('contract_file'))
        {
//            dd($request->contract_file);
            $date = date('Y_m_d-H-i-s');
            $file =$request->contract_file;
            $c_name = $file->getClientOriginalName();
            $fileName = pathinfo($c_name)['filename'] ;
            $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
            $ext = pathinfo(storage_path().$c_name, PATHINFO_EXTENSION) ;
            //$newD =  \Carbon\Carbon::now()->timestamp ;
            $randcontract = $newName."-".$date.".".$ext;
//dd($randcontract);
            $file->move(public_path().'/files/', $randcontract);
            $contract->contract_file = $randcontract;
        }


        $contract->save();
//        dd($contract);
        return redirect()->route('allcontract');
    }
    public function addcontract(Request $request)
    {
//        dd($request->contract_file);
        $request->validate([
//         'full_name'=> 'required',
        'client_id'=> 'required',
//        'phone_no'=> 'required',
//        'email_address'=> 'required',
//        'business_name'=> 'required',
       'business_address'=> 'required',
        'business_number'=> 'required',
//        'business_web'=> 'required',
//        'job_title'=> 'required',
        'positions'=> 'required',
        'opening'=> 'required',
        ]);
        $contract = new contract;
        $contract->client_id = $request->client_id;
//        $contract->business_name = $request->business_name;
        $contract->business_address = $request->business_address;
        $contract->business_number = $request->business_number;
//        $contract->business_web = $request->business_web;
//        $contract->full_name = $request->full_name;
//        $contract->job_title = $request->job_title;
//        $contract->phone_no = $request->phone_no;
//        $contract->email = $request->email_address;
        $contract->positions = $request->positions;
        $contract->openings = $request->opening;
        $contract->quoted_fee = $request->quoted_fee;
        $contract->emails = $request->emails[0];
        //file
        $date = date('Y_m_d-H-i-s');
        $file =$request->contract_file;
        $c_name = $file->getClientOriginalName();
        $fileName = pathinfo($c_name)['filename'] ;
        $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
        $ext = pathinfo(storage_path().$c_name, PATHINFO_EXTENSION) ;
        //$newD =  \Carbon\Carbon::now()->timestamp ;
        $randcontract = $newName."-".$date.".".$ext;

        $file->move(public_path().'/files/', $randcontract);
        $contract->contract_file = $randcontract;
        //end file

        $contract->save();
//        $client = Client::with('contracts')->where('id',$request->client_id)->get();
        $client_contract = contract::with('client')->where('id',$contract->id)->get();
//        $client=Client::find($request->client_id);
//        dd($client_contract->toArray());
//        dd($client_contract[0]['client']['email']);
        $email = $client_contract[0]['client']['email'];
//        dd($email);

//        $email = 'zain.waheed.softenica@gmail.com';
//        dd($contract->toArray());
//        dd($client[0]['contracts'][0]['id']);
        if ($request->emails[0]!=null) {

//    dd($request->emails);
            $cc_mails = [];
            $extra_mails = explode(",", $request->emails[0]);
            foreach ($extra_mails as $e_mail) {
                $result = filter_var($e_mail, FILTER_VALIDATE_EMAIL);
                if ($result != false) {
                    $cc_mails[] = $result;
                }


            }

            Mail::to($email)->cc($cc_mails)->send(new contractmail($client_contract));
        }
        else
        {
            Mail::to($email)->send(new contractmail($client_contract));
        }

return redirect()->route('allcontract');
    }

    public function deleteplacement(Request $request)
    {
        placement::destroy($request->id);
    }
    public function addplacement(Request $request)
    {
//        $request->validate([
//         'job'=> 'required',
//            'candidate'=> 'required',
//            'company'=> 'required',
//            'salary'=> 'required',
//            'fee'=> 'required',
//        ]);
        $placement = new placement;
        $placement->candidate_id = $request->candidate;
        $placement->job_id= $request->job;
        $placement->client_id= $request->company;
        $placement->salary= $request->salary;
        $placement->fee = $request->fee;
        $s_date = date('Y-m-d', strtotime(str_replace('-', '/', $request->s_date)));

        $placement->start_date = $s_date;
        $placement->recruiter_id = Auth::id();

        $placement->save();

        $status = Status::where('name','HIRED')->first();

        $candidate = Candidate::find( $placement->candidate_id);
        $candidate->status_id = $status->id;
        $candidate->save();

    }
    public function editplacement(Request $request)
    {
//        $request->validate([
//            'job'=> 'required',
//            'candidate'=> 'required',
//            'company'=> 'required',
//            'salary'=> 'required',
//            'fee'=> 'required',
//        ]);
        $placement = placement::find($request->id);
        $placement->candidate_id = $request->candidate;
        $placement->job_id= $request->job;
        $placement->client_id= $request->company;
        $placement->salary= $request->salary;
        $placement->fee = $request->fee;
        $s_date = date('Y-m-d', strtotime(str_replace('-', '/', $request->s_date)));
        $placement->start_date = $s_date;
        $placement->save();
    }
    public function allcontract(){
//        $clients = Client::has('contracts')->get();
        $this->authorize('view', contract::class);

        return view('admin.contract.all_contracts');

    }
    public function allplacement(){
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $pipelineClients = Client::whereIn('id',$where)->get() ;
        $candidates = Candidate::with('status')->get();
        $employees = User::where([['is_super_admin',0],['id','!=',$user_id]])->get();
//        $clients = Client::has('contracts')->get();
        return view('admin.placement.placement')->with(['pipelineClients' => $pipelineClients, 'jobCandidates' => $candidates,'employees'=>$employees]);

    }
    public function searchplacement(Request $request)
    {
        $placements=placement::with(['jobs','candidates','clients'])->where('id',$request->id)->get();
        $s_date = date('m/d/Y', strtotime(str_replace('/', '-', $placements[0]['start_date'])));

        $data =array(
            'data' =>  $placements,
            's_date' => $s_date,
        );
//        return json_encode($interview);
        return json_encode($data);
//        return json_encode($placements);
    }

    public function listplacement(Request $request){

        $offset=$request['start'];
        $limit=$request['length'];
        $order = '';
        $where1 = array();
        $where = array();

        if(!empty($request['job_name']))
        {
            $j_name = $request['job_name'];

            array_push($where,['placements.job_id',$j_name]);
            array_push($where1,['job_id',$j_name]);
//            $s1=1;
        }
        if(!empty($request['company_name']))
        {
            $c_name = $request['company_name'];
            array_push($where,['placements.client_id',$c_name]);
            array_push($where1,['client_id',$c_name]);
//            $s2=1;
        }
        if(!empty($request['sort']))
        {
            $sort_c = $request['sort'];
            if ($sort_c=='A')
            {
                $order = 'ASC';
            }
            else
            {
                $order = 'DESC';

            }
//            array_push($where,['client_id',$c_name]);
//            $s2=1;
        }
        if(!empty($request['candidate_name']))
        {
            $cand_name = $request['candidate_name'];
            array_push($where,['placements.candidate_id',$cand_name]);
            array_push($where1,['candidate_id',$cand_name]);
//            $s2=1;
        }


//        $this->authorize('viewAny', placement::class);
        if (Auth::user()->can('viewAny', placement::class)) {
            $totaldata =placement::with(['jobs','candidates','clients','recruiter'])->where($where1)->count();
            $placements=placement::join('jobs','jobs.id','=','placements.job_id')
                ->join('candidates','candidates.id','=','placements.candidate_id')
                ->join('clients','clients.id','=','placements.client_id')
                ->join('users','users.id','=','placements.recruiter_id')
                ->select('placements.*','clients.company_name','jobs.jobtitle','candidates.name','candidates.id as candidate_id','users.name as recruiter_name')
                ->where($where)->offset($offset)->limit($limit)->orderBy('clients.company_name', $order)->get();
        }
        else
        {
            $totaldata =placement::with(['jobs','candidates','clients','recruiter'])->where($where1)->where('recruiter_id',Auth::id())->count();
            $placements=placement::join('jobs','jobs.id','=','placements.job_id')
                ->join('candidates','candidates.id','=','placements.candidate_id')
                ->join('clients','clients.id','=','placements.client_id')
                ->join('users','users.id','=','placements.recruiter_id')
                ->select('placements.*','clients.company_name','jobs.jobtitle','candidates.name','candidates.id as candidate_id','users.name as recruiter_name')
                ->where($where)->where('recruiter_id',Auth::id())->offset($offset)->limit($limit)->orderBy('clients.company_name', $order)->get();
        }




        $columns=array();
        foreach ($placements as $placement) {
            $s_date = date('d/M/Y', strtotime(str_replace('/', '-', $placement['start_date'])));


                $columns[] = array(
//                    'status_id'=>$schedule_interview['status']['id'],
                    'id'  =>   $placement['id'],
                    'recruiter'  =>   $placement['recruiter_name'],
                    'company' => '<b style="color: #4d9a10">'.$placement['company_name'].'</b>',
                    'job' =>  $placement['jobtitle'],
                    'candidate' => "<a href=".url('admin/candidate/detail/')."/".$placement['candidate_id'].">".$placement['name']."</a>",
                    'start_date' =>  $s_date,
                    'salary' =>  $placement['salary'],
                    'fee' => $placement['fee'],
                );

        }
        $total=$totaldata;
        $json_data = array(
            "draw"            => intval( $_REQUEST['draw'] ),
            "recordsTotal"    => intval( $total ),
            "recordsFiltered" => intval( $total ),
            "data"            => $columns,
        );
        echo json_encode($json_data);
    }

    public function contractdetails(Request $request)
    {

        $page_num = $request->page_num;
        if ($page_num==1)
            $offset = 0;
        else
        {
            $offset = ($page_num-1);
        }

//       $contract =contract::find($request->contract_id);
       $contract =Client::with(['contracts'=> function($query) use ($offset){
           $query->offset($offset)->limit(1);
    }])->where('id',$request->client_id)->get();
//        dd($contract->toArray());
        $total =Client::withCount('contracts')->where('id',$request->client_id)->pluck('contracts_count')->first();
        $data = array(['client'=>$contract , 'total'=>$total]) ;
//dd($total);
        return json_encode($data) ;
    }
    public function contractsajax(Request $request)
    {
        $page_num = $request->page_num;
        if ($page_num==1)
            $offset = 0;
        else
        {
            $offset = ($page_num-1) * 10;
        }
        if($request->client_id!=0)
        {
            $clients = Client::has('contracts')->with('notes','contracts')->where('id',$request->client_id)->offset($offset)->limit(10)->get();
            $total= Client::has('contracts')->where('id',$request->client_id)->count();
        }
        else
        {
            $clients = Client::has('contracts')->with('notes','contracts')->offset($offset)->limit(10)->orderby('company_name')->get();
            $total= Client::has('contracts')->count();
//            dd($clients->toArray());
        }
        $drop_down = Client::has('contracts')->get();
        $data = array(['clients'=>$clients , 'total'=>$total,'drop_down'=>$drop_down]) ;

        return json_encode($data) ;

    }
    public function scheduledinterviews()
    {
//        dd('here');
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $Clients = Client::whereIn('id',$where)->get() ;
//        $Candidates = Job::with(['candidates'])->where('recruitment_pipeline',1)->get();
//        $Candidates = DB::table('candidate_job')->rightJoin('candidates','candidate_id','=','candidates.id')->get();
        $Candidates = Candidate::all();
        $employees = User::where([['is_super_admin',0],['id','!=',$user_id]])->get();
//dd($Candidates);
        return view('admin.interview.scheduled-interviews')->with(['clients' => $Clients,'candidates' => $Candidates,'employees' => $employees]) ;
    }
    public function searchinterviews(Request $request)
    {

        $interview=schedule_interview::with('jobs','candidates','clients','status','receiver_emails')->find($request->id);
        $s_date = date('M jS, Y', strtotime(str_replace('/', '-', $interview['start_date'])));
        $s_time = date('h:i A', strtotime($interview['start_time']));
        $e_time = date('h:i A', strtotime($interview['end_time']));
        $data =array(
            'data' =>  $interview,
            's_date' =>$s_date,
            's_time'=>$s_time,
            'e_time'=>$e_time,
        );
//        return json_encode($interview);
        return json_encode($data);
    }
    public function updateScheduledInterviewStatus(Request $request)
    {
        $interview=schedule_interview::with('jobs','candidates','clients','status','receiver_emails')->find($request->id);
//        $c_id=$interview['candidates']['id'];
//        $candidate=Candidate::find($c_id);
//        $candidate->status_id=$request->status_id;
//        $candidate->save();
        $interview['status_id']=$request->status_id;
        $interview->save();

    }


    public function scheduledinterviewslists(Request $request)
    {


        $offset = $request['start'];
        $limit = $request['length'];
        $reject = 0;
        $ck = 0;

        $where = array();
        $orwhere1 = '';
        $orwhere2 = array();
        $status = Status::where([['name', '=', 'DECLINED']])->orwhere([['name', '=', 'REJECTED']])->pluck('id');

        if ($request['type'] == 'Rejected') {
            $reject = 1;
            foreach ($status as $sta) {
                if ($ck == 0) {
                    $orwhere1 .= ' status_id = ' . $sta;
                    $ck = 1;
                } else {
                    $orwhere1 .= ' OR status_id = ' . $sta;
                }

            }
        } else {
            foreach ($status as $sta) {
                array_push($where, ['status_id', '!=', $sta]);
            }
        }


        if (!empty($request['job_name'])) {
            $j_name = $request['job_name'];

            array_push($where, ['job_id', $j_name]);
//            $s1=1;
        }
        if (!empty($request['company_name'])) {
            $c_name = $request['company_name'];
            array_push($where, ['client_id', $c_name]);
//            $s2=1;
        }
        if (!empty($request['candidate_name'])) {
            $cand_name = $request['candidate_name'];
            array_push($where, ['candidate_id', $cand_name]);
//            $s2=1;
        }

//        if (Auth::user()->is_super_admin == 0)
//        {
            array_push($where,['user_id',Auth::id()]);

//        }
//        dd($where);

//        dd($status->toArray());

        if($reject == 0)
        {
            $totaldata =schedule_interview::with(['jobs','candidates','clients','status','receiver_emails'])->where($where)->count();
            $schedule_interviews=schedule_interview::with(['jobs','candidates','clients', 'status','receiver_emails'])->where($where)->offset($offset)->limit($limit)->get();
        }
        else{
            $totaldata =schedule_interview::with(['jobs','candidates','clients','status','receiver_emails'])->where($where)->whereRaw($orwhere1)->count();
            $schedule_interviews=schedule_interview::with(['jobs','candidates','clients', 'status','receiver_emails'])->where($where)->whereRaw($orwhere1)->offset($offset)->limit($limit)->get();
        }




//        $schedule_interviews=schedule_interview::with('jobs','candidates','clients','status','receiver_emails')->offset($offset)->limit($limit)->get();
//dd($schedule_interviews);
        $columns=array();
        foreach ($schedule_interviews as $schedule_interview) {
            $s_date = date('M jS, Y', strtotime(str_replace('/', '-', $schedule_interview['start_date'])));
            $s_time = date('h:i A', strtotime($schedule_interview['start_time']));
            $e_time = date('h:i A', strtotime($schedule_interview['end_time']));


                $columns[] = array(
                    'status_id'=>$schedule_interview['status']['id'],
                    'id'  =>   $schedule_interview['id'],
                    'company' => '<b style="color: #4d9a10">'.$schedule_interview['clients']['company_name'].'</b>',
                    'job' =>  $schedule_interview['jobs']['jobtitle'],
                    'candidate' =>"<a href=".url('admin/candidate/detail/')."/".$schedule_interview['candidates']['id'].">".$schedule_interview['candidates']['name']."</a>"  ,
                    'date' =>  $s_date,
                    'from' =>  $s_time,
                    'to' =>  $e_time,
                    'status' => '<img width="50px" height="50px" src="'.asset('status_icons').'/'.$schedule_interview['status']['status_icon'].'">',
                );

//
//                $columns[] = array(
//                    'status_id'=>$schedule_interview['status']['id'],
//                    'id'  =>   $schedule_interview['id'],
//                    'company' => '<b style="color: #4d9a10">'.$schedule_interview['clients']['company_name'].'</b>',
//                    'job' =>  $schedule_interview['jobs']['jobtitle'],
//                    'candidate' =>  "<a href=".url('admin/candidate/detail/')."/".$schedule_interview['candidates']['id'].">".$schedule_interview['candidates']['name']."</a>" ,
//                    'from' =>  $s_date.' - '.$s_time,
//                    'to' =>  $s_date.' - '.$e_time,
//                    'status' => '<span class="status interview_status_list" data-id="'.$schedule_interview['status']['id'].'" style="color: #fff; background-color: '.$schedule_interview['status']['color'].';"><small>'.$schedule_interview['status']['name'].'</small></span>',
//                );


        }
        $total=$totaldata;
        $json_data = array(
            "draw"            => intval( $_REQUEST['draw'] ),
            "recordsTotal"    => intval( $total ),
            "recordsFiltered" => intval( $total ),
            "data"            => $columns,
        );
        echo json_encode($json_data);
    }
    public function scheduleinterview()
    {
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $Clients = Client::whereIn('id',$where)->get() ;
//        dd($Clients->toArray());
        $status = Status::orderby('name','asc')->get();
        if(!session()->has('client_id'))
        {
            session()->forget('client_id');
        }
        if(!session()->has('job_id')) {
            session()->forget('job_id');
        }
        if(!session()->has('candidate_id')) {
            session()->forget('candidate_id');
        }


        return view('admin.interview.schedule-interview')->with(['clients' => $Clients,'status' => $status]) ;
    }
    public function companyscheduleinterview(Request $request)
    {
//            dd($request->all());
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $Clients = Client::whereIn('id',$where)->get() ;
//        dd($Clients->toArray());
        $status = Status::orderby('name','asc')->get();
//        dd($id);
        if($request->client_id)
        {
            session(['client_id' => $request->client_id]);

        }
        else
        {
            session()->forget('client_id');
        }
        if($request->job_id)
        {
            session(['job_id' => $request->job_id]);
        }
        else
        {
            session()->forget('job_id');
        }
        if($request->candidate_id)
        {
            session(['candidate_id' => $request->candidate_id]);
        }
        else
        {
            session()->forget('candidate_id');
        }
//dd(session()->all());


//        return view('admin.interview.schedule-interview')->with(['clients' => $Clients,'status' => $status,'client_id'=>$request->client_id]) ;
        return redirect()->route('schedule-interview') ;
    }
    public function createClientView()
    {
        $this->authorize('create', Client::class);
        return view('admin.client.create');
    }

    public function submitClient(ClientRequest $request)
    {

        dd($request->all());
        $this->authorize('create', Client::class);
//            $request->validated();
            //  if ($request->validated()->fails()) {
        //            //      $request->validated();
        //            // return redirect(route('new.category'))->withErrors($request->validated())->withInput();
        //            // }
        //
        //            //get newly created client for use in notes.
            $client = Client::create([
            'company_name' => $request->company_name,
            'name' => $request->name,
            'job_title' => $request->job_title,
            'phone' => $request->phone,
            'email' => $request->email,
            'city' => $request->city,
            'state' => $request->state,
            'web_url' => $request->web_url,
            'package' => $request->package,
            'job_opening' => $request->job_opening,
            'industry' => $request->industry,
            'service' => $request->service,
            'recruitment_pipeline' => $request->recruitment_pipeline,
            'job_discription' => $request->job_discription,

        ]);

         if ($request->recruitment_pipeline)
         {
             $client->pipeline()->attach(Auth::id());
         }

        $note = new Note();

        $note->description = $request->note;
        $note->client_id = $client->id ;
        $note->employer_id = Auth::user()->id;

        $note->save();

        $user_id=Auth::id();

        if($user_id!=1)
        {
            $user = User::find(1);

            $details=
                [
                    'info' => 'New Client is Added',
                    'data' => 'A new client '.$client->name.' is added by '.Auth::user()->name. ' <br><a href="'.route('client.database').'">View Details<a>',

                ];
            $user->notify(New Info($details));
        }
        return redirect()->back()->with('message' , 'Client Added Successfully') ;

    }


    // public function addNote(Request $request)
    // {
    //     $note = new Note();

    //     $note->description = $request->note;
    //     $note->client_id = $request->client_id ;
    //     $note->employer_id = Auth::user()->id;

    //     $note->save();
    //     return redirect()->route('client.database')->with('clientNoteMessage', 'Note Added Successfully');
    // }

    public function clientDatabaseView($clientID = null)
    {

        $client = Client::all();

        if($clientID == null)
        {
              $clientDetail = Client::where('created_at', Client::max('created_at'))->orderBy('created_at','desc')->get();

              return view('admin.client.client_database')->with(['clients' => $client , 'clientDetail' => $clientDetail]);

        }else
        {
            $clientDetail = Client::where('id' , $clientID)->get();
              if($clientDetail->isEmpty())
            {
                return redirect()->route('client.database');
            }
            return view('admin.client.client_database')->with(['clients' => $client , 'clientDetail' => $clientDetail]);
        }

    }


    //for ajax perpose..

      public function allClientajax()
      {
//          $client = Client::where('recruitment_pipeline',1)->get() ;
          $user_id = Auth::id();
          $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');

          $client = Client::whereIn('id',$where)->get() ;
          return json_encode($client);

      }
      public function clientDatabaseViewAjax(Request $request)
    {

         if($request->current==1)
        {
            $start=0;
        }else{
            $start=($request->current-1)*$request->length;
        }
        $status=False;
        $where='';
    if(!empty($request->name) && $status==False)
    {
        $where.=" company_name LIKE '".$request->name."%' ";
        $status=True;
    }
    if(!empty($request->state))
    {
        if($status==True){
           // $where.= ','.['state', 'like' , "%".$request->state ."%"];
           // $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
//            $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
            $where .=" AND  state LIKE '".htmlspecialchars($request->state)."%' ";
        }else{
             // $where=['state', 'like' , "%".$request->state ."%"];
//            $where .="   CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
            $where .=" state LIKE '".htmlspecialchars($request->state)."%' ";
        }
        $status=True;
    }
    if(!empty($request->city))
    {
        if($status==True){
           // $where.= ','.['state', 'like' , "%".$request->state ."%"];
           // $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
//            $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
            $where .=" AND  city LIKE '".htmlspecialchars($request->city)."%' ";
        }else{
             // $where=['state', 'like' , "%".$request->state ."%"];
//            $where .="   CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
            $where .=" city LIKE '".htmlspecialchars($request->city)."%' ";

        }
        $status=True;
    }

        if(!empty($request->industry))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                // $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where.=" AND industry LIKE '".$request->industry."%' ";
               // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
                $where.=" industry LIKE '".$request->industry."%' ";
            }
            $status = true ;
        }
        if(!empty($request->jobTitle))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                // $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
               // active $where.=" AND job_title LIKE '%".$request->jobTitle."%' ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";

                $jobTitleArr = explode(',',$request->jobTitle) ;

                foreach($jobTitleArr as $word){
                    $sql[] = ' job_title LIKE "'.$word.'%" ';
                }
                $where .="  AND ( ".implode(" OR ", $sql). ") ";
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
                //active $where.=" job_title LIKE '%".$request->jobTitle."%' ";

                $jobTitleArr = explode(',',$request->jobTitle) ;

                foreach($jobTitleArr as $word){
                    $sql[] = ' job_title LIKE "'.$word.'%" ';
                }
                $where .="  ".implode(" OR ", $sql)." ";
            }
            $status=true;
        }
        if(!empty($request->poc))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                // $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where.=" AND name LIKE '".$request->poc."%' ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".htmlspecialchars($request->state)."%' ";
                $where.=" name LIKE '".$request->poc."%' ";
            }
            $status=true;
        }

if($where!=''){

    $clients = Client::with('jobs')->withCount('jobs')
                ->whereRaw($where)
                ->offset($start)
                ->limit($request->length)
                ->orderBy('jobs_count' , 'desc')
                ->get();

                 $clientsCount = DB::table('clients')
                ->whereRaw($where)
                ->get();

                  // $client = Client::all();
                  $clientCountWhere = count($clientsCount);

            }else{
                $clients = Client::with('jobs')->withCount('jobs')
                ->offset($start)
                ->limit($request->length)
                ->orderBy('jobs_count' , 'desc')
                ->get();

                  $client = Client::all();
                  $clientCountWhere = count($client) ;


            }
          $arrayName = array('0'=> $clientCountWhere , '1' => $clients );
                    return json_encode($arrayName);
        // if($clientID != null)
        // {
        //       $clientDetail = Client::where('id' , $clientID)->get();

        //       if($clientDetail->isEmpty())

        //         {
        //             return redirect()->route('client.database');
        //         }

        //         return json_encode($clientDetail) ;
        //         // return view('admin.client.client_database')->with(['clients' => $client , 'clientDetail' => $clientDetail]);

        // }

    }

     public function clientDatabaseDetailAjax(Request $request)
    {

                $user_id = Auth::id();
              $clientDetail = Client::with(['pipeline'=>function($query) use($user_id){
                $query->where('user_id',$user_id);
              }])->where('id' , $request->dataId)->get();
//              dd($clientDetail->toArray());
              $notes = Note::where('client_id' , $request->dataId)->orderBy('created_at' , 'desc')->get();
              $client_contract = contract::where('client_id',$request->dataId)->orderBy('updated_at' , 'desc')->select('status','contract_file')->first();
              // dd($notes) ;
               $arrayName = array('0' => $clientDetail,'1'=>$notes,'2'=>$client_contract );
        session(['contract_session' => $request->dataId]);

        return json_encode($arrayName);

    }
     public function clientsearchAjax(Request $request)
    {

              $clientDetail = Client::where('id' , $request->client_id)->get();

              return json_encode($clientDetail);

    }


    public function deleteNote(Request $request)
    {

        Note::destroy($request->noteId);
        return json_encode('sucessfully deleteted');
    }

    public function editNote(Request $request)
    {
        $note = Note::find($request->noteId);

        $note->description = $request->noteText ;
        $data = $note->save() ;
//       $data = DB::table('notes')
//            ->where('id', $request->noteId)
//            ->update(['description' => $request->noteText]);

        return "success" ;
    }

    public function editClient($clientId)
    {
        $client = Client::where('id' , $clientId)->get();

        return view('admin.client.edit')->with('client' , $client);
    }

    public function editClientSubmit(EditClientRequest $request)
    {
        dd($request->all());
        $client = Client::find($request->client_id);

        $client->company_name = $request->company_name ;
        $client->name = $request->name ;
        $client->job_title = $request->job_title ;
        $client->phone = $request->phone ;
        $client->email = $request->email ;
        $client->city = $request->city ;
        $client->state = $request->state ;
        $client->web_url = $request->web_url ;
        $client->package = $request->package ;
        $client->job_discription = $request->job_discription ;
        $client->industry = $request->industry ;

        $client->save();
        if ($request->recruitment_pipeline)
        {
            $client->pipeline()->attach(Auth::id());
        }
        else
        {
            $client->pipeline()->detach(Auth::id());

        }

        return redirect()->route('client.database')->with('clientEditMessage', 'Edit Successfully');
    }

    public function deleteClient(Request $request)
    {
        $this->authorize('delete', Client::class);

        Client::destroy($request->clientId);
        Job::where('client_id' , $request->clientId)->delete() ;
        Note::where('client_id' , $request->clientId)->delete();
        return "success";
    }


    //candidate
    public function createCandidate()
    {
        $this->authorize('create', Candidate::class);
        $statuses = Status::orderby('name','asc')->get();
        return view('admin.candidate.create')->with(['statuses' => $statuses , 'education'=>Education::all()]);
    }

    public function candidateSubmit(CandidateRequest $request)
    {
//        dd($request->employer);

        $this->authorize('create', Candidate::class);


        if($request->name != null)
        {
            $status = new Status() ;

            $status->name = $request->name ;
            $status->color = $request->color ;

            $status->save() ;

            $candidate = Candidate::Create([
                'name' => $request->full_name,
                'job_title' => $request->job_title,
                'phone' => $request->phone,
                'email' => $request->email,
                'city' => $request->city,
                'state' => $request->state,
                'salary' => $request->salary,
                'skills' => $request->skills,
                'interest' => $request->interest,
                'experience' => $request->experience,
                'education_id' => $request->education,
                'color' => $request->color,
                'Industry' => $request->Industry,
                'status_id' => $status->id,
                'employer' => $request->employer,
            ]);

        }else{
            $candidate = Candidate::Create([
                'name' => $request->full_name,
                'job_title' => $request->job_title,
                'phone' => $request->phone,
                'email' => $request->email,
                'city' => $request->city,
                'state' => $request->state,
                'salary' => $request->salary,
                'skills' => $request->skills,
                'interest' => $request->interest,
                'experience' => $request->experience,
                'education_id' => $request->education,
                'color' => $request->color,
                'Industry' => $request->Industry,
                'status_id' => $request->status_id,
                'employer' => $request->employer,
            ]);

        }

           $date = date('Y_m_d-H-i-s');

        $note = new Note() ;

        $note->description = $request->candidate_note ;
        $note->candidate_id = $candidate->id ;
        $note->save();
        if($request->hasfile('resume'))
        {

            foreach($request->file('resume') as $file)
            {

                $name=$file->getClientOriginalName();
                $fileName = pathinfo($name)['filename'] ;
                $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
                $ext = pathinfo(storage_path().$name, PATHINFO_EXTENSION) ;
                //$newD =  \Carbon\Carbon::now()->timestamp ;
                $randResume = $newName."-".$date.".".$ext;

                $file->move(public_path().'/files/', $randResume);

                $resume = new Resume() ;

                $resume->resume = $randResume ;
                $resume->candidate_id = $candidate->id ;

                $resume->save() ;
            }


        }
        $user_id=Auth::id();

        if($user_id!=1)
        {
            $user = User::find(1);

            $details=
                [
                    'info' => 'New Candidate is Added',
                    'data' => 'A new candidate ' .$candidate->name.' is added by '.Auth::user()->name.' <br><a href="'.\url('/candidate/detail/'.$candidate->id).'">View Details<a>',

                ];
            $user->notify(New Info($details));
        }
        return redirect()->back()->with('candidateSuccess' , 'Candidate Created successfully');
    }




    public function candidateDatabaseView()
    {
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $pipelineClients =  Client::whereIn('id',$where)->get() ;
        $pipelineJobs = Job::where('pipeline_id' , $user_id)->get() ;
        $candidates = Candidate::with('status')->get();
//        print_r(session('candidate_search_session'));
        return view('admin.candidate.candidate_database')->with(['statuses' => Status::orderby('name','asc')->get() , 'pipelineClients' => $pipelineClients, 'candidates' => Candidate::all() , 'jobCandidates' => $candidates]) ;
    }

    /**
     * @param Request $request
     * @return false|string
     */
    public function candidateDatabase(Request $request)
    {
        session()->forget('candidate_search_session');
//        dd(session('candidate_search_session'));
        if($request->current==1)
        {
            $start=0;
        }else{
            $start=($request->current-1)*$request->length;
        }
        $status=False;
        $where='';
        if(!empty($request->name))
        {
            session(['candidate_search_session.name' => $request->name]);

            //ORDER BY SUBSTR(Name, INSTR(Name, ' '))

            $where.=" name LIKE '".$request->name."%' ";
            $status=True;
        }
        if(!empty($request->state))
        {
            session(['candidate_search_session.state' => $request->state]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
//                $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where .=" AND state LIKE '".$request->state."%' ";
            }else{
                $where .=" state LIKE '".$request->state."%' ";

//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".($request->state)."%' ";
            }
            $status=True;
        }
        if(!empty($request->city))
        {
            session(['candidate_search_session.city' => $request->city]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
//                $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where .="AND city LIKE '".$request->city."%' ";

            }else{
                $where .="city LIKE '".$request->city."%' ";

//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".($request->state)."%' ";
            }
            $status=True;
        }

        if(!empty($request->Industry))
        {
            session(['candidate_search_session.industry' => $request->Industry]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $where .=" AND ( Industry LIKE '".$request->Industry."%') ";
            }else{
                $where .="  Industry LIKE '".$request->Industry."%' ";
            }
            $status=True;
        }



        if(!empty($request->Skills))
        {
            session(['candidate_search_session.skills' => $request->Skills]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $ex=explode(',',$request->Skills);
                foreach($ex as $word){
                    $sql[] = ' (skills LIKE "'.$word.'%" OR skills LIKE "%,'.$word.'%")';
                }
                $where .="  AND ( ".implode(" AND ", $sql). ") ";
            }else{
//                 WHERE '.implode(" OR ", $sql)
                $ex=explode(',',$request->Skills);
//                dd($ex);
                foreach($ex as $word){
                    $sql[] = ' (skills LIKE "'.$word.'%" OR skills LIKE "%,'.$word.'%")';
                }
//                    dd($sql);
                $where .="  ".implode(" AND ", $sql)." ";
//                dd($where);
            }
            $status=True;
            $sql = array();
        }


        if(!empty($request->jobTitle))
        {
            //$users = DB:table('users')->where('id', $user)->whereIn('status', ['active', 'inactive', 'pending')->get();
            session(['candidate_search_session.title' => $request->jobTitle]);

            if($status==True){
//                print_r('true');
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
               // $where .=" AND ( job_title LIKE '%".$request->jobTitle."%') ";
//                $where .=" AND job_title IN (".$impArr."); ";
                $jobTitleArr = explode(',',$request->jobTitle) ;

                foreach($jobTitleArr as $word){
                    $sql[] = ' job_title LIKE "'.$word.'%" ';
                }
//                print_r($sql);
                $where .="  AND ( ".implode(" OR ", $sql). ") ";
//                print_r($where);
            }else{
//                print_r('false');

                //$where .="  job_title LIKE '%".$request->jobTitle."%' ";
                //$where .="  job_title IN (".$impArr.")";
                $jobTitleArr = explode(',',$request->jobTitle) ;


                foreach($jobTitleArr as $word){
                    $sql[] = ' job_title LIKE "'.$word.'%" ';
                }
                $where .= "  ".implode(" OR ", $sql)." ";
            }
            $status=True;
        }
        if(!empty($request->status)||$request->status!=0)
        {
            session(['candidate_search_session.status' => $request->status]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $where .=" AND ( status_id =".$request->status.") ";
            }else{
                $where .="  status_id =".$request->status;
            }
            $status=True;
        }




        if($where!=''){

//            dd($where);
            $candiadtes = Candidate::with('status')
                ->whereRaw($where)
                ->offset($start)
                ->limit($request->length)
                ->orderBy('name' , 'asc')
                ->get();

            $canidateCountWhere = DB::table('candidates')
                ->whereRaw($where)
                ->get();

            // $client = Client::all();
            $canidateCountWhere = count($canidateCountWhere);

        }else{
            $candiadtes = Candidate::with('status')
                ->offset($start)
                ->limit($request->length)
                ->orderBy('created_at' , 'desc')
                ->get();

            //return json_encode($candiadtes) ;
            $candidate = Candidate::all();
            $canidateCountWhere = count($candidate) ;


        }
        $arrayName = array('0'=> $canidateCountWhere , '1' => $candiadtes );

        return json_encode($arrayName);

    }


    public function candidateDatabaseDetailAjax(Request $request)
    {
        $candidateDetail = candidate::with('status','resumes','education')->where('id' , $request->dataId)->get();
        $notes = Note::where('candidate_id' , $request->dataId)->orderBy('created_at' , 'desc')->get();
        $arrayName = array('0' => $candidateDetail,'1'=>$notes );
        return json_encode($arrayName);
    }

    public function candidateOtm()
    {
        $stsWithoutOtm = Status::where('name', '!=', 'otm')->where('name','!=','OTM')->orderby('name','asc')->get();
        return view('admin.candidate.otm')->with(['statuses'=> Status::orderby('name','asc')->get() , 'pipelineClients'=>Client::all(),'stsWithoutOtm'=>$stsWithoutOtm]);
    }


    public function otmRemovePipeline(Request $request)
    {
        // delete the relationships with Tags (Pivot table) first.
        $candidate = Candidate::find($request->candId) ;

        $candidate->find($request->candId)->jobs()->detach();

        // delete the record from the account table.
//        $candidate->delete($request->candId);

    }
    public function removecandidatepipeline(Request $request)
    {
        $candidate = Candidate::find($request['candidate_id']);

        $job = Job::find($request['job_id']);
        $job->candidates()->detach($candidate);
//        return true;
    }

    public function candidateDnc()
    {
        return view('admin.candidate.dnc')->with('statuses' , Status::orderby('name','asc')->get());
    }


    public function candidateOtmAjax(Request $request)
    {
        //$candidates = Candidate::with('status')->where('status_id' , 1)->offset(0)->limit($request->len)->get();
        $candidates = Candidate::with('status')
            ->whereHas('status', function ($query) {
                $query->where('name', 'OTM');
            })
            ->get();
        return json_encode($candidates);
    }

    public function candidateDncAjax(Request $request)
    {
        $candidates = Candidate::with('status')
            ->whereHas('status', function ($query) {
                $query->where('name', 'DNC');
            })
            ->get();

        return json_encode($candidates);
    }


    public function candidateOtmDetail($candidateId)
    {
        $candidate = Candidate::with(['status' , 'notes','resumes','education'])->where(['id' => $candidateId])->get() ;

        return view('admin.pages.candidate-detail')->with('candidate' ,$candidate->toArray()) ;
    }
    public function candidateDetail($candidateId)
    {
        $candidate = Candidate::with(['status' , 'notes','resumes','education'])->where(['id' => $candidateId])->get() ;

        return view('admin.pages.candidate-detail')->with('candidate' ,$candidate->toArray()) ;
    }

    public function updateStatusAjax(Request $request)
    {

        //if it did not update and just press update then it means
        //it is a old value in this case row should not delete from jquery.
        $statusId = Candidate::where('id' ,  $request->candId)->pluck('status_id') ;

        if($request->status == $statusId[0])
        {
            $sameValBool = true ;
            return  json_encode($sameValBool) ;
        }else{
            Candidate::where('id' , $request->candId)
                ->update(['status_id' => $request->status]) ;
        }


    }
    public function updatepipelineStatusAjax(Request $request)
    {

        //if it did not update and just press update then it means
        //it is a old value in this case row should not delete from jquery.
        $statusId = Candidate::where('id' ,  $request->candId)->pluck('status_id') ;

        if($request->status == $statusId[0])
        {
            $sameValBool = true ;
            return  json_encode($sameValBool) ;
        }else{
            Candidate::where('id' , $request->candId)
                ->update(['status_id' => $request->status]) ;
        }
        $user_id=Auth::id();

        if($user_id!=1)
        {
            $user = User::find(1);
            $candidate = Candidate::find($request->candId);
            $details=
                [
                    'info' => 'Status is Updated in Pipeline',
                    'data' => $candidate->name.'\'s status just got updated by '.Auth::user()->name.' <br> <a href="'.route('admin').'">View Details<a>',

                ];
            $user->notify(New Info($details));
        }

    }

    public function deleteCandidate(Request $request)
    {
        $this->authorize('delete', Candidate::class);

        Candidate::destroy($request->candId);
        Job::where('client_id' , $request->candId)->delete() ;
        Note::where('client_id' , $request->candId)->delete();
        return "success";
    }

    public function editCandidate($candId)
    {


        if (url()->current()!=url()->previous())
        {
            session(['previous_url'=> url()->previous()]);
        }

       $candidate = Candidate::with('resumes')->where('id' , $candId)->get();
       return view('admin.candidate.edit')->with(['candidate'=>$candidate , 'statuses'=>Status::orderby('name','asc')->get() , 'education'=>Education::all()]) ;
    }

    public function editedCandidate(EditCandidateRequest $request)
    {
//dd(url()->previous());
        $candidate = Candidate::find($request->id);

        $candidate->name = $request->name ;
        $candidate->job_title = $request->job_title ;
        $candidate->phone = $request->phone ;
        $candidate->email = $request->email ;
        $candidate->city = $request->city ;
        $candidate->state = $request->state ;
        $candidate->salary = $request->salary ;
        $candidate->skills = $request->skills ;
        $candidate->interest = $request->interest ;
        $candidate->experience = $request->experience ;
        $candidate->education_id = $request->education ;
        $candidate->Industry = $request->Industry ;
        $candidate->status_id = $request->status_id ;
        $candidate->employer = $request->employer ;

        $candidate->save() ;

        $date = date('Y_m_d-H-i-s');


//        dd($request->all());

        if($request->hasfile('resume'))
        {
            foreach($request->file('resume') as $file)
            {

                $name=$file->getClientOriginalName();
                $fileName = pathinfo($name)['filename'] ;
                $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
                $ext = pathinfo(storage_path().$name, PATHINFO_EXTENSION) ;
                //$newD =  \Carbon\Carbon::now()->timestamp ;
                $randResume = $newName."-".$date.".".$ext;

                $file->move(public_path().'/files/', $randResume);

                $resume = new Resume() ;

                $resume->resume = $randResume ;
                $resume->candidate_id = $candidate->id ;

                $resume->save() ;

            }

        }
//        dd($request->previous_url);
        return redirect()->back()->with(['candidateSuccessEdit' => 'Candidate edited successfully']);

    }


    public function resumeDel(Request $request)
    {
        $this->authorize('delete', Resume::class);

        Resume::where('id' , $request->resId)->delete() ;

        return "success" ;
    }

    public function pipelineClientJobs(Request $request)
    {
       $pipelineJobs = Job::where(['client_id' => $request->data['client_id'],'pipeline_id' => Auth::id()])->get() ;

       return json_encode($pipelineJobs) ;
    }


    public function picJobsAgaintsClient(Request $request)
    {
       $jobs = Job::where(['client_id' => $request['data']['client_id'],'pipeline_id' => Auth::id()])->get() ;

       return json_encode($jobs) ;
    }



    public function pipelinecandidate(Request $request)
    {
        $candidate = Candidate::find($request['candidate_id']);

        $job = Job::find($request['job_id']);
        $check =  $job->candidates()->where('candidate_id',$request['candidate_id'])->exists();
//          dd($check);
        if(!$check)
        {
            $job->candidates()->attach($candidate, ['user_id' => Auth::id()]);
            return "Success" ;
        }
        else
        {
            return "Already in pipeline with the specified company and job" ;
        }


        //changes start from here..
//        if ($request->has('status_id')) {
//
//            $candidate = Candidate::find($request['candidate_id']) ;
//
//            $candidate->status_id = $request['status_id'] ;
//            $candidate->save() ;
//
//            return "remove from otm" ;
//        }

        //changes end here..
    }

    //end candidate

    //status

    public function statusAjax()
    {
       $status = Status::orderby('name','asc')->get();

       return json_encode($status) ;
    }

    public function createStatus()
    {
        return view('admin.candidate.status.create') ;
    }

    //status custom
    public function createdStatus(Request $request)
    {
        $request->validate([
            'name'=> 'required',
            'status_icon'=> 'required|mimes:jpg,png,gif',
        ]);





        $statusExist = Status::where('name' , $request->name)
            ->Where('id' ,'!=' , $request->id)->exists() ;


        if($statusExist)
        {
            session()->flash('status_exist','Status already exists');
            return redirect()->back() ;
        }else{

            $status = new Status ;
            $status->name = $request->name ;
            $date = date('Y_m_d-H-i-s');


                $name = $request->file('status_icon')->getClientOriginalName();
                $fileName = pathinfo($name)['filename'];
                $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
                $ext = pathinfo(storage_path() . $name, PATHINFO_EXTENSION);
                $icon = $newName . "-" . $date . "." . $ext;

                $request->file('status_icon')->move(public_path() . '/status_icons/', $icon);
                $status->status_icon = $icon;


            $status->save() ;
            session()->flash('status_success','Status Created successfully');
            return redirect()->back() ;
        }


    }

    public function updateStatusMainAjax(Request $request)
    {
//        dd($request->all());
        $request->validate([
            'name'=> 'required',
            'status_icon'=> 'mimes:jpg,png,gif',
        ]);

            $statusExistBool = false ;

            $status = Status::find($request->id) ;

        $statusExist = Status::where('name' , $request->name)
            ->Where('id' ,'!=' , $request->id)->exists() ;


            if($statusExist)
            {
                    $statusExistBool = true ;
                    session()->flash('status_exist','Status already exists');
                    return redirect()->back() ;
            }else{

                $status->name = $request->name ;
                $date = date('Y_m_d-H-i-s');
                if($request->hasfile('status_icon')) {

                    $name = $request->file('status_icon')->getClientOriginalName();
                    $fileName = pathinfo($name)['filename'];
                    $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
                    $ext = pathinfo(storage_path() . $name, PATHINFO_EXTENSION);
                    $icon = $newName . "-" . $date . "." . $ext;

                    $request->file('status_icon')->move(public_path() . '/status_icons/', $icon);
                    $status->status_icon = $icon;
                }


                $status->save() ;
                session()->flash('status_success','Status updated successfully');
                return redirect()->back() ;
            }



    }

    public function deleteStatusAjax(Request $request)
    {
       $candidate = Candidate::where('status_id' , $request->statusId)->get() ;

       //it means it has a candidate so it cant be delete.
       if($candidate->count() > 0)
       {
           $boolean = true ;
           return  json_encode($boolean);
       }else{
          Status::where('id' , $request->statusId)->delete() ;
       }
    }


    public function statusReminder(Request $request)
    {
        Status::where('id' , $request->status_id)->update(['reminder'=> $request->reminderVal]) ;
        return "success" ;
    }

    //end status


    //education

        public function educationList()
        {
            return json_encode(Education::all())  ;
        }

        public function createEducation()
        {
            return view('admin.candidate.education.create') ;
        }

        public function createdEducation(Request $request)
        {
            $exist = Education::where('name' , $request->educationName)->exists() ;
//            ->orWhere('color' , $request->statusColor)->exists() ;

            if($exist)
            {
                return json_encode($exist) ;
            }else{
                $education = new Education() ;

                $education->name = $request->educationName ;
                $education->save() ;

                return "success" ;
            }

        }

        public function deleteEducation(Request $request)
        {
            Education::where('id' , $request->educationId)->delete() ;
        }

        public function editEducation(Request $request)
        {

            $education = Education::find($request->id) ;

            $statusExist = Education::where('name' , $request->eLetestName)
                ->Where('id' ,'!=' , $request->id)->exists() ;


            if($statusExist)
            {
                $statusExistBool = true ;
                return json_encode($statusExistBool) ;
            }else{
                $education->name = $request->eLetestName ;

                $education->save() ;
                return "status updated" ;
            }

        }
    //end education

     public function createNewJob()
    {
        $this->authorize('create', Job::class);
        $clients = Client::all() ;

        $this->data['clients'] = $clients;
        return view('admin.job.create')->with($this->data);
    }

       public function store_newJob(JobRequest $request)
    {
        $this->authorize('create', Job::class);
       // print_r($request->all());exit;
         $request->validated();
       $job= Job::create([

            'client_id' => $request->company_name,
            'jobtitle' => $request->jobtitle,
             'city' => $request->city,
            'state' => $request->state,
            'web_url' => $request->web_url,
             'package' => $request->package,
            'phone' => $request->phone,
            'email' => $request->email,
           'industry' => $request->industry,
            'service' => $request->service,
            'recruitment_pipeline' => $request->recruitment_pipeline,
            'job_discription' => $request->job_discription,
        ]);

       if ($request->recruitment_pipeline)
       {
           $job->pipeline_id =  Auth::id();
            $job->save();
           $check =  Auth::user()->client()->where('client_id',$job->client_id)->exists();
           if(!$check)
           {
               Auth::user()->client()->attach($job->client_id);
           }
       }
        $user_id=Auth::id();
        $company = Client::find($request->company_name);
        if($user_id!=1)
        {
            $user = User::find(1);

            $details=
                [
                    'info' => 'New Job is Posted',
                    'data' => Auth::user()->name .' created a job of ' .$job->jobtitle.' for company '.$company->company_name.' <br> <a href="'.route('job.database').'">View Details<a>',

                ];
            $user->notify(New Info($details));
        }

        return redirect()->back()->with('message' , 'New Job Added Successfully') ;
    }
   public function jobDatabaseView($jobID = null)
    {
        $job = Job::all();
        if($jobID == null)
        {
            $clients = Client::where('recruitment_pipeline',1)->get() ;
            $jobDetail = Job::where('created_at', Job::max('created_at'))->orderBy('created_at','desc')->get();
                return view('admin.job.database_job')->with(['jobs' => $job , 'jobDetail' => $jobDetail,'clientss'=>$clients]);
        }else
        {
            $clients = Client::where('recruitment_pipeline',1)->get() ;
            $jobDetail = Job::with('client')->where(['id' => $jobID])->get();
            if($jobDetail->isEmpty())
            {
                return redirect()->route('job.database');
            }
            return view('admin.job.database_job')->with(['jobs' => $job , 'jobDetail' => $jobDetail,'clientss'=>$clients]);
        }

     }

     public function jobDatabaseViewAjax(Request $request)
     {
         # code...

    if($request->current==1)
        {
            $start=0;
        }else{
            $start=($request->current-1)*$request->length;
        }
        $status=False;
        $where='';
    if(!empty($request->name) && $status==False)
    {
        $where.=" jobtitle LIKE '".$request->name."%' ";
        $status=True;
    }
    if(!empty($request->state))
    {
        if($status==True){
           // $where.= ','.['state', 'like' , "%".$request->state ."%"];
           //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
            $where .=" AND state LIKE '".$request->state."%' ";

        }else{
             // $where=['state', 'like' , "%".$request->state ."%"];
            //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
            $where .=" state LIKE '".$request->state."%' ";
//            $where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
        }

        $status=true;
    }
    if(!empty($request->city))
    {
        if($status==True){
           // $where.= ','.['state', 'like' , "%".$request->state ."%"];
           //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
            $where .=" AND  city LIKE '".$request->city."%' ";

        }else{
             // $where=['state', 'like' , "%".$request->state ."%"];
            //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
            $where .=" AND  state LIKE '".$request->state."%' ";

//            $where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
        }

        $status=true;
    }

         if(!empty($request->company))
         {
             if($status==True){
                 // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                 //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                 //active $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";

                 $where .=" AND  client_id = ".$request->company." ";
             }else{
                 // $where=['state', 'like' , "%".$request->state ."%"];
                 //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
//                active $where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where .= "  client_id = ".$request->company." ";
             }

             $status=true;
         }


         if(!empty($request->salary))
         {
             if($status==True){
                 // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                 //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where.=" AND  package LIKE '".$request->salary."%' ";

             }else{
                 // $where=['state', 'like' , "%".$request->state ."%"];
                 //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                 //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where.=" package LIKE '".$request->salary."%' ";
             }
             $status=true;
         }
         if(!empty($request->service))
         {
             if($status==True){
                 // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                 //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                 // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where.=" AND  service LIKE '".$request->service."%' ";
             }else{
                 // $where=['state', 'like' , "%".$request->state ."%"];
                 //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                 //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where.=" service LIKE '".$request->service."%' ";
             }
             $status=true;
         }
         if(!empty($request->company))
         {
             if($status==True){
                 // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                 //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                 // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 //active $where.=" AND  industry LIKE '%".$request->jobIndutry."%' ";
                 $where.=" AND  client_id = ".$request->company ;
             }else{
                 // $where=['state', 'like' , "%".$request->state ."%"];
                 //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                 //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 //acrive $where.=" industry LIKE '%".$request->jobIndutry."%' ";
                 $where.=" client_id = ".$request->company ;
             }
             $status=true;
         }

         if(!empty($request->industy))
         {
             if($status==True){
                 // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                 //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                 // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where.=" AND  industry LIKE '".$request->industy."%' ";
             }else{
                 // $where=['state', 'like' , "%".$request->state ."%"];
                 //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                 //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                 $where.=" industry LIKE '".$request->industy."%' ";
             }
             $status=true;
         }


if($where!=''){


                    $job = Job::with('client')
                    ->whereRaw($where)
                    ->offset($start)
                    ->limit($request->length)
                    ->orderBy('created_at' , 'desc')
                    ->get();


                 $jobCount1 = Job::with('client')
                    ->whereRaw($where)
                    ->get();

                  // $client = Client::all();
                  $jobCount = count($jobCount1);
              }else{
                  $jobforcount = Job::with('client')->get();
                      $jobCount = count($jobforcount);

                      $job = Job::with('client')
                    ->offset($start)
                    ->limit($request->length)
                    ->orderBy('created_at' , 'desc')
                    ->get();

              }
            // dd($job->toArray());
              $arrayName = array('0' =>$jobCount ,'1'=>$job );
        return json_encode($arrayName);
     }

       public function JobDetailsAjax(Request $request)
     {
         # code...
        $id=$request->dataId;
        $jobDetail = Job::with('client','pipeline')->where('id' , $id)->get();
//        $user = User::with('job')->where('id' , Auth::id())->get();

//        dd($user->toArray());
//        dd($jobDetail->toArray());
        return json_encode($jobDetail);
     }

       public function editJob($jobID)
    {

        $job = Job::where('id' , $jobID)->get();
        $clients = Client::all();

        return view('admin.job.edit_job')->with(['job' => $job,'clients'=>$clients]);
    }
     public function editJobSubmit(Request $request)
    {

        $job = Job::find($request->id_job);

        $job->jobtitle = $request->jobtitle ;
        $job->client_id = $request->company_name ;
        $job->industry = $request->industry ;
        $job->service = $request->service ;
        $job->recruitment_pipeline = $request->recruitment_pipeline ;
        $job->city = $request->city ;
        $job->state = $request->state ;
        $job->web_url = $request->web_url ;
        $job->package = $request->package ;
        $job->job_discription = $request->job_discription ;


        if ($request->recruitment_pipeline)
        {
            $job->pipeline_id =  Auth::id();
            $check =  Auth::user()->client()->where('client_id',$job->client_id)->exists();
            if(!$check)
            {
                Auth::user()->client()->attach($job->client_id);
            }
        }
        $job->save();


        return redirect()->route('job.database')->with('clientEditMessage', 'Edit Successfully');
    }
      public function deleteJob(Request $request)
    {
        Job::destroy($request->jobId);

       return json_encode('successfully deleted') ;
    }



    //code by amir

     public function addNote(Request $request)
    {

        $note = new Note();
        $note->client_id = $request['data']['client_id'];
        $note->description = $request['data']['note_des'] ;
        $note->employer_id = Auth::user()->id;
        $note->save();
        // $note->id;
        return response()->json(array('success' => true, 'last_insert_id' => $note->id), 200);
        // return "success";

        //return redirect()->route('client.database')->with('clientNoteMessage', 'Note Added Successfully');
    }

    public function addNoteCandidate(Request $request)
    {

        $note = new Note();
        $note->candidate_id = $request['data']['candId'];
        $note->description = $request['data']['note_des'] ;
        $note->employer_id = Auth::user()->id;
        $note->save();
        // $note->id;
        return response()->json(array('success' => true, 'last_insert_id' => $note->id), 200);
        // return "success";

        //return redirect()->route('client.database')->with('clientNoteMessage', 'Note Added Successfully');
    }


      public function addJobPipline(Request $request)
    {
       $job = Job::where(['id' => $request->job_id])->first() ;
//       dd($job->pipeline_id);
       $id = $job->pipeline_id;
       if ($id==null)
       {
           $job->pipeline_id = Auth::id();
           $job->save();

//           $check =  $job_title->candidates()->where('candidate_id',$id)->exists();
           $check =  Auth::user()->client()->where('client_id',$job->client_id)->exists();
           if(!$check)
           {
             Auth::user()->client()->attach($job->client_id);
           }
           return "success" ;
       }
       else
       {
           return "fail";
       }

    }

    //this is repeat bcz of serch page where job pipeline feature also exist.
    public function addJobPiplineForSearch(Request $request)
    {
        $job = Job::where(['id' => $request->id])->first() ;
        $id = $job->pipeline_id;
        if ($id==null)
        {
            $job->pipeline_id = Auth::id();
            $job->save();
            $check =  Auth::user()->client()->where('client_id',$job->client_id)->exists();
            if(!$check)
            {
                Auth::user()->client()->attach($job->client_id);
            }
        }

        return redirect()->route('search')->with('piplinemessage', 'Added Successfully');
    }

    public function removePipline($jobtId)
    {
        DB::table('jobs')
            ->where('id', $jobtId)
            ->update(['pipeline_id' => null]);
        $job = \App\Job::find($jobtId);
        $job->candidates()->detach();
        return redirect()->back()->with('removepipline' , 'Removed from pipline successfully');
    }


    public function removePiplineJobAjax(Request $request)
    {

        \App\Job::where('id', $request->jobId)
            ->update(['pipeline_id' => null]);
        $job = \App\Job::find($request->jobId);
        $job->candidates()->detach();
        return 'success';
    }

       public function addPiplineClient(Request $request)
    {

//         DB::table('clients')
//            ->where('id', $request->clientId)
//            ->update(['recruitment_pipeline' => 1]);

         Auth::user()->client()->attach($request->clientId);
        return "success" ;
    }
       public function removePiplineClient(Request $request)
    {
//         DB::table('clients')
//            ->where('id', $request->clientId)
//            ->update(['recruitment_pipeline' => 0]);

        Auth::user()->client()->detach($request->clientId);
        return "success" ;
    }

        public function removePiplineClientAjax(Request $request)
    {
//         DB::table('clients')
//            ->where('id', $request->noteId)
//            ->update(['recruitment_pipeline' => 0]);
        Auth::user()->client()->detach($request->noteId);

        // return redirect()->back()->with('removedpipline' , 'Removed pipline successfully');
            return 1;
    }


    public function change_password()
    {
    return view('admin.pages.change-password');
    }
    public function update_password(PasswordRequest $request)
    {

             $request->validated();
        $user =User::find(Auth::id());
        $pass = $request->current_password;
        if (Hash::check($pass, $user->password))
        {
            $user->password = Hash::make($request->password);
            $user->save();
            session()->flash('Password', 'Password updated successfully Please Login Again!');
            Auth::logout();
            return redirect()->route('login');
        }
        else
        {
            session()->flash('Password', 'Current Password Does not Match!');
            return redirect()->back();
        }
//         return redirect()->route('change.password')->with('passchange', 'Password updated successfully');
    }

    public function update_pic(Request $request)
    {
//        dd($request->all());

        $request->validate([
            'profile_pic'=> 'required|mimes:jpg,jpeg,png,gif',
        ]);
        $date = date('Y_m_d-H-i-s');

        $user = User::find(Auth::id());
        $name = $request->file('profile_pic')->getClientOriginalName();
        $fileName = pathinfo($name)['filename'];
        $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
        $ext = pathinfo(storage_path() . $name, PATHINFO_EXTENSION);
        $icon = $newName . "-" . $date . "." . $ext;

        $request->file('profile_pic')->move(public_path() . '/assets/images/profile_pictures/', $icon);
        $user->profile_pic = $icon;
        $user->save();
        session()->flash('profile_pic','Profile Picture is Successfully Updated');
        return redirect()->back();
    }

    public function alljoblForOneCompany(Request $request)
    {
//    $request->all();
        $jobs = Job::where(['client_id' => $request->dataId ])->get();
        return $jobs;
    }
    public function change_login(Request $request)
    {
        $request->validate([
            'id'=> 'required',
        ]);
        session(['original_user'=>Auth::id()]);
        Auth::loginUsingId($request->id);

//        dd($request->all());
    }
    public function switch_back()
    {
        if(session()->has('original_user'))
        {
            $id = session('original_user');
            session()->forget('original_user');
            Auth::loginUsingId($id);
        }

        return redirect()->back();
//        dd($request->all());
    }

public function joblistForOneCompany(Request $request)
{
//    $request->all();
    $jobs = Job::where(['client_id' => $request->dataId , 'pipeline_id' => Auth::id()])->get();
    return $jobs;
}


     public function index($clientID= null)
    {


        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');

        //$job = Job::with('client')->where('recruitment_pipeline',1)->get();

//        Auth::user()->client()->attach(26);



        $client = Client::with('notes','jobs')->whereIn('id',$where)->orderBy('id' , 'desc')->get();
       // return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $job]);
       // dd($client);
//         $client = DB::select("Select * from Clients join notes ON clients.id=notes.client_id join jobs ON clients.id=jobs.client_id ORDER BY clients.id DESC ");

         $pipelineClients = Client::whereIn('id',$where)->get() ;
         $pipelineJobs = Job::where('pipeline_id' , Auth::id())->get() ;
//         $candidates = Candidate::all();
         $candidates = Candidate::with('status')->get();
//         dd($pipelineJobs);
         $user_id = Auth::id();
         $employees = User::where([['is_super_admin',0],['id','!=',$user_id]])->get();
         if($clientID == null)
        {
              $clientDetail = Job::with('client')->orderBy('id' , 'desc')->where('created_at', Job::max('created_at'))->orderBy('created_at','desc')->get();
             // dd($clientDetail);
            return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $clientDetail, 'pipelineClients' => $pipelineClients, 'pipelineJobs' => $pipelineJobs, 'jobCandidates' => $candidates,'employees' => $employees]);
        }else
        {

            $clientDetail = Job::with('client')->orderBy('id' , 'desc')->where('id' , $clientID)->get();
              if($clientDetail->isEmpty())
            {
                return redirect()->route('dashboard.database');
            }
            return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $clientDetail, 'pipelineClients' => $pipelineClients, 'pipelineJobs' => $pipelineJobs, 'jobCandidates' => $candidates,'employees' => $employees]);
        }
    }


    public function pipelineJob(Request $request)
    {
        $pipelineJobs = Job::where(['client_id'=>$request->client_id,'pipeline_id' => Auth::id()])->get() ;
//        dd($pipelineJobs);
        return json_encode($pipelineJobs) ;
    }
    public function dashSearch(Request $request)
    {
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $page_num = $request->page_num;
        if ($page_num==1)
            $offset = 0;
        else
        {
            $offset = ($page_num-1) * 10;
        }
        if($request->comName != null)
        {
//            dd($request->all());
            $client = Client::with('notes')->whereIn('id',$where)->where([['company_name' , 'like' , '%'.$request->comName.'%']])->offset($offset)->limit(10)->get() ;
            $total= Client::whereIn('id',$where)->where([['company_name' , 'like' , '%'.$request->comName.'%']])->count();

        }else{
//            $client = Client::with('notes')->where(['recruitment_pipeline' => 1])->offset($offset)->limit(10)->get() ;
//            $total= Client::where(['recruitment_pipeline' => 1])->count();
            $client = Client::with('notes')->whereIn('id',$where)->offset($offset)->limit(10)->get() ;
            $total= Client::whereIn('id',$where)->count();

        }
        $data = array(['clients'=>$client , 'total'=>$total]) ;

        return json_encode($data) ;
    }


    public function jobDetail($jobId)
    {

        $jobDetail = Job::where('id' , $jobId)->get();
        $companyName = Client::where('id' , $jobDetail[0]['client_id'])->pluck('company_name') ;

        return view('admin.pages.job-detail')->with(['jobDetail' => $jobDetail , 'companyName' => $companyName[0]]) ;
    }

 public function dashboard($clientID= null)
    {
       // dd($clientID);
        //$job = Job::with('client')->where('recruitment_pipeline',1)->get();
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $client = Client::with('notes','jobs')->whereIn('id',$where)->get();
       // return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $job]);
       // dd($client);
        if($clientID == null)
        {
              $clientDetail = Job::with('client')->where('created_at', Job::max('created_at'))->orderBy('created_at','desc')->get();
             // dd($clientDetail);
            return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $clientDetail]);
        }else
        {
            $clientDetail = Job::with('client')->where('id' , $clientID)->get();
            return view('admin.pages.dashboard')->with(['clients' => $client , 'jobs' => $clientDetail]);
        }
    }


    //search
    public function mainSearch()
    {
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $clients = Client::whereIn('id',$where)->get() ;
        return view('admin.search.search')->with(['statuses' => Status::orderby('name','asc')->get() , 'clients'=>$clients]) ;
    }

    public function searchSubmit(Request $request)
    {
        if($request->current==1)
        {
            $start=0;
        }else{
            $start=($request->current-1)*$request->length;
        }
        $status=False;
        $where='';
        if(!empty($request->name))
        {
            //ORDER BY SUBSTR(Name, INSTR(Name, ' '))

            $where.=" name LIKE '".$request->name."%' ";
            $status=True;
        }
        if(!empty($request->state))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $where .=" AND ( state LIKE '".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
            }else{

                $where .="   CONCAT_WS(' ', city, state) LIKE '%".($request->state)."%' ";
            }
            $status=True;
        }


        if($where!=''){

            $candiadtes = DB::table('candidates')
                ->whereRaw($where)
                ->offset($start)
                ->limit($request->length)
                ->orderBy('name' , 'asc')
                ->get();

            $canidateCountWhere = DB::table('candidates')
                ->whereRaw($where)
                ->get();

            // $client = Client::all();
            $clientCountWhere = count($canidateCountWhere);

        }else{
            $candiadtes = DB::table('candidates')
                ->offset($start)
                ->limit($request->length)
                ->orderBy('created_at' , 'desc')
                ->get();

            //return json_encode($candiadtes) ;
            $candidate = Candidate::all();
            $canidateCountWhere = count($candidate) ;


        }
        $arrayName = array('0'=> $canidateCountWhere , '1' => $candiadtes );
        return json_encode($arrayName);
    }
    //end search

    //end code by amir


    //interview stages
    public function createInterviewStage()
    {
        return view('admin.candidate.interview_stages.create') ;
    }

    public function createdInterviewStage(Request $request)
    {


        $exist = Status::where('name' , $request->statusName)->exists() ;
//            ->orWhere('color' , $request->statusColor)->exists() ;

        if($exist)
        {
            return json_encode($exist) ;
        }else{
            $interviewStages = new InterviewStage() ;

            $interviewStages->name = $request->statusName ;
            $interviewStages->color = $request->statusColor ;

            $interviewStages->save() ;

            return "success" ;
        }

    }

    public function interviewStage()
    {
        $interviewStages = InterviewStage::all() ;

        return json_encode($interviewStages) ;
    }

    public function updateInterviewStage(Request $request)
    {
        $statusExistBool = false ;

        $interviewStage = InterviewStage::find($request->id) ;

        $statusExist = InterviewStage::where('name' , $request->statusText)
            ->Where('id' ,'!=' , $request->id)->exists() ;


        if($statusExist)
        {
            $statusExistBool = true ;
            return json_encode($statusExistBool) ;
        }else{
            $interviewStage->name = $request->statusText ;
            $interviewStage->color = $request->statusColor ;

            $interviewStage->save() ;
            return "status updated" ;
        }

    }

    public function interviewStageDelete(Request $request)
    {
//        $candidate = Candidate::where('status_id' , $request->statusId)->get() ;
//
//        //it means it has a candidate so it cant be delete.
//        if($candidate->count() > 0)
//        {
//            $boolean = true ;
//            return  json_encode($boolean);
//        }else{
            InterviewStage::where('id' , $request->statusId)->delete() ;
        //}
    }
    //end interview stages



    //interview status
    public function createInterviewStatus()
    {
        return view('admin.candidate.interview_status.create') ;
    }

    public function createdInterviewStatus(Request $request)
    {


        $exist = InterviewStatus::where('name' , $request->statusName)->exists() ;
//            ->orWhere('color' , $request->statusColor)->exists() ;

        if($exist)
        {
            return json_encode($exist) ;
        }else{
            $interviewStatus = new InterviewStatus() ;

            $interviewStatus->name = $request->statusName ;
            $interviewStatus->color = $request->statusColor ;

            $interviewStatus->save() ;

            return "success" ;
        }

    }

    public function interviewStatus()
    {
        $interviewStatus = InterviewStatus::all() ;
        return json_encode($interviewStatus) ;
    }

    public function updateInterviewStatus(Request $request)
    {
        $statusExistBool = false ;

        $interviewStatus = InterviewStatus::find($request->id) ;

        $statusExist = InterviewStage::where('name' , $request->statusText)
            ->Where('id' ,'!=' , $request->id)->exists() ;


        if($statusExist)
        {
            $statusExistBool = true ;
            return json_encode($statusExistBool) ;
        }else{
            $interviewStatus->name = $request->statusText ;
            $interviewStatus->color = $request->statusColor ;

            $interviewStatus->save() ;
            return "status updated" ;
        }

    }

    public function interviewStatusDelete(Request $request)
    {
//        $candidate = Candidate::where('status_id' , $request->statusId)->get() ;
//
//        //it means it has a candidate so it cant be delete.
//        if($candidate->count() > 0)
//        {
//            $boolean = true ;
//            return  json_encode($boolean);
//        }else{
        InterviewStage::where('id' , $request->statusId)->delete() ;
        //}
    }
    //end interview status


    //client dashboard
    public function clientDashboard()
    {
            $firstId = Job::orderBy('id' , 'ASC')->limit(1)->get('id');

            $objCandidates = Job::with('candidates')->where('id',$firstId[0]['id'])->get() ;

            $candidates = $objCandidates->toArray() ;

        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $pipelineClients = Client::whereIn('id',$where)->get() ;
        $pipelineJobs = Job::where('pipeline_id' , $user_id)->get() ;
//         $candidates = Candidate::all();
        $candidates_present = Candidate::with('status')->get();


            $datas = DB::table('candidate_job')

            ->join('jobs', 'jobs.id', '=', 'candidate_job.job_id')
            ->join('candidates', 'candidate_job.candidate_id', '=', 'candidates.id')
            ->join('statuses', 'candidates.status_id', '=', 'statuses.id')
            ->select('*','jobs.city AS job_city' , 'jobs.state AS job_state' , 'jobs.industry AS job_industry','candidates.id AS candidate_id','candidates.name AS candidate_name','jobs.id AS job_id')
            ->groupBy('jobs.id')
            ->get();

        $employees = User::where([['is_super_admin',0],['id','!=',$user_id]])->get();

            if(count($candidates[0]['candidates'])!=0)
            {
                $candidatesWithNotesStatus = Candidate::with('status','notes')->where('id' , $candidates[0]['candidates'][0]['id'])->get() ;
                return view('admin.pages.client_dashboard')->with(['clients'=>$pipelineClients, 'jobs'=>Job::all() ,'candidates'=>$candidates, 'firstCandidate'=>$candidatesWithNotesStatus->toArray(),'datas'=>$datas , 'statuses'=>Status::orderby('name','asc')->get(),'pipelineClients' => $pipelineClients, 'pipelineJobs' => $pipelineJobs, 'jobCandidates' => $candidates_present,'employees' => $employees]) ;

            }

        return view('admin.pages.client_dashboard')->with(['clients'=>$pipelineClients, 'jobs'=>Job::all() ,'candidates'=>$candidates,'datas'=>$datas , 'statuses'=>Status::orderby('name','asc')->get(),'pipelineClients' => $pipelineClients, 'pipelineJobs' => $pipelineJobs, 'jobCandidates' => $candidates_present,'employees' => $employees]) ;


    }
    public function clientimportpage()
    {
        if (session()->has('uploaded'))
        {
            session()->flash('file_upload','File has been imported successfully.');
            session()->forget('uploaded');
        }
        else if(session()->has('client_skipped'))

        {
            session()->flash('file_error1','File has been imported successfully. Any records having empty required columns are skipped.');
            session()->forget('client_skipped');
        }
//        if(session()->has('duplicate'))
//        {
//            session()->flash('file_error','Duplicate entries have been skipped');
//            session()->forget('duplicate');
//        }


        return view('admin.client.import');
    }
    public function clientimportsubmit(Request $request)
    {

        try {
            Excel::import(new ClientImport, $request->excel);
        }
        catch (Throwable $e) {
            report($e);

        }
        if(!session()->has('client_skipped'))
        {
            session(['uploaded'=>'Successfully Imported']);
        }


    }

    public function candidateimportpage()
    {
        if (session()->has('uploadedcandidates'))
        {
            session()->flash('file_upload','File has been imported successfully.');
            session()->forget('uploadedcandidates');

        }
        else if(session()->has('candidate_skipped'))
        {
            session()->flash('file_error4','File has been imported successfully. Any records having empty required columns are skipped.');
            session()->forget('candidate_skipped');
        }
//        if(session()->has('duplicate1'))
//        {
//            session()->flash('file_error3','Duplicate entries have been skipped');
//            session()->forget('duplicate1');
//        }

        return view('admin.candidate.import');
    }
    public function candidateimportsubmit(Request $request)
    {
        try {
            Excel::import(new CandidateImport, $request->excel);
        }
        catch (Throwable $e) {
            report($e);

            return false;
        }
        if(!session()->has('candidate_skipped')) {
            session(['uploadedcandidates' => 'Successfully Imported']);
        }

    }
    public function jobimportpage()
    {
        if (session()->has('uploadedjobs'))
        {
            session()->flash('file_upload','File has been imported successfully.');
            session()->forget('uploadedjobs');

        }
        else if (session()->has('job_skipped'))
        {
            session()->flash('file_error5','File has been imported successfully. Any records having empty required columns are skipped.');
            session()->forget('job_skipped');
        }
        return view('admin.job.import');
    }
    public function jobimportsubmit(Request $request)
    {
        try {
            Excel::import(new JobImport, $request->excel);
        } catch (Throwable $e) {
            report($e);

            return false;
        }
        if(!session()->has('job_skipped')) {

            session(['uploadedjobs' => 'Successfully Imported']);
         }
    }

    public function clientDashboardSearch(Request $request)
    {
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
        $pipelineClients = Client::whereIn('id',$where)->get() ;
        $pipelineJobs = Job::where('pipeline_id' , $user_id)->get() ;
        if($request->moduleId == 1)
        {
            return json_encode($pipelineClients) ;
        }else{
            return json_encode($pipelineJobs) ;
        }
    }

    public function clientDashboardSearchOption(Request $request)
    {
//        dd($request->all());
        if($request->moduleId == 1)
        {
           $jobs = Job::with('candidates')->where(['client_id' => $request->opId,'pipeline_id'=>Auth::id()])->get() ;
        }else{
            $jobs = Job::with('candidates')->where([['jobtitle' ,'like' , $request->opId],['pipeline_id',Auth::id()]])->get() ;
        }

        return json_encode($jobs) ;
    }
public function dashboardjobcandidate(Request $request)
{
    $j_id = $request->jobId;
//        $cadidates = Candidate::with(['jobs' ,'status','notes'])->where('jobs.id', $j_id)->get();
    $cadidates = Job::with(['candidates.notes','candidates.status'])->where('jobs.id', $j_id)->get();
    return json_encode($cadidates) ;
}
    public function clientDashboardJobCandidate(Request $request)
    {
        $datas = DB::table('candidate_job')

            ->join('jobs', 'jobs.id', '=', 'candidate_job.job_id')
            ->join('candidates', 'candidates.id', '=', 'candidate_job.candidate_id')
//            ->join('notes', 'candidate_job.candidate_id', '=', 'notes.candidate_id')
            ->join('statuses', 'candidates.status_id', '=', 'statuses.id')
            ->where('jobs.id',$request->jobId)
            ->select('*','jobs.city AS job_city' , 'jobs.state AS job_state' , 'jobs.industry AS job_industry','jobs.id AS job_id','candidates.id AS candidate_id','candidates.name AS candidate_name')

            ->groupBy('candidates.id')->get();
//dd($datas);


       // $candidates = Job::with('candidates')->where('id',$request->jobId)->get();
        return json_encode($datas) ;
    }

    public function clientDashboardJobCandidateDetail(Request $request)
    {
        $candidate = Candidate::with('status' , 'notes')->where('id' , $request->candId)->get() ;
        return json_encode($candidate) ;
    }
//    end client dashboard



    //jobs against each client
    public function ClientJobsView($client_id)
    {
            return view('admin.pages.client_jobs')->with(['client_id'=>$client_id , 'clients'=>Client::all()]);
    }

    public function clientJobsDetails(Request $request)
    {
        if($request->current==1)
        {
            $start=0;
        }else{
            $start=($request->current-1)*$request->length;
        }

        $status=False;
        $where='';
        if(!empty($request->name) && $status==False)
        {
            $where.=" jobtitle LIKE '%".$request->name."%' ";
            $status=True;
        }
        if(!empty($request->state))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where .=" AND  CONCAT_WS(' ', city, state) LIKE '".$request->state."%' ";

            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
                //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                $where .="  CONCAT_WS(' ', city, state) LIKE '".$request->state."%' ";
            }

            $status=true;
        }

        if(!empty($request->company))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                //active $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";

                $where .=" AND  client_id = ".$request->company." ";
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
                //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
//                active $where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where .= "  client_id = ".$request->company." ";
            }

            $status=true;
        }

//dd($request->company);
        if(!empty($request->salary))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where.=" AND  package LIKE '".$request->salary."%' ";

            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
                //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where.=" package LIKE '".$request->salary."%' ";
            }
            $status=true;
        }
        if(!empty($request->service))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where.=" AND  service LIKE '".$request->service."%' ";
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
                //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where.=" service LIKE '".$request->service."%' ";
            }
            $status=true;
        }
        if(!empty($request->company))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                //active $where.=" AND  industry LIKE '%".$request->jobIndutry."%' ";
                $where.=" AND  client_id = ".$request->company ;
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
                //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                //acrive $where.=" industry LIKE '%".$request->jobIndutry."%' ";
                $where.=" client_id = ".$request->company ;
            }
            $status=true;
        }

        if(!empty($request->industy))
        {
            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                //$where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                // $where .=" AND  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where.=" AND  industry LIKE '".$request->industy."%' ";
            }else{
                // $where=['state', 'like' , "%".$request->state ."%"];
                //$where .=" state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ";
                //$where .="  CONCAT_WS(' ', city, state) LIKE '%".$request->state."%' ";
                $where.=" industry LIKE '".$request->industy."%' ";
            }
            $status=true;
        }


        if($where!=''){


            $job = Job::with('client')->where('client_id' , $request->client_id)
                ->whereRaw($where)
                ->offset($start)
                ->limit($request->length)
                ->orderBy('created_at' , 'desc')
                ->get();


            $jobCount1 = Job::with('client')
                ->whereRaw($where)
                ->get();

            // $client = Client::all();
            $jobCount = count($jobCount1);
        }else{
            $jobforcount = Job::with('client')->where('client_id' , $request->client_id)->get();
            $jobCount = count($jobforcount);

            $job = Job::with('client')->where('client_id' , $request->client_id)
                ->offset($start)
                ->limit($request->length)
                ->orderBy('created_at' , 'desc')
                ->get();

        }
//        dd($jobforcount->toArray());
//        dd($jobCount);
        // dd($job->toArray());
        $arrayName = array('0' =>$jobCount ,'1'=>$job );

        return json_encode($arrayName) ;
    }

    //end jobs against each client..

    /*New Site Functions*/
    public function createNewCandidate()
    {
        $this->authorize('create', NewCandidate::class);
        $statuses = Status::orderby('name','asc')->get();
        return view('admin.new_site.candidate.create')->with(['statuses' => $statuses , 'education'=>Education::all()]);
    }

    public function new_candidateSubmit(CandidateRequest $request)
    {
//        dd($request->status_id);
        $this->authorize('create', NewCandidate::class);

//
//        if($request->name != null)
//        {
//            $status = new Status() ;
//
//            $status->name = $request->name ;
//            $status->color = $request->color ;
//
//            $status->save() ;
//
//            $candidate = Candidate::Create([
//                'name' => $request->full_name,
//                'job_title' => $request->job_title,
//                'phone' => $request->phone,
//                'email' => $request->email,
//                'city' => $request->city,
//                'state' => $request->state,
//                'salary' => $request->salary,
//                'skills' => $request->skills,
//                'interest' => $request->interest,
//                'experience' => $request->experience,
//                'education_id' => $request->education,
//                'color' => $request->color,
//                'Industry' => $request->Industry,
//                'status_id' => $status->id,
//                'employer' => $request->employer,
//            ]);
//
//        }else{
        $candidate = NewCandidate::Create([
            'name' => $request->full_name,
            'job_title' => $request->job_title,
            'phone' => $request->phone,
            'email' => $request->email,
            'city' => $request->city,
            'state' => $request->state,
            'salary' => $request->salary,
            'skills' => $request->skills,
            'interest' => $request->interest,
            'experience' => $request->experience,
            'industry' => $request->Industry,
            'education_id' => $request->get('education'),
            'status_id' => $request->status_id,
//                'color' => $request->color,
//                'employer' => $request->employer,
        ]);

//        }

        $date = date('Y_m_d-H-i-s');

        $note = new Note() ;

        $note->description = $request->candidate_note ;
        $note->candidate_id = $candidate->id ;
        $note->save();
        if($request->hasfile('resume'))
        {

            foreach($request->file('resume') as $file)
            {

                $name=$file->getClientOriginalName();
                $fileName = pathinfo($name)['filename'] ;
                $newName = str_replace(array('/', ' '), array('-', ''), $fileName);
                $ext = pathinfo(storage_path().$name, PATHINFO_EXTENSION) ;
                //$newD =  \Carbon\Carbon::now()->timestamp ;
                $randResume = $newName."-".$date.".".$ext;

                $file->move(public_path().'/files/', $randResume);

                $resume = new candidate_resume() ;

                $resume->resume = $randResume ;
                $resume->candidate_id = $candidate->id ;

                $resume->save() ;
            }


        }
        $user_id=Auth::id();

        if($user_id!=1)
        {
            $user = User::find(1);

            $details=
                [
                    'info' => 'New Candidate is Added',
                    'data' => 'A new candidate ' .$candidate->name.' is added by '.Auth::user()->name.' <br><a href="'.\url('/candidate/detail/'.$candidate->id).'">View Details<a>',

                ];
            $user->notify(New Info($details));
        }
        return redirect()->back()->with('candidateSuccess' , 'Candidate Created successfully');
    }

    public function newCandidateImportpage()
    {
        if (session()->has('uploadedcandidates'))
        {
            session()->flash('file_upload','File has been imported successfully.');
            session()->forget('uploadedcandidates');

        }
        else if(session()->has('candidate_skipped'))
        {
            session()->flash('file_error4','File has been imported successfully. Any records having empty required columns are skipped.');
            session()->forget('candidate_skipped');
        }


        return view('admin..new_site.candidate.import');
    }
    public function newCandidateimportsubmit(Request $request)
    {
        try {
            Excel::import(new CandidateImport, $request->excel);
        }
        catch (Throwable $e) {
            report($e);

            return false;
        }
        if(!session()->has('candidate_skipped')) {
            session(['uploadedcandidates' => 'Successfully Imported']);
        }

    }
    public function newCandidateDatabaseView()
    {
        $user_id = Auth::id();
        $where = DB::table('client_user')->where('user_id',$user_id)->pluck('client_id');
//        dd($where);
        $pipelineClients =  NewClient::whereIn('id',$where)->get() ;
//        $pipelineJobs = Job::where('pipeline_id' , $user_id)->get() ;
        $candidates = NewCandidate::with('status')->get();
//        print_r(session('candidate_search_session'));
        return view('admin.new_site.candidate.candidate_database')->with(['statuses' => Status::orderby('name','asc')->get() , 'pipelineClients' => $pipelineClients, 'candidates' => NewCandidate::all() , 'jobCandidates' => $candidates]) ;
    }
    public function newCandidateDatabase(Request $request)
    {
        session()->forget('candidate_search_session');
//        dd(session('candidate_search_session'));
        if($request->current==1)
        {
            $start=0;
        }else{
            $start=($request->current-1)*$request->length;
        }
        $status=False;
        $where='';
        if(!empty($request->name))
        {
            session(['candidate_search_session.name' => $request->name]);

            //ORDER BY SUBSTR(Name, INSTR(Name, ' '))

            $where.=" name LIKE '".$request->name."%' ";
            $status=True;
        }
        if(!empty($request->state))
        {
            session(['candidate_search_session.state' => $request->state]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
//                $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where .=" AND state LIKE '".$request->state."%' ";
            }else{
                $where .=" state LIKE '".$request->state."%' ";

//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".($request->state)."%' ";
            }
            $status=True;
        }
        if(!empty($request->city))
        {
            session(['candidate_search_session.city' => $request->city]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
//                $where .=" AND ( state LIKE '%".$request->state."%' OR city LIKE '%".$request->state."%' ) ";
                $where .="AND city LIKE '".$request->city."%' ";

            }else{
                $where .="city LIKE '".$request->city."%' ";

//                $where .="   CONCAT_WS(' ', city, state) LIKE '%".($request->state)."%' ";
            }
            $status=True;
        }

        if(!empty($request->Industry))
        {
            session(['candidate_search_session.industry' => $request->Industry]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $where .=" AND ( Industry LIKE '".$request->Industry."%') ";
            }else{
                $where .="  Industry LIKE '".$request->Industry."%' ";
            }
            $status=True;
        }



        if(!empty($request->Skills))
        {
            session(['candidate_search_session.skills' => $request->Skills]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $ex=explode(',',$request->Skills);
                foreach($ex as $word){
                    $sql[] = ' (skills LIKE "'.$word.'%" OR skills LIKE "%,'.$word.'%")';
                }
                $where .="  AND ( ".implode(" AND ", $sql). ") ";
            }else{
//                 WHERE '.implode(" OR ", $sql)
                $ex=explode(',',$request->Skills);
//                dd($ex);
                foreach($ex as $word){
                    $sql[] = ' (skills LIKE "'.$word.'%" OR skills LIKE "%,'.$word.'%")';
                }
//                    dd($sql);
                $where .="  ".implode(" AND ", $sql)." ";
//                dd($where);
            }
            $status=True;
            $sql = array();
        }


        if(!empty($request->jobTitle))
        {
            //$users = DB:table('users')->where('id', $user)->whereIn('status', ['active', 'inactive', 'pending')->get();
            session(['candidate_search_session.title' => $request->jobTitle]);

            if($status==True){
//                print_r('true');
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                // $where .=" AND ( job_title LIKE '%".$request->jobTitle."%') ";
//                $where .=" AND job_title IN (".$impArr."); ";
                $jobTitleArr = explode(',',$request->jobTitle) ;

                foreach($jobTitleArr as $word){
                    $sql[] = ' job_title LIKE "'.$word.'%" ';
                }
//                print_r($sql);
                $where .="  AND ( ".implode(" OR ", $sql). ") ";
//                print_r($where);
            }else{
//                print_r('false');

                //$where .="  job_title LIKE '%".$request->jobTitle."%' ";
                //$where .="  job_title IN (".$impArr.")";
                $jobTitleArr = explode(',',$request->jobTitle) ;


                foreach($jobTitleArr as $word){
                    $sql[] = ' job_title LIKE "'.$word.'%" ';
                }
                $where .= "  ".implode(" OR ", $sql)." ";
            }
            $status=True;
        }
        if(!empty($request->status)||$request->status!=0)
        {
            session(['candidate_search_session.status' => $request->status]);

            if($status==True){
                // $where.= ','.['state', 'like' , "%".$request->state ."%"];
                $where .=" AND ( status_id =".$request->status.") ";
            }else{
                $where .="  status_id =".$request->status;
            }
            $status=True;
        }




        if($where!=''){

//            dd($where);
            $candiadtes = NewCandidate::with('status')
                ->whereRaw($where)
                ->offset($start)
                ->limit($request->length)
                ->orderBy('name' , 'asc')
                ->get();

            $canidateCountWhere = DB::table('new_candidates')
                ->whereRaw($where)
                ->get();

            // $client = Client::all();
            $canidateCountWhere = count($canidateCountWhere);

        }else{
            $candiadtes = NewCandidate::with('status')
                ->offset($start)
                ->limit($request->length)
                ->orderBy('created_at' , 'desc')
                ->get();

            //return json_encode($candiadtes) ;
            $candidate = NewCandidate::all();
            $canidateCountWhere = count($candidate) ;


        }
        $arrayName = array('0'=> $canidateCountWhere , '1' => $candiadtes );

        return json_encode($arrayName);

    }

    public function newCandidateDatabaseDetailAjax(Request $request)
    {
//        dd($request->dataId);
        $candidateDetail = NewCandidate::with('status','education')->where('id' , $request->dataId)->get();
        $resumes = candidate_resume::where('candidate_id',$request->dataId)->get();
        $notes = Note::where('candidate_id' , $request->dataId)->orderBy('created_at' , 'desc')->get();
        $arrayName = array('0' => $candidateDetail,'1'=>$notes,'2'=>$resumes);
        dd($arrayName);
        return json_encode($arrayName);
    }
}
