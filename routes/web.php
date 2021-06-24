<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These

| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\HomeController;

//user
Route::get('/candidate/profile-template', function () {
    return view('user.main');
})->name('user.main');
Route::get('/company/profile-template', function () {
    return view('user.company');
})->name('user.company');

//Route::get('/', function () {
//    return view('user.welcome');
//})->name('welcome');
Route::get('/', [HomeController::class, 'welcome'])->name('welcome');
Route::get('/change/{slug}', [HomeController::class, 'change'])->name('change');

Route::get('/company-dashboard', function () {
    return view('layouts.company');
});


Route::group(['middleware' => 'UserNotAuth'], function () {
    Route::get('/sign-in', 'User\RegisterController@AuthLogin')->name('user.login');

    Route::post('/sign-up', 'User\RegisterController@register')->name('user.register');


    Route::get('/sign-up', function () {
        return view('user.sign_up');
    })->name('user.signUp');

    Route::post('/login', 'User\RegisterController@login')->name('login.post');


    Route::get('/sign-up/company', function () {
        return view('user.sign_up_company');
    })->name('user.signUp.company');

    Route::get('/verify/account/{code}', 'User\RegisterController@registerVerifyWithLink')->name('candidate.register.verify');

//Route::get('/forgot/password', function () {
//    return view('user.forgot_password') ;
//})->name('user.forgot.password');
    Route::get('/forgot/password', 'User\RegisterController@forgotPassword')->name('forgot.password');

    Route::post('/forgot/password/', 'User\RegisterController@submitForgotPassword')->name('user.forgot.password');
    Route::get('/change/password/{code}', 'User\RegisterController@changePassword')->name('user.change.Password');
    Route::post('/update/password', 'User\RegisterController@updatePassword')->name('user.update.Password');

    Route::post('/company/sign-up/', 'User\RegisterController@companyRegister')->name('company.register.verify');
});

Route::get('/account/logout', 'User\RegisterController@logout')->name('user.logout');

Route::group(['prefix' => 'candidate', 'middleware' => ['CustomAuth', 'CandidateProfileAuth']], function () {
//    Route::get('/dashboard', 'User\HomeController@candidateDashboard')->name('new.candidate.dashboard');
    Route::post('/view/relevant-jobs', [HomeController::class,'viewRelevantJobs'])->name('view.relevant.jobs');
//    Route::get('/edit-profile', 'User\HomeController@editCandProfile')->name('temp.candidate.dashboard') ;
//    Route::get('/profile', 'User\HomeController@candidateProfile')->name('candidate.dashboard') ;
    Route::post('/dashboard/save-profile', [HomeController::class,'saveProfile'])->name('candidate.saveProfile');
    Route::post('/dashboard/save/profile-image', 'User\HomeController@saveProfileImage')->name('profile.img.upload');
//    Route::get('/saved-jobs','User\HomeController@savedJobs')->name('saved.jobs');
    /*Route of Candidate Saved Jobs Interface*/
    Route::post('/view/saved-jobs', [HomeController::class,'viewSavedJobs'])->name('view.saved.jobs');
    Route::post('/remove/saved-jobs', 'User\HomeController@removeSavedJobs')->name('Ajax.remove.saved.job');
    /*Applied Jobs Routes*/
//    Route::get('/applied-jobs','User\HomeController@viewAppliedJobs')->name('view.applied.jobs');
    Route::post('/find/applied-jobs', [HomeController::class,'searchAppliedJobs'])->name('ajax.applied.jobs');
    /*Change Password Routes*/
//    Route::get('/change-password','User\HomeController@viewChangePassword')->name('view.change.password');
//    Route::post('/password-changed','User\HomeController@changePassword')->name('candidate.change.password');
    /*Resume Upload*/
    Route::post('/resume-upload', 'User\HomeController@UploadResume')->name('upload.resume');
    Route::post('/delete-resume', 'User\HomeController@delCandidateResume')->name('delete.resume');

    Route::post('/career-develop', 'User\HomeController@careerDevelopMail')->name('career.develop.mail');
    Route::post('/profile/completed', [HomeController::class,'profileCompleted'])->name('prof_completed');
    Route::get('/delete/account', 'User\HomeController@deleteCandidateAccount')->name('delete.candidate.account');


    /*Candidate Profile in 5 Stages*/
    Route::get('/profile-details', [HomeController::class,'viewPersonalDetails'])->name('candidate.view.personal.details');
    Route::post('/save/personal-details', [HomeController::class,'savePersonalDetails'])->name('candidate.save.personal.details');

    Route::get('/profile/job-details', [HomeController::class,'viewPersonalJobDetails'])->name('candidate.view.personal.job.details');
    Route::post('/save/job-details', [HomeController::class,'savePersonalJobDetails'])->name('candidate.save.personal.job.details');

    Route::get('/profile/skills-details', [HomeController::class,'viewSkillsDetails'])->name('candidate.view.skills.details');
    Route::post('/save/skills-details', [HomeController::class,'saveSkillsDetails'])->name('candidate.save.skills.details');

    Route::get('/profile/salary-details', [HomeController::class,'viewSalaryDetails'])->name('candidate.view.salary.details');
    Route::post('/save/salary-details', [HomeController::class,'saveSalaryDetails'])->name('candidate.save.salary.details');

    Route::get('/profile/interest-details', [HomeController::class,'viewInterestDetails'])->name('candidate.view.interest.details');
    Route::post('/save/interest-details', [HomeController::class,'saveInterestDetails'])->name('candidate.save.interest.details');

    /* New pages */
    Route::get('/dashboard', [HomeController::class,'candidateDashboard'])->name('new.candidate.dashboard');
    Route::get('/profile', 'User\HomeController@candidateProfile')->name('candidate.dashboard');
    Route::get('/saved-jobs', 'User\HomeController@savedJobs')->name('saved.jobs');
    Route::get('/applied-jobs', [HomeController::class,'viewAppliedJobs'])->name('view.applied.jobs');
    Route::post('/password-changed', 'User\HomeController@changePassword')->name('candidate.change.password');
    Route::get('/change-password', 'User\HomeController@viewChangePassword')->name('view.change.password');
    Route::get('/edit-profile', [HomeController::class,'editCandProfile'])->name('temp.candidate.dashboard');
    Route::post('/delete-img', 'User\HomeController@delCandidateImg')->name('candidate.delete.image');

});
/*Routes for Non loggedin to Apply for Job */
Route::post('/job/apply/verify-email', 'User\HomeController@jobApplyVerifyEmail')->name('user.job.apply.verify.mail');
Route::post('/job/apply/verify-code', 'User\HomeController@chkVerifyEmailCode')->name('job.apply.verify.mail.code');
Route::post('/job/apply/non-verify', 'User\HomeController@nonLoggedinJobApply')->name('job.apply.non.verify');

Route::post('/apply/job', 'User\HomeController@jobApply')->name('job.apply');
Route::post('/save/fav-job', 'User\HomeController@saveFavJob')->name('Ajax.save.job');
Route::get('/career-development', 'User\HomeController@viewCareerDevelopment')->name('view.career.develop');
Route::post('/job-notify', 'User\HomeController@jobNotify')->name('job.notify');
/*Route to redirect from main page to Find Jobs Page*/
Route::post('/main/find-job', 'User\HomeController@mainSearchJob')->name('main.search.job');

Route::post('/find/searched-jobs', [HomeController::class, 'searchedJobs'])->name('ajax.searched.jobs');
Route::get('/job/details/{id}', [HomeController::class, 'jobDetails'])->name('view.job.details');
Route::post('ajax/job/details', 'User\HomeController@AjaxJobDetails')->name('ajax.job.details');
Route::get('/find/jobs', [HomeController::class, 'findUserJobs'])->name('user.find.jobs');
Route::post('/submit/job-notify', 'User\HomeController@submitJobNotify')->name('submit.job.notify');
Route::post('/industries', 'User\HomeController@getIndustries')->name('get.industries');


Route::group(['prefix' => 'company', 'middleware' => 'CustomAuthCompany'], function () {
//changes
//    Route::get('/dashboard', 'User\HomeController@companyDashboard')->name('company.dashboard') ;
//    Route::get('/recruitment-details/{id}', 'User\HomeController@companytempRecruitmentDetail')->name('company.recruitment.detail') ;
    Route::post('/recruitment/delete', 'User\HomeController@companyRecruitmentDetaildelete')->name('company.recruitment.detail.delete');
//    Route::get('/recruitment', 'User\HomeController@companytempRecruitment')->name('company.recruitment') ;
//    Route::get('/edit-dashboard', 'User\HomeController@companyeditDashboard')->name('user.company.edit.dashboard') ;
    Route::post('created/job', [HomeController::class, 'submitJob'])->name('user.client.job.created');
    Route::post('created/recruitment-service', [HomeController::class,'submitRecruitmentService'])->name('user.client.recruitment.created');
//    Route::get('/profile', 'User\HomeController@companyProfile')->name('user.client.dashboard') ;
    Route::post('/submit/profile', 'User\HomeController@submitCompnayProfile')->name('user.client.profile.submit');
    Route::post('/logo', 'User\HomeController@companyLogoUpload')->name('user.client.logo.ajax');
//    Route::get('post/job', 'User\HomeController@postJob')->name('user.client.job.post') ;
//    Route::get('create/recruitment-service', 'User\HomeController@createJob')->name('user.client.job.create') ;
//    Route::post('created/job', 'User\HomeController@submitJob')->name('user.client.job.created');
//    Route::get('active/jobs', 'User\HomeController@viewactiveJobs')->name('user.client.view.job.active') ;
    Route::post('view/active/jobs', 'User\HomeController@activeJobs')->name('user.client.job.active');
    Route::get('active/jobs/view-details/{id}', [HomeController::class, 'jobViewDetails'])->name('user.job.details');
    Route::post('delete/job', 'User\HomeController@userDelJob')->name('user.client.job.delete');
//    Route::put('/make-job-favourite',[HomeController::class,'makeFav'])->name('user.active_job.favourite');
//    Route::get('/expired/jobs',[HomeController::class,'viewExpiredJobs'])->name('user.client.view.job.expired');
    Route::post('view/expired/jobs', [HomeController::class, 'expiredJobs'])->name('user.client.job.expired');
    Route::get('/candidates', [HomeController::class, 'candidates'])->name('user.client.candidates');
//    Route::get('/change-password',[HomeController::class,'changePasswordClient'])->name('user.client.change-password');
    Route::put('/change-password', [HomeController::class, 'submitChangePasswordClient'])->name('user.client.change-password');
    Route::put('/job/resubmit', [HomeController::class, 'resubmit']);
    Route::get('/candidate-details/{cand}/{jobID}', [HomeController::class, 'candidateDetails'])->name('user.candidate-details');
    Route::get('/edit/job/details/{id}', [HomeController::class, 'editJobDetails'])->name('user.edit.job.details');
    Route::put('/edit/job/details/{id}', [HomeController::class, 'submitEditJobDetails'])->name('user.edit.job.details');
    Route::get('/download/resume/{id}', [HomeController::class, 'downloadResume'])->name('user.download.resume');
    Route::get('/delete/account', 'User\HomeController@deleteCompanyAccount')->name('delete.company.account');
    Route::post('/get/states', [HomeController::class, 'getStates'])->name('ajax.get.states');

    // new pages
    Route::get('/dashboard', 'User\HomeController@companyDashboard')->name('company.dashboard');
    Route::get('/profile', 'User\HomeController@companyProfile')->name('user.client.dashboard');
    Route::get('/edit-dashboard', [HomeController::class,'companyeditDashboard'])->name('user.company.edit.dashboard');
    Route::get('post/job', [HomeController::class, 'postJob'])->name('user.client.job.post');
    Route::get('create/recruitment-service', [HomeController::class,'createJob'])->name('user.client.job.create');
    Route::get('/recruitment', 'User\HomeController@companytempRecruitment')->name('company.recruitment');
    Route::get('/recruitment-details/{id}', 'User\HomeController@companytempRecruitmentDetail')->name('company.recruitment.detail');
    Route::get('active/jobs', [HomeController::class, 'viewactiveJobs'])->name('user.client.view.job.active');
    Route::get('/expired/jobs', [HomeController::class, 'viewExpiredJobs'])->name('user.client.view.job.expired');
    Route::get('/change-password', [HomeController::class, 'changePasswordClient'])->name('user.client.change-password');
    Route::post('/delete-logo', [HomeController::class, 'delCompanyLogo'])->name('user.client.delete-logo');

});

/*Route to FInd Talent Email*/
Route::post('/find-talent', [HomeController::class, 'findTalent'])->name('find.talent');
Route::post('/user-contact-mail', [HomeController::class, 'userContactMail'])->name('user.contact.mail');


Route::get('/about-us', function () {

    return view('user.about_us');
})->name('about.us');

Route::get('/contact/{id?}', function () {
    return view('user.contact');
})->name('contact');

Route::get('/recruiting-services', function () {
    return view('user.recruiting_services');
})->name('user.recruiting.services');

Route::get('/direct-placement', function () {
    return view('user.direct_placement');
})->name('user.direct.placement');

Route::get('/temporary-staffing', function () {
    return view('user.temporary_staffing');
})->name('user.temporary.staffing');

Route::get('/industry-insights', function () {
    return view('user.industry_insights');
})->name('user.industry.insights');

Route::get('/career-resources', function () {
    return view('user.career_resources');
})->name('user.career.resources');


//end user

Route::get('/notification/read', 'AdminController@markread')->name('markread')->middleware('auth');
//Mail
Route::post('/send-cv', 'mailController@send_cv')->name('send_cv')->middleware('auth');
Route::post('/send-email', 'mailController@send_email')->name('send_email')->middleware('auth');
Route::post('/interview/mail', 'mailController@scheduleinterview')->name('interviewmail')->middleware('auth');


Route::get('/admin/dashboard', 'HomeController@index')->name('admin')->middleware('auth');
Route::get('/admin', 'AdminController@index')->name('admin')->middleware('auth');
Route::get('/admin', 'AdminController@index')->name('admin')->middleware('auth');
Route::get('admin/routes', 'HomeController@admin')->middleware('admin')->middleware('auth');


Route::prefix('admin')->group(function () {

    Auth::routes();

    Route::post('/add/placement', 'AdminController@addplacement')->name('addplacement')->middleware('auth');
    Route::post('/edit/placement', 'AdminController@editplacement')->name('editplacement')->middleware('auth');
    Route::post('/delete/placement', 'AdminController@deleteplacement')->name('deleteplacement')->middleware('auth');
    Route::get('/placement/all', 'AdminController@allplacement')->name('allplacement')->middleware('auth');
    Route::post('/placement/list', 'AdminController@listplacement')->name('listplacement')->middleware('auth');
    Route::post('/search/placement', 'AdminController@searchplacement')->name('searchplacement')->middleware('auth');


//search
    Route::get('/search', 'AdminController@mainSearch')->name('search')->middleware('auth');
    Route::post('/search', 'AdminController@searchSubmit')->name('search.submit')->middleware('auth');
//end search

    Route::post('/change-login', 'AdminController@change_login')->name('changelogin')->middleware('auth');
    Route::get('/switch-back', 'AdminController@switch_back')->name('switchback')->middleware('auth');


    Route::get('/pipeline', 'AdminController@index')->name('admin')->middleware('auth');
    route::post('/contract/search', 'AdminController@contractdetails')->name('contractdetails')->middleware('auth');
    route::post('/contract/edit', 'AdminController@contractedit')->name('contractedit')->middleware('auth');
    route::post('/contract/delete', 'AdminController@contractdelete')->name('contractdelete')->middleware('auth');
    Route::get('/non_contract_clients', 'AdminController@noncontract')->name('noncontract')->middleware('auth');
    Route::post('/add/contract', 'AdminController@addcontract')->name('addcontract')->middleware('auth');
    Route::get('/all/contract', 'AdminController@allcontract')->name('allcontract')->middleware('auth');
    Route::post('/sign/contract', 'AdminController@signcontract')->name('signcontract')->middleware('auth');
    Route::post('/all/contract/ajax', 'AdminController@contractsajax')->name('contractsajax')->middleware('auth');

    Route::get('/schedule-interview', 'AdminController@scheduleinterview')->name('schedule-interview')->middleware('auth');
    Route::post('/company-schedule-interview/', 'AdminController@companyscheduleinterview')->name('company-schedule-interview')->middleware('auth');
//Route::get('/candidate-schedule-interview/{id?}', 'AdminController@companyscheduleinterview')->name('company-schedule-interview')->middleware('auth');
    Route::get('/scheduled/interview', 'AdminController@scheduledinterviews')->name('scheduled-interviews')->middleware('auth');
    Route::post('/search_interview', 'AdminController@searchinterviews')->name('searchinterviews')->middleware('auth');
    Route::post('/scheduled/interview/list', 'AdminController@scheduledinterviewslists')->name('scheduled-interviews-lists')->middleware('auth');


    route::post('/company/search', 'AdminController@dashSearch')->name('company.search.dashboard.ajax')->middleware('auth');
    route::post('view-as/company/search', 'AdminController@viewasdashSearch')->name('viewas.company.search.dashboard.ajax')->middleware('auth');

    route::post('/interview/status/update', 'AdminController@updateScheduledInterviewStatus')->name('updateScheduledInterviewStatus')->middleware('auth');

    Route::get('/all/client/ajax', 'AdminController@allClientajax')->name('client.all.ajax')->middleware('auth');

    Route::get('/create/client', 'AdminController@createClientView')->name('client.create')->middleware('auth');
    Route::post('/create/client', 'AdminController@submitClient')->name('client.created')->middleware('auth');

    Route::get('/Client/Database/{id?}', 'AdminController@clientDatabaseView')->name('client.database')->middleware('auth');;
    //job details against client
    Route::get('/client/jobs/details/{id?}', 'AdminController@ClientJobsView')->name('client.jobs.view')->middleware('auth');
    Route::post('/client/jobs/details', 'AdminController@clientjobsDetails')->name('client.jobs.details')->middleware('auth');
    //job details
    //for ajax
    Route::post('/Client/Database', 'AdminController@clientDatabaseViewAjax')->name('client.database.ajax')->middleware('auth');;
    Route::post('/Client/Databasedetails', 'AdminController@clientDatabaseDetailAjax')->name('client.database.ajax.detail')->middleware('auth');
    Route::post('/Client/search', 'AdminController@clientsearchAjax')->name('clientsearchAjax')->middleware('auth');
    //ajax

    Route::get('/client/edit/{clientId}', 'AdminController@editClient')->name('client.edit')->middleware('auth');
    Route::post('/client/edit', 'AdminController@editClientSubmit')->name('client.edit.submit')->middleware('auth');
    Route::post('/client/delete/', 'AdminController@deleteClient')->name('client.delete')->middleware('auth');

    Route::get('/client/import/', 'AdminController@clientimportpage')->name('clientimportpage')->middleware('auth');
    Route::post('/client/import/submit', 'AdminController@clientimportsubmit')->name('clientimportsubmit')->middleware('auth');


    // New Candidate Routes
    Route::get('/create/new-candidate/', 'AdminController@createNewCandidate')->name('new.candidate.create')->middleware('auth');
    Route::post('/create/new-candidate/', 'AdminController@new_candidateSubmit')->name('new.candidate.submit')->middleware('auth');
    Route::get('/new-candidate/import/', 'AdminController@newCandidateImportpage')->name('new.candidate.importpage')->middleware('auth');
    Route::post('/new-candidate/import/submit', 'AdminController@newCandidateimportsubmit')->name('new.candidateimportsubmit')->middleware('auth');
    /*Candidate Database Routes*/
    Route::get('/new-candidate/database/', 'AdminController@newCandidateDatabaseView')->name('new.candidate.database')->middleware('auth');
    Route::post('/new-candidate/database/', 'AdminController@newCandidateDatabase')->name('new.candidate.database.ajax')->middleware('auth');
    Route::post('/new-candidate/database/detail', 'AdminController@newCandidateDatabaseDetailAjax')->name('new.candidate.database.detail.ajax')->middleware('auth');

    //candidate routes


    Route::get('/candidate/import/', 'AdminController@candidateimportpage')->name('candidateimportpage')->middleware('auth');
    Route::post('/candidate/import/submit', 'AdminController@candidateimportsubmit')->name('candidateimportsubmit')->middleware('auth');


    Route::post('/candidate/status/bulk', 'AdminController@candidatebulkstatus')->name('candidate.bulk.status')->middleware('auth');

    Route::get('/create/candidate/', 'AdminController@createCandidate')->name('candidate.create')->middleware('auth');
    Route::post('/create/candidate/', 'AdminController@candidateSubmit')->name('candidate.submit')->middleware('auth');
    Route::get('/candidate/database/', 'AdminController@candidateDatabaseView')->name('candidate.database')->middleware('auth');
    Route::post('/candidate/database/', 'AdminController@candidateDatabase')->name('candidate.database.ajax')->middleware('auth');

    Route::post('/candidate/database/detail', 'AdminController@candidateDatabaseDetailAjax')->name('candidate.database.detail.ajax')->middleware('auth');

    Route::get('/candidate/OTM', 'AdminController@candidateOtm')->name('candidate.otm')->middleware('auth');
    Route::get('/candidate/DNC', 'AdminController@candidateDnc')->name('candidate.dnc')->middleware('auth');
    Route::post('/candidate/OTM', 'AdminController@candidateOtmAjax')->name('candidate.otm.ajax')->middleware('auth');
    Route::post('/candidate/DNC', 'AdminController@candidateDncAjax')->name('candidate.dnc.ajax')->middleware('auth');
    Route::get('/candidate/OTM/detail/{candId}', 'AdminController@candidateOtmDetail')->name('candidate.otm.detail')->middleware('auth');
    Route::get('/candidate/detail/{candId}', 'AdminController@candidateDetail')->name('candidate.detail')->middleware('auth');
//    Route::get('/candidate/OTM/recruitment/status/update' , 'AdminController@candidateOtmDetail')->name('candidate.recruitment.status.update')->middleware('auth') ;
    Route::post('/candidate/update/status', 'AdminController@updateStatusAjax')->name('update.status.ajax')->middleware('auth');
    Route::post('/candidate/update/pipeline/status', 'AdminController@updatepipelineStatusAjax')->name('update.pipeline.status.ajax')->middleware('auth');
    Route::post('/candidate/delete/', 'AdminController@deleteCandidate')->name('candidate.delete')->middleware('auth');
    Route::get('/candidate/edit/{candId}', 'AdminController@editCandidate')->name('candidate.edit')->middleware('auth');
    Route::post('/candidate/edit/', 'AdminController@editedCandidate')->name('candidate.edited')->middleware('auth');

    Route::post('/resume/delete', 'AdminController@resumeDel')->name('resume.del')->middleware('auth');

    Route::post('/otm/update', 'AdminController@otmUpdate')->name('otm.update')->middleware('auth');
    Route::post('/otm/remove/pipeline', 'AdminController@otmRemovePipeline')->name('otm.remove.pipeline')->middleware('auth');
    Route::post('/candidate/remove/pipeline', 'AdminController@removecandidatepipeline')->name('candidate.remove.pipeline')->middleware('auth');

    Route::post('/client/pipeline/jobs', 'AdminController@pipelineClientJobs')->name('pipeline.client.jobs')->middleware('auth');

    Route::post('/candidate/pipeline/', 'AdminController@pipelinecandidate')->name('pipeline.candidate.add')->middleware('auth');
//    Route::post('/candidate/pipeline/' , 'AdminController@pipelinecandidate')->name('pipeline.candidate.add')->middleware('auth') ;

    Route::post('/client/jobs/', 'AdminController@picJobsAgaintsClient')->name('client.jobs')->middleware('auth');

    //end candidate route

    //status
    Route::get('/status', 'AdminController@statusAjax')->name('status.ajax')->middleware('auth');
    Route::get('/create/status', 'AdminController@createStatus')->name('status.create')->middleware('auth');
    Route::post('/create/status', 'AdminController@createdStatus')->name('status.created')->middleware('auth');
    Route::post('/update/status', 'AdminController@updateStatusMainAjax')->name('status.update.main')->middleware('auth');
    Route::post('/delete/status', 'AdminController@deleteStatusAjax')->name('status.delete.ajax')->middleware('auth');
    Route::post('/status/reminder', 'AdminController@statusReminder')->name('status.reminder.ajax')->middleware('auth');
    //end status

    //interview stages
    Route::get('/interviewStages', 'AdminController@interviewStage')->name('interviewStage')->middleware('auth');
    Route::get('/interview_stage/create', 'AdminController@createInterviewStage')->name('interview.stages.create')->middleware('auth');
    Route::post('/interview_stage/create', 'AdminController@createdInterviewStage')->name('interview.stages.created')->middleware('auth');
    Route::post('/interview_stage/update', 'AdminController@updateInterviewStage')->name('interview.stage.update')->middleware('auth');
    Route::post('/interview_stage/delete', 'AdminController@interviewStageDelete')->name('interview.stage.delete')->middleware('auth');
    //end interview stages

    //interview status
    Route::get('/interviewStatus', 'AdminController@interviewStatus')->name('interviewStatus')->middleware('auth');
    Route::get('/create/interview_status', 'AdminController@createInterviewStatus')->name('interview.status.create')->middleware('auth');
    Route::post('/create/interview_status', 'AdminController@createdInterviewStatus')->name('interview.Status.created')->middleware('auth');
    Route::post('/update/interview_status', 'AdminController@updateInterviewStatus')->name('interview.Status.update')->middleware('auth');
    Route::post('/delete/interview_status', 'AdminController@interviewStatusDelete')->name('interview.Status.delete')->middleware('auth');
    //end interview status

    //education
    Route::get('/create/education', 'AdminController@createEducation')->name('education.create')->middleware('auth');
    Route::post('/created/education', 'AdminController@createdEducation')->name('education.created')->middleware('auth');
    Route::post('/delete/education', 'AdminController@deleteEducation')->name('education.delete')->middleware('auth');
    Route::post('/edit/education', 'AdminController@editEducation')->name('education.edit')->middleware('auth');
    Route::get('/education/list', 'AdminController@educationList')->name('education.list.ajax')->middleware('auth');
    //end education


    Route::get('/job/import/', 'AdminController@jobimportpage')->name('jobimportpage')->middleware('auth');
    Route::post('/job/import/submit', 'AdminController@jobimportsubmit')->name('jobimportsubmit')->middleware('auth');


    Route::get('/create/job', 'AdminController@createNewJob')->name('job.create')->middleware('auth');
    Route::post('/create/job', 'AdminController@store_newJob')->name('job.created')->middleware('auth');
    //delete by ajax
    Route::post('/delete/notes/', 'AdminController@deleteNote')->name('note.delete')->middleware('auth');
    Route::post('/edit/notes/', 'AdminController@editNote')->name('note.edit')->middleware('auth');
    //end delete by ajax
    Route::get('/Job/Database/{id?}', 'AdminController@jobDatabaseView')->name('job.database')->middleware('auth');
//
    Route::post('/Job/DatabaseAjax', 'AdminController@jobDatabaseViewAjax')->name('jobs.ajax')->middleware('auth');
    Route::post('/Job/Details', 'AdminController@JobDetailsAjax')->name('job-Details-Ajax')->middleware('auth');

    route::post('/job/candidate/ajax', 'AdminController@dashboardjobcandidate')->name('dashboardjobcandidate')->middleware('auth');
    Route::get('/job/edit/{jobId}', 'AdminController@editJob')->name('job.edit')->middleware('auth');
    Route::post('/job/pipeline', 'AdminController@pipelineJob')->name('job.pipeline')->middleware('auth');

    Route::post('/job/edit', 'AdminController@editJobSubmit')->name('job.edit.submit')->middleware('auth');
    //delete job from ajax
    Route::post('/job/delete/', 'AdminController@deleteJob')->name('job.delete')->middleware('auth');
    //end delete job from ajax
    Route::post('/create/note', 'AdminController@addNote')->name('note.created')->middleware('auth');
    Route::post('/create/note/candidate', 'AdminController@addNoteCandidate')->name('note.created.candidate')->middleware('auth');


    Route::post('/job/list-view/', 'AdminController@joblistForOneCompany')->name('job-details-admin')->middleware('auth');
    Route::post('/job/all-list-view/', 'AdminController@alljoblForOneCompany')->name('all-job-admin')->middleware('auth');


    //code by amir
    // Route::get('/create/note' , 'AdminController@addNote')->name('note.created')->middleware('auth');
    Route::post('/add/piplinejob', 'AdminController@addJobPipline')->name('jobpipline.created')->middleware('auth');

    //repete bcz of job pipeine featue also exist in search page..
    Route::get('search/add/piplinejob/', 'AdminController@addJobPiplineForSearch')->name('search.jobpipline.created')->middleware('auth');

    Route::get('/job/removePipline/{jobId}', 'AdminController@removePipline')->name('job.removePipline')->middleware('auth');

    Route::post('/job/removePiplineAjax/', 'AdminController@removePiplineJobAjax')->name('job.removePiplinejobAjax')->middleware('auth');
    Route::get('/job/detail/{jobId}', 'AdminController@jobDetail')->name('job.detail')->middleware('auth');

    Route::post('/client/addPiplineClient/', 'AdminController@addPiplineClient')->name('client.removePipline')->middleware('auth');
    Route::post('/client/removePiplineClient/', 'AdminController@removePiplineClient')->name('client.removePiplineClient')->middleware('auth');
    Route::post('/client/removePiplineClientAjax', 'AdminController@removePiplineClientAjax')->name('client.removePiplineClientAjax')->middleware('auth');

    Route::get('/settings', 'AdminController@change_password')->name('change.password')->middleware('auth');
    Route::post('/updatepassword', 'AdminController@update_password')->name('update.password')->middleware('auth');
    Route::post('/update/profile/pic', 'AdminController@update_pic')->name('update.pic')->middleware('auth');
    Route::get('/list/dashboard/{id?}', 'AdminController@dashboard')->name('dashboard.database')->middleware('auth');
    //end code by amir


    //client dashboard
    Route::get('/client/dashboard', 'AdminController@clientDashboard')->name('client.dashboard')->middleware('auth');
    Route::post('/client/dashboard/search', 'AdminController@clientDashboardSearch')->name('client.dashboard.search.dropdown')->middleware('auth');
    Route::post('/client/dashboard/search/option', 'AdminController@clientDashboardSearchOption')->name('client.dashboard.search.option')->middleware('auth');
    Route::post('/client/dashboard/job/candidate', 'AdminController@clientDashboardJobCandidate')->name('client.dashboard.job.candidate')->middleware('auth');
    Route::post('/client/dashboard/job/candidate/detail', 'AdminController@clientDashboardJobCandidateDetail')->name('client.dashboard.job.candidate.detail')->middleware('auth');
    //end client dashboard


    //todo-module
    Route::get('/todo/all', 'AdminController@todo')->name('todo')->middleware('auth');
    Route::post('/todo/list', 'AdminController@todolist')->name('todolist')->middleware('auth');
    Route::get('/todo/ajax', 'AdminController@todoajax')->name('todoajax')->middleware('auth');
    Route::post('/todo/add', 'AdminController@addtodo')->name('addtodo')->middleware('auth');
    Route::post('/todo/edit', 'AdminController@edittodo')->name('edittodo')->middleware('auth');
    Route::post('/todo/search', 'AdminController@searchtodo')->name('searchtodo')->middleware('auth');
    Route::post('/todo/delete', 'AdminController@deletetodo')->name('deletetodo')->middleware('auth');
    Route::post('/todo/delete/bulk', 'AdminController@bulkdeletetodo')->name('bulkdeletetodo')->middleware('auth');
    //todo-Actions
    Route::get('/todo/actions', 'AdminController@todoactions')->name('todoactions')->middleware('auth');
    Route::get('/todo/actions/list', 'AdminController@todoactionslist')->name('todoactionslist')->middleware('auth');
    Route::post('/todo/actions/add', 'AdminController@createdaction')->name('createdaction')->middleware('auth');
    Route::post('/todo/actions/update', 'AdminController@updateaction')->name('updateaction')->middleware('auth');
    Route::post('/todo/actions/delete', 'AdminController@deleteaction')->name('deleteaction')->middleware('auth');
    // Calendar
    Route::get('/calendar', 'AdminController@calendar')->name('calendar')->middleware('auth');


    //Sub Admins
    Route::get('/sub-admin/create', 'AdminController@sub_admin_create')->name('sub_admin_create')->middleware('auth');
    Route::post('/sub-admin/created', 'AdminController@sub_admin_created')->name('sub_admin_created')->middleware('auth');
    Route::post('/sub-admin/update', 'AdminController@sub_admin_update')->name('sub_admin_update')->middleware('auth');
    Route::post('/sub-admin/delete', 'AdminController@sub_admin_delete')->name('sub_admin_delete')->middleware('auth');
    Route::get('/sub-admin/edit/{id}', 'AdminController@sub_admin_edit')->name('sub_admin_edit')->middleware('auth');
    Route::get('/sub-admin/all', 'AdminController@sub_admin_all')->name('sub_admin_all')->middleware('auth');
    Route::post('/sub-admin/all/ajax', 'AdminController@sub_admin_all_ajax')->name('sub_admin_ajax')->middleware('auth');
    Route::post('/sub-admin/search/ajax', 'AdminController@sub_admin_search_ajax')->name('sub_admin_ajax_search')->middleware('auth');

//    Privileges
//    Route::get('/create/privilege' , 'AdminController@createprivilege')->name('privileges.create')->middleware('auth') ;
//    Route::post('/created/privilege' , 'AdminController@createdprivilege')->name('privilege.created')->middleware('auth') ;
//    Route::post('/delete/privilege' , 'AdminController@deleteprivilege')->name('privilege.delete')->middleware('auth') ;
//    Route::post('/edit/privilege' , 'AdminController@editprivilege')->name('privilege.edit')->middleware('auth') ;
//    Route::get('/privilege/list' , 'AdminController@privilegeList')->name('privilege.list.ajax')->middleware('auth') ;
//    end privileges


    Route::post('/sub-admin/resume/delete', 'AdminController@sub_admin_resume_delete')->name('sub_admin_resume_delete')->middleware('auth');


});

//Route::post('post/ckeditor/upload', 'mailController@upload_image_cke')->name('ckeditor.upload');
