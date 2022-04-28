<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webschoolonline.login" %>

<!DOCTYPE html><!--  This site was created in Webflow. http://www.webflow.com  -->
<!--  Last Published: Sat Nov 07 2020 12:25:55 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="5f435bc864b4e1ca49ea2f24" data-wf-site="5f3bab2503fb87a4df17fb87">
<head>
  <meta charset="utf-8">
  <title>Login Management</title>
  <meta content="Login Management" property="og:title">
  <meta content="Login Management" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize.css" rel="stylesheet" type="text/css">
  <link href="css/webflow1.css" rel="stylesheet" type="text/css">
  <link href="css/cx-portal.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic","Varela Round:400","Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","PT Sans:400,400italic,700,700italic"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.jpg" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.jpg" rel="apple-touch-icon">
  <script src="https://www.google.com/recaptcha/api.js" type="text/javascript"></script>
</head>
<body>
  <div class="topbar">
    <div class="topbarcontain w-clearfix"><img src="images/banner3.jpg" alt="" class="image-2">
      <h1 class="meetingsh1 add_customer_heading white_headings top_heading">Supplier Management System</h1>
    </div>
  </div>
  <div class="banner_div">
    <div class="form_div form_div_login">
      <h1 class="meetingsh1 add_customer_heading white_headings">Sign-In</h1>
      <div class="w-form">
        <form id="email-form-3" name="email-form-3" data-name="Email Form 3" class="w-clearfix"><label for="email-2" class="field-label-2">Username</label><input type="email" class="text-field-3 w-input" maxlength="256" name="email" data-name="Email" placeholder="" id="email" required=""><label for="email" class="field-label-2">Email Address</label><input type="email" class="text-field-4 w-input" maxlength="256" name="email-2" data-name="Email 2" placeholder="" id="email-2" required="">
         <input type="submit" value="Login" data-wait="Please wait..." class="searchdrop login_div login_button w-button">
        </form>
        <div class="w-form-done">
          <div>Thank you! Your submission has been received!</div>
        </div>
        <div class="w-form-fail">
          <div>Oops! Something went wrong while submitting the form.</div>
        </div>
      </div>
    </div>
  </div>
  <div class="section"></div>
  <div class="loading_section">
    <div class="div-block-15">
      <h1 class="loading_text">Loading</h1>
    </div>
  </div>
  <div class="login-page">
    <div class="v4-login-div">
      <div class="v4-login-form-div">
        <div class="w-form">
          <form id="loginform" name="email-form-2" data-name="Email Form 2" class="form-3 w-clearfix">
            <div class="v4-loginform-closediv w-clearfix">
              <a href="#" class="v4-close-link w-inline-block"></a>
            </div><img src="https://uploads-ssl.webflow.com/5f2a986047e3010af1e8495d/5f2bb85eeb557e8553bb908a_Silver%20E-dealer%20Portal%20Cropped.png" alt="" class="v4-loginform-logo">
            <div class="v4-loginform-subheading">Welcome back! Please login to your account.</div><label for="txtUserName" class="input-text">Username</label><input type="text" class="input-field w-input" maxlength="256" name="txtUserName" data-name="Txt User Name" placeholder="" id="txtUserName" required=""><label for="txtPassword" class="input-text">Password</label><input type="email" class="input-field w-input" maxlength="256" name="txtPassword" data-name="Txt Password" placeholder="" id="txtPassword" required="">
            <div class="forgot_passowrd_div"><label for="txtPassword" class="input-text">E-Mail</label><input type="email" class="input-field w-input" maxlength="256" name="txtPassword-3" data-name="Txt Password 3" placeholder="" id="txtPassword" required=""><label for="Txt-Password" class="input-text">Code</label><input type="email" class="input-field w-input" maxlength="256" name="Txt-Password" data-name="Txt Password" placeholder="" id="Txt-Password" required=""></div>
            <a href="#" class="input-text v4-forgotlink">Forgot Password</a><label class="w-checkbox input-text v4-rememberinput"><input type="checkbox" id="Remember Me" name="Remember-Me" data-name="Remember Me" class="w-checkbox-input"><span for="Remember Me" class="input-text w-form-label">Remember me</span></label><input type="submit" value="Login" data-wait="Please wait..." class="v4-sign-up-button v4-login-button w-button"><input type="submit" value="Sign Up" data-wait="Please wait..." class="v4-sign-up-button v4-login-button v4-register-button w-button">
          </form>
          <div class="success-message w-form-done"></div>
          <div class="error-message w-form-fail"></div>
        </div>
        <div class="form_states">
          <div class="show_success">
            <div class="form_state_text">Your login has been successful.</div>
          </div>
          <div class="show_failure">
            <div class="form_state_text">Check details. An issue occured whilst submitting the form.</div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5f3bab2503fb87a4df17fb87" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow1.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
  <!--  Load Facebook SDK for JavaScript  -->
  <div id="fb-root"></div>
  <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v8.0'
          });
        };
        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>
  <!--  Your Chat Plugin code  -->
  <div class="fb-customerchat" attribution="setup_tool" page_id="115115803471291" theme_color="#fa3c4c">
  </div>
</body>
</html>