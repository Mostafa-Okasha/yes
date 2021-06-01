<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\support\facades\DB;
use App\Newsletter;
use App\Message;
use App\Student;

class MessageController extends Controller
{
    public function newsletter(Request $request)
    {
        $data=$request->validate([
            'email'=>'required|email'
        ]);
        // $newsletter=new Newsletter();
        // $newsletter->email=$request->email();
        // $newsletter->save();

        Newsletter::create($data);
        return back();
    }
    public function contact(Request $request)
    {
        $data=$request->validate([
            'name'=>'required|string|max:191',
            'email'=>'required|email',
            'subject'=>'nullable|string|max:191',
            'message'=>'required|string'
        ]);

        Message::create($data);
        return back();
    }
    public function enroll(Request $request)
    {
        $data=$request->validate([
            'name'=>'required|string|max:191',
            'email'=>'required|email',
            'spec'=>'nullable|string|max:191',
            'course_id'=>'required|exists:courses,id'
        ]);
        
        $student = Student::create([
            'name'=>$data['name'],
            'email'=>$data['email'],
            'spec'=>$data['spec'],
        ]);
        
        $student_id = $student->id;

        DB::table('course_student')->insert([
            'course_id'=> $data['course_id'],
            'student_id'=> $student_id,
            'created_at'=> now(),
            'updated_at'=> now()
        ]);

        return back();
    }
}

