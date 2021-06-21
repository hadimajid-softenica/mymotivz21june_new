<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Applied_Jobs extends Model
{
    public function job()
    {
        return $this->belongsTo(user_job::class,'job_id','id') ;
    }
//    public function candidate()
//    {
//        return $this->belongsTo(Candidate::class,'candidate_id','id') ;
//    }
    public function candidate()
    {
        return $this->belongsTo(NewCandidate::class,'candidate_id','id') ;
    }
//    public function resume()
//    {
//        return $this->belongsTo(Resume::class,'resumed_id','id') ;
//    }
    public function candidate_resume()
    {
        return $this->belongsTo(candidate_resume::class,'resumed_id','id') ;
    }
    public function industry(){
        return $this->belongsTo(Industry::class, 'industry_id', 'id');
    }
}
