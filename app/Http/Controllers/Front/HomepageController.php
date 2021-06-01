<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Course;
use App\Student;
use App\Trainer;
use App\SiteContent;
use App\Testmonial;
class HomepageController extends Controller
{
    //
    public function index()
    {
        $data['banner']=SiteContent::select('content')->where('name','banner')->first();
        $data['courses']=Course::select('id','name','small_desc','cat_id','trainer_id','img','price')
        ->orderBy('id','desc')
        ->take(3)
        ->get();

        $data['testmonial']=Testmonial::select('name','spec','desc','img')->get();

        $data['courses_count']=Course::count();
        $data['students_count']=Student::count();
        $data['trainers_count']=Trainer::count();
        return view('front/index')->with($data);
    }

}
