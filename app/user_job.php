<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class user_job extends Model
{
    //
    protected $guarded=[];

    public function client(){
        return $this->belongsTo(NewClient::class, 'client_id', 'id');
    }
    public function industry(){
        return $this->belongsTo(Industry::class, 'industry_id', 'id');
    }
    public function candidates()
    {
        return $this->belongsToMany(NewCandidate::class) ;
    }
    public function favourite_job()
    {
        return $this->hasMany(favourite_job::class,'job_id','id') ;
    }
    public function applied_job()
    {
        return $this->hasMany(Applied_Jobs::class,'job_id','id') ;
    }
    public function education()
    {
        return $this->belongsTo(Education::class, 'education_id', 'id') ;
    }
}
