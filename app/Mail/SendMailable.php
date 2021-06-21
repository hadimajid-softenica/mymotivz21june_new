<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendMailable extends Mailable
{
    use Queueable, SerializesModels;
    public $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        //
//        dd($data);
        $this->data = $data;
//        dd($this->data);
//        $this->email = $data->email;
//        $this->subject = $data->subject;
//        $this->msg = $data->msg;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
       $email =  $this->view('mail.mail')->from('admin@mymotivz.com', 'MyMotivz')->subject($this->data['subject'])->with([ 'data' => $this->data ]);
        foreach($this->data['resumes'] as $resume){
//            dd($resume['resume']);
           $exten= explode(".",$resume['resume']);
           $count = count($exten);
            $email->attach(asset('public').'/files/'.$resume['resume'], [
                'as' => str_slug($resume['candidate']['name']).'.'.$exten[$count-1]
            ]);
        }
        return $email;
    }
}
