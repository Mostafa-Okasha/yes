<!doctype html>
<html lang="en">
<head>
    <title>Login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('front/css')}}/bootstrap.min.css">
</head>
<body>

    <div class="container m-5 p-5">
        @include('admin.inc.errors')
        
        <form action="{{ route('admin.dologin') }}" method="post">
            @csrf
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="{{asset('front/js')}}/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="{{asset('front/js')}}/popper.min.js"></script>
<!-- bootstrap js -->
<script src="{{asset('front/js')}}/bootstrap.min.js"></script>
</body>
</html>
