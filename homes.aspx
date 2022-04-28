<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homes.aspx.cs" Inherits="Webschoolonline.home" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <style>
 .register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 1%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 34%;
    float: right;
}
a {
    TEXT-ALIGN: center;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
/*.mfp-bg.mfp-img-mobile.mfp-ready {
    visibility: hidden;
}
.mfp-wrap.mfp-gallery.mfp-close-btn-in.mfp-auto-cursor.mfp-img-mobile.mfp-ready {
    visibility: hidden;
}*/

     </style>
        <script src="js/register.js"></script>

    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">School Portal</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                      
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                        <%--  <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a></li>--%>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">School Portal</h1>
                        <hr class="divider my-6" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5">Tomorrow’s challenges can’t be solved with yesterday’s thinking</p>
                        <%--<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Login</a> 
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Register</a>--%>
                         <h3 class="text-center text-info">Login to School Portal </h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info" onclick="openregister()">Register here</a>
                            </div>
                    </div>
                    <div id="login" class="col-lg-8 align-self-baseline justify-content-center align-items-center ">
        
                
                           
                       
                  
    </div>
               
            </div> </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about" hidden>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">We've got what you need!</h2>
                        <hr class="divider light my-4" />
                        <p class="text-white-50 mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! Choose one of our open source, free to download, and easy to use themes! No strings attached!</p>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="services" hidden>
            <div class="container">
                <h2 class="text-center mt-0">At Your Service</h2>
                <hr class="divider my-4" />
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Sturdy Themes</h3>
                            <p class="text-muted mb-0">Our themes are updated regularly to keep them bug free!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Up to Date</h3>
                            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Ready to Publish</h3>
                            <p class="text-muted mb-0">You can use this design as is, or you can make changes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Made with Love</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Portfolio-->
        <div id="register" class="container register"  >
            <div class="container-fluid p-0 ">
                <div class="row no-gutters">
                     <div class="col-md-3  text-info register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>You are 30 seconds away from your online school!</p>
                        <input type="submit" name="" onclick="openlogin()" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="School-tab" data-toggle="tab" href="#School" role="tab" aria-controls="School" aria-selected="true">School</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="Student-tab" data-toggle="tab" href="#Student" role="tab" aria-controls="Student" aria-selected="false">Student</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" id="Teacher-tab" data-toggle="tab" href="#Teacher" role="tab" aria-controls="Teacher" aria-selected="false">Teacher</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="School" role="tabpanel" aria-labelledby="School-tab">
                                <h3 class="register-heading">Register School</h3>
                                <div class="row register-form">

                                    <div class="col-md-6">
                                        
                                        <div class="form-group">

                                              <label for="SchoolName"><b>School Name</b></label>
                                            <input type="text" class="form-control" id="SchoolName" placeholder="School Name *" value=""  required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="SchoolNumber" placeholder="School Regstration Number *" value="" />
                                        </div>
                                        <div class="form-group">
                                            School Build Date
                                            <input type="date" id="SchoolBuildDate" class="form-control" placeholder="School Build Date*" value="" />
                                        </div>
                                        <div class="form-group">
                                           <%-- <input type="text" class="form-control" placeholder="School Phase*" value="" />--%>
                                            <select class="form-control" id="schoolLevel">
                                                <option class="hidden"  selected disabled>Please select School Type</option>
                                                <option>SECONDARY/HIGH SCHOOL</option>
                                                <option>PRIMARY SCHOOL</option>
                                               <%-- <option>What is your Pet Name?</option>--%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="SchoolFees"  placeholder="School Fees *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="NumberofTeachers" placeholder="Number of Teachers in School*" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Numberoflearners" placeholder="Number of learners in School*" value="" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="schooltyp" value="NOT BOARDING" checked>
                                                    <span> NOT BOARDING </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="schooltyp" value="BOARDING">
                                                    <span>BOARDING</span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="SchoolEmail" placeholder="School Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" id="SchoolPhone" class="form-control" placeholder="School Phone *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" id="School_PhysicalAddress" class="form-control" placeholder="School Physical Address *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" id="School_Township_village" class="form-control" placeholder="School Township/Village *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" id="School_District" class="form-control" placeholder="School District *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" id="School_Municipality" placeholder="Local Municipality *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" id="School_City" class="form-control" placeholder="School City *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" id="SchoolProvince">
                                                <option class="hidden"  selected disabled>Please select School Province</option>
                                                <option>Eastern Cape</option>
                                                <option>Free State</option>
                                                <option>Gauteng</option>
                                                <option>Kwazulu Natal</option>
                                                <option>Limpopo</option>
                                                <option>Mpumalanga</option>
                                                <option>Northern Cape</option>
                                                <option>North West,</option>
                                                <option>Western Cape</option>
                                            </select>
                                        </div>
                                       <a class="btn btn-light btn-xl btnRegister" onclick="register()">Register </a>
                                     <%--   <input type="submit"   value="Register"/>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade show" id="Student" role="tabpanel" aria-labelledby="Student-tab">
                                <h3 class="register-heading"> Register Student</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Middle Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="ID Number *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Age*" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                       
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Student Physical Address *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your School</option>
                                                
                                            </select>
                                        </div>
                                        <div class="form-group">
                                          <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your school grade</option>
                                                <option>Grade R</option>
                                                <option>Grade 1</option>
                                                <option>Grade 2</option>
                                               <option>Grade 3</option>
                                               <option>Grade 4</option>
                                               <option>Grade 5</option>
                                               <option>Grade 6</option>
                                               <option>Grade 7</option>
                                               <option>Grade 8</option>
                                              <option>Grade 9</option>
                                              <option>Grade 10</option>
                                              <option>Grade 11</option>
                                              <option>Grade 12</option>

                                            </select>
                                        </div> 
                                        <div class="form-group">
                                          <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your school grade Subject</option>
                                                <option>Grade R</option>
                                                <option>Grade 1</option>
                                                <option>Grade 2</option>
                                               <option>Grade 3</option>
                                               <option>Grade 4</option>
                                               <option>Grade 5</option>
                                               <option>Grade 6</option>
                                               <option>Grade 7</option>
                                               <option>Grade 8</option>
                                              <option>Grade 9</option>
                                              <option>Grade 10</option>
                                              <option>Grade 11</option>
                                              <option>Grade 12</option>

                                            </select>
                                        </div>
                                           <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Confirm Password *" value="" />
                                        </div>
                                        <a class="btnRegister" id="Kin-tab" data-toggle="tab" href="#Kin" role="tab" aria-controls="Kin" aria-selected="false">Next</a>
                                       <%-- <input type="submit" class="btnRegister"  value="Next"/>--%>
                                    </div>
                                </div>
                                <div class="tab-pane fade show" id="Kin">
                                <h4 class="register-heading">Next of Kin</h4>
                                 <div class="row register-form">
                                     
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Parent First Name *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Parent Middle Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Parent Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Parent ID Number *" value="" />
                                        </div>
                                       
                                        
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                         <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Employement Status*" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Parent Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Parent Phone *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Parent Physical Address *" value="" />
                                        </div>
                                        
                                       
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div> 

                            </div>
                           <div class="tab-pane fade show" id="Teacher" role="tabpanel" aria-labelledby="Teacher-tab">
                                <h3 class="register-heading"> Register Teacher</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" />
                                        </div>
                                       <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Middle Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="ID Number *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Position *" value="" />
                                        </div>
                                        
                                        
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select School</option>
                                               
                                            </select>
                                        </div>
                                         <div class="form-group">
                                            <input type="TEXT" class="form-control" placeholder="Physical Address *" value="" />
                                        </div>
                                         <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Confirm Password *" value="" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        <section class="page-section bg-dark text-white" hidden>
            <div class="container text-center">
                <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
                <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact" hidden>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4" />
                        <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>+1 (555) 123-4567</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i
                        ><!-- Make sure to change the email address in BOTH the anchor text and the link target below!--><a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container"><div class="small text-center text-muted">Copyright © 2020 - School Portal</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
