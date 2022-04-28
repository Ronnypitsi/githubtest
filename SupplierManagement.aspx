<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupplierManagement.aspx.cs" Inherits="Webschoolonline.home" %>

<!DOCTYPE html><!--  This site was created in Webflow. http://www.webflow.com  -->
<!--  Last Published: Sat Nov 07 2020 12:25:55 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="5f859ca9d0fbbe66d1ee962f" data-wf-site="5f3bab2503fb87a4df17fb87">
<head>
  <meta charset="utf-8">
  <title>Pan-African Parliament | Suppliers</title>
  <meta content="Suppliers" property="og:title">
  <meta content="Suppliers" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize.css" rel="stylesheet" type="text/css">
  <link href="css/webflow1.css" rel="stylesheet" type="text/css">
  <link href="css/cx-portal.webflow.css" rel="stylesheet" type="text/css">
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=612e81a0c13e676d8f9eb2e8" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic","Varela Round:400","Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","PT Sans:400,400italic,700,700italic"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.jpg" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.jpg" rel="apple-touch-icon">
  <script src="js/jquery-2.1.1.js" type="text/javascrip ></scriptt">
  <script src="js/webflow1.js" type="text/javascript"></script>
  <script src="https://www.google.com/recaptcha/api.js" type="text/javascript"></script>
   <script src="js/jquery.dataTables.min.js"></script>
   <link href="css/jquery.dataTables.css" />
 
 <script src="js/Management.js" type="text/javascript"></script>
    <style>
        div#tblAllSuppliers_wrapper {
    width: 100%;
}
        table#tblAllSuppliers {
    width: 100%;
}
        span {
    display: none;
}

        tbody {
    font-size: 12px;
}
    </style>
</head>
<body>
    <div class="sales_process_popup" id="allsend" >
    <div class="popup_div">
     
      <div class="w-form">
        <form id="email-form-2" name="email-form-2" data-name="Email Form 2" class="popup_form w-clearfix">
          <div class="meetingtitle meetingemail step_text">Send Mail</div>
            <label for="email-2" class="search-title">To: All Suppliers</label>
           <label for="email-2" class="search-title">Subject</label>
              <input type="text" class="w-input" maxlength="256" name="trade-inofferprice-2" data-name="Trade Inofferprice 2" placeholder="Subject" id="aSubject" required="">
        <label for="email-2" class="search-title">Message</label>
       
                <textarea placeholder="Message" maxlength="5000" id="aSMS-Message" name="SMS-Message" data-name="SMS Message" class="sms_text w-input"></textarea>  
           
          <a href="#" class="bottommorelink button_search w-inline-block">
            <div class="detailscallinktext">Send</div>
          </a>
          <a onclick=" $('#allsend').attr('style', 'display:none');" class="bottommorelink button_close_top w-inline-block">
            <div class="detailscallinktext">Close</div>
          </a>
        </form>
        
      </div>
    </div>
  </div>
    <div class="sales_process_popup" id="send1" >
    <div class="popup_div">
     
      <div class="w-form">
        <form id="email-form-2" name="email-form-2" data-name="Email Form 2" class="popup_form w-clearfix">
          <div class="meetingtitle meetingemail step_text">Send Mail</div>
            <label for="email-2" class="search-title">To:</label>
            <input type="text" class="w-input" maxlength="256" name="trade-inofferprice-2" data-name="Trade Inofferprice 2" placeholder="Email" id="Email" required="">
            <label for="email-2" class="search-title">Subject</label>
              <input type="text" class="w-input" maxlength="256" name="trade-inofferprice-2" data-name="Trade Inofferprice 2" placeholder="Subject" id="Subject" required="">
        <label for="email-2" class="search-title">Message</label>
       
                <textarea placeholder="Message" maxlength="5000" id="SMS-Message" name="SMS-Message" data-name="SMS Message" class="sms_text w-input"></textarea>  
           
          <a href="#" class="bottommorelink button_search w-inline-block">
            <div class="detailscallinktext">Send</div>
          </a>
          <a onclick=" $('#send1').attr('style', 'display:none');" class="bottommorelink button_close_top w-inline-block">
            <div class="detailscallinktext">Close</div>
          </a>
        </form>
        
      </div>
    </div>
  </div>
  <div class="topbar">
    <div class="topbarcontain w-clearfix">
      <a href="/DealerDashboard.aspx" class="link-block-2 w-inline-block"><img src="images/banner3.jpg" alt="" class="image-2"></a>
      <div class="div-block w-clearfix">
        <div class="topavatar"></div>
        <div class="nametext">Kate Test</div>
        <div data-delay="0" class="dropdown-2 w-dropdown">
          <div class="topplusbutton w-dropdown-toggle">
            <div class="text-block">+</div>
          </div>
          <nav class="profiledropdowncontain w-dropdown-list">
            <a href="profile.html" class="leftmenulink leftlogout toplogout w-inline-block">
              <div class="leftlinktext">Profile</div>
            </a>
            <a href="#" class="leftmenulink leftlogout toplogout w-inline-block">
              <div class="leftlinktext">Log Out</div>
            </a>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="pagecontain">
      <div class="hamburger_div">
        <div class="ham_link" data-ix="show-mobile-menu">
          <div data-w-id="7ed46289-0278-9c9d-33c6-78bc0e453bb5" data-animation-type="lottie" data-src="documents/lf30_editor_b7xy3slg.json" data-loop="0" data-direction="1" data-autoplay="0" data-is-ix2-target="1" data-renderer="svg" data-default-duration="1" data-duration="0" class="lottie-animation"></div>
        </div>
      </div>
      <div class="_2nd_menu-links">
         <%--<a href="suppliers.aspx" class="leftmenulink_main w-inline-block">
            <div class="leftlinktext_main">Suppliers</div>
          </a>--%>
          <a href="SuppliersRegistration.aspx" class="bottommorelink bottommoreright menu_button w-inline-block">
            <div class="detailscallinktext">Add New Supplier</div>
          </a>
          <a href="SupplierManagement.aspx" class="bottommorelink bottommoreright menu_button w-inline-block">
            <div class="detailscallinktext">Supplier Management</div>
          </a>
        <%--<a href="new-lead.html" class="leftmenulink mobile_link w-inline-block">
          <div class="leftlinktext">Add New Lead</div>
        </a>
        <a href="old-home.html" class="leftmenulink mobile_link w-inline-block">
          <div class="leftlinktext">Appointments</div>
        </a>
        <a href="leads-inbox.html" class="leftmenulink mobile_link w-inline-block">
          <div class="leftlinktext">Lead Inbox</div>
        </a>
        <a href="sales-dashboard.html" aria-current="page" class="leftmenulink mobile_link w-inline-block w--current">
          <div class="leftlinktext">Deal Dashboard</div>
        </a>
        <a href="service-calendar.html" class="leftmenulink mobile_link w-inline-block">
          <div class="leftlinktext">Service Calendar</div>
        </a>
        <a href="database.html" class="leftmenulink mobile_link w-inline-block">
          <div class="leftlinktext">Database</div>
        </a>
        <a href="old-home.html" class="leftmenulink mobile_link hidden w-inline-block">
          <div class="leftlinktext">Customer Comm Centre</div>
        </a>
        <a href="old-home.html" class="leftmenulink mobile_link hidden w-inline-block">
          <div class="leftlinktext">Wishlist Sourcing</div>
        </a>--%>
      </div>
      <div class="div-block-6">
        <div class="menuleft flextleft w-clearfix">
          <div class="nametext leftnametext">Welcome</div>
          <div class="nametext leftnametext detailtext"></div>
          <%--<a href="suppliers.aspx" class="leftmenulink_main w-inline-block">
            <div class="leftlinktext_main">Supplier Dashboard</div>
          </a>--%>
          <a href="SuppliersRegistration.aspx" class="bottommorelink bottommoreright menu_button w-inline-block">
            <div class="detailscallinktext">Add New Supplier</div>
          </a>
          <a href="SupplierManagement.aspx" class="bottommorelink bottommoreright menu_button w-inline-block">
            <div class="detailscallinktext">Supplier Management</div>
          </a>
          <div class="leftmenucontain">
            <a href="old-home.html" class="leftmenulink w-inline-block">
              <div class="leftlinktext"></div>
            </a>
            <a href="leads-inbox.html" class="leftmenulink w-inline-block">
              <div class="leftlinktext"></div>
            </a>
            <a href="sales-dashboard.html" aria-current="page" class="leftmenulink w-inline-block w--current">
              <div class="leftlinktext"></div>
            </a>
            <a href="database.html" class="leftmenulink w-inline-block">
              <div class="leftlinktext"></div>
            </a>
            <a href="service-calendar.html" class="leftmenulink w-inline-block">
              <div class="leftlinktext"></div>
            </a>
            <a href="delivery-calendar.html" class="leftmenulink w-inline-block">
              <div class="leftlinktext"></div>
            </a>
            <a href="sales-steering.html" class="leftmenulink w-inline-block">
              <div class="leftlinktext"></div>
            </a>
            <a href="#" data-ix="new-interaction-2" class="inboxdiv cust_comm_notify_div w-hidden-small w-hidden-tiny w-inline-block"></a>
            <a href="#" class="leftmenulink hidden w-inline-block">
              <div class="leftlinktext">Customer Comm Centre</div>
            </a>
            <a href="#" data-ix="new-interaction-2" class="inboxdiv wishlist_notify_div w-hidden-small w-hidden-tiny w-inline-block"></a>
            <a href="#" class="leftmenulink hidden w-inline-block">
              <div class="leftlinktext">Wishlist Sourcing</div>
            </a>
            <a href="Login.aspx" class="leftmenulink leftlogout w-inline-block">
              <div class="leftlinktext"></div>
            </a>
          </div>
          <a href="/DealerDashboard.aspx" class="link-block-3 w-inline-block">
            <div class="back_to_portal">Log Out</div>
          </a>
        </div>
        <div class="a4_div">
          <div class="div-block-10">
            <h1 class="meetingsh1 add_customer_heading h1_2">Suppliers</h1>
            <div class="w-form">
              <form id="email-form-3" name="email-form-3" data-name="Email Form 3" class="form-12 w-clearfix">
                <%--<a  class="bottommorelink bottommoreright blue_buttons button_apmnt w-inline-block" id="NewSupplier">
                  <div class="detailscallinktext">New Supplier</div>
                </a>--%>
                  <%--<select id="field" name="field" class="select-field-13 w-select">
                  <option value="">Active</option>
                  <option value="Lost">Lost</option>
                  <option value="Delivered">Delivered</option>
                </select>--%>
                   <select id="CATEGORY6" name="field-6" data-name="Field 6" class="select-field-13 w-select">
			  <option value=" ">CATEGORYs</option></select>
                <a onclick="opeallmail()" class="bottommorelink bottommoreright filter_button w-inline-block" >
                  <div class="detailscallinktext">Send Mail To All Supplier</div>
                </a>
              </form>
              <div class="w-form-done">
                <div>Thank you! Your submission has been received!</div>
              </div>
              <div class="w-form-fail">
                <div>Oops! Something went wrong while submitting the form.</div>
              </div>
            </div>
            <div class="numberofmeetings">List of Supplier</div>
            <div class="flex_div w-clearfix" id="DivAllSuppliers">
             <%-- <div data-ix="new-interaction-4" class="meetingdetailcontain float-left deal_contain">
                <div class="lost_deal_tag">Lost Deal</div>
                <a href="#" class="button_view w-button">View Deal</a>
                <div class="sales_process_dashboard">
                  <div class="w-form">
                    <form id="email-form" name="email-form" data-name="Email Form" class="form-6 w-clearfix">
                      <div class="meetingtitle meetingemail step_text">&lt;Customer Name&gt;</div><label for="email" class="search-title">Last Update: &lt;Stage&gt;</label>
                      <a href="#" class="bottommorelink button_search w-inline-block">
                        <div class="detailscallinktext">Open Deal</div>
                      </a>
                      <a href="#" class="bottommorelink button_search w-inline-block">
                        <div class="detailscallinktext">Mark As Lost</div>
                      </a>
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
              <div data-ix="new-interaction-4" class="meetingdetailcontain float-left deal_contain">
                <div class="done_deal_tag">Delivered</div>
                <div class="sales_process_dashboard">
                  <div class="w-form">
                    <form id="email-form" name="email-form" data-name="Email Form" class="form-6 w-clearfix">
                      <div class="meetingtitle meetingemail step_text">&lt;Customer Name&gt;</div><label for="email" class="search-title">Last Update: &lt;Stage&gt;</label>
                      <a href="#" class="bottommorelink button_search w-inline-block">
                        <div class="detailscallinktext">Open Deal</div>
                      </a>
                      <a href="#" class="bottommorelink button_search w-inline-block">
                        <div class="detailscallinktext">Mark As Lost</div>
                      </a>
                    </form>
                    <div class="w-form-done">
                      <div>Thank you! Your submission has been received!</div>
                    </div>
                    <div class="w-form-fail">
                      <div>Oops! Something went wrong while submitting the form.</div>
                    </div>
                  </div>
                </div>
                <a href="#" class="button_view w-button">View Deal</a>
              </div>--%>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="filter_side_div">
      <div class="form-block w-form">
        <form id="email-form" name="email-form" data-name="Email Form" class="form w-clearfix">
          <h1 class="meetingsh1 white_filter_heading" data-ix="filer-hide">Filter By:</h1><select id="field-2" name="field-2" data-name="Field 2" class="select-field mobile_filter_drop w-select">
            <option value="">Choose Staff Member</option>
            <option value="First">First Choice</option>
            <option value="Second">Second Choice</option>
            <option value="Third">Third Choice</option>
          </select><select id="field-2" name="field-2" data-name="Field 2" class="select-field mobile_filter_drop w-select">
            <option value="">Choose Staff Member</option>
            <option value="First">First Choice</option>
            <option value="Second">Second Choice</option>
            <option value="Third">Third Choice</option>
          </select><input type="text" class="searchbar w-input" maxlength="256" name="Search-2" data-name="Search 2" placeholder="Search" id="Search-2">
          <div class="searchdrop">
            <div class="text-block-6">Search</div>
          </div>
        </form>
        <div class="successsearch w-form-done"></div>
        <div class="w-form-fail">
          <div>Oops! Something went wrong while submitting the form.</div>
        </div>
      </div>
      <h1 class="meetingsh1 white_filter_heading close_link" data-ix="filer-hide">Close</h1>
    </div>
  </div>
  <div class="loading_section">
    <div class="div-block-15">
      <h1 class="loading_text">Loading</h1>
    </div>
  </div>
  <div class="a4_quote">
    <div class="a4_div_final">
      <div class="quote_top_div w-clearfix">
        <div class="dealer_logo"></div>
        <div class="dealer_details">
          <div class="a4_body_text">56 Jerome Road<br>Lynnwood Glen<br>Pretoria<br>0081<br>087 135 6082<br>‍<br>Reg: 2001 / 1212121 / 43</div>
        </div>
      </div>
      <h1 class="meetingsh1 add_customer_heading">Quote #123</h1>
      <div class="topdashbar">
        <div class="a4_header_text">Year + Vehicle + Mileage</div>
      </div>
      <div class="div-block-12">
        <div>
          <div class="quote_section_div">
            <div class="numberofmeetings">Standard Features</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="quote_section_div">
            <div class="numberofmeetings">Extra Features</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
          <div class="quote_section_div">
            <div class="numberofmeetings">Dealer Fitted Options</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
          <div class="quote_section_div">
            <div class="numberofmeetings_trade_in">Trade-In Details</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Year + Vehicle + KM</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">&lt;Offer Price&gt;</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Offer Price</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
          <div class="quote_section_div">
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Total</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="w-row">
                <div class="column-57 w-col w-col-8"></div>
                <div class="column_price_bottom w-col w-col-4">
                  <div class="a4_body_text_left bold">EXCL Vat 15%</div>
                </div>
              </div>
              <div class="w-row">
                <div class="column-57 w-col w-col-8"></div>
                <div class="column_price_bottom w-col w-col-4">
                  <div class="a4_body_text_left bold">&lt;Total Cost&gt;</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="a4_div_otp">
      <div class="quote_top_div w-clearfix">
        <div class="dealer_logo"></div>
        <div class="dealer_details">
          <div class="a4_body_text">56 Jerome Road<br>Lynnwood Glen<br>Pretoria<br>0081<br>087 135 6082<br>‍<br>Reg: 2001 / 1212121 / 43</div>
        </div>
      </div>
      <h1 class="meetingsh1 add_customer_heading">OTP #123</h1>
      <div class="topdashbar">
        <div class="a4_header_text">Year + Vehicle + Mileage</div>
      </div>
      <div class="div-block-12">
        <div>
          <div class="quote_section_div">
            <div class="numberofmeetings">Standard Features</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="quote_section_div">
            <div class="numberofmeetings">Extra Features</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
          <div class="quote_section_div">
            <div class="numberofmeetings">Dealer Fitted Options</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Item</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
          <div class="quote_section_div">
            <div class="numberofmeetings_trade_in">Trade-In Details</div>
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Year + Vehicle + KM</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">&lt;Offer Price&gt;</div>
                </div>
              </div>
              <div class="table_col_middle w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left">Offer Price</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left">Cost</div>
                </div>
              </div>
            </div>
          </div>
          <div class="quote_section_div">
            <div class="block_div_quote">
              <div class="table_col_header w-row">
                <div class="column-57 w-col w-col-8">
                  <div class="a4_body_text_left bold">Total</div>
                </div>
                <div class="column_price w-col w-col-4">
                  <div class="a4_body_text_left bold">Price</div>
                </div>
              </div>
              <div class="w-row">
                <div class="column-57 w-col w-col-8"></div>
                <div class="column_price_bottom w-col w-col-4">
                  <div class="a4_body_text_left bold">EXCL Vat 15%</div>
                </div>
              </div>
              <div class="w-row">
                <div class="column-57 w-col w-col-8"></div>
                <div class="column_price_bottom w-col w-col-4">
                  <div class="a4_body_text_left bold">&lt;Total Cost&gt;</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="a4_quote_div"></div>
  </div>
 
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