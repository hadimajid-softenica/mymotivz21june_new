<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class recruitment_service extends Model
{
    protected $guarded=[];
    public function industry(){
        return $this->belongsTo(Industry::class, 'industry_id', 'id');
    }
    public function education()
    {
        return $this->belongsTo(Education::class, 'education_id', 'id') ;
    }
}
