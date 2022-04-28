

var tblAllSuppliers = '<table id="tblAllSuppliers" class="table table-striped" >' +
    '<thead><tr><th> Name</th><th>Organization</th><th>Year</th><th>Country</th><th>License No</th>' +
    ' <th>Category</th><th>Status</th><th>Details</th> <th>Mail</th> ' +
    '</tr ></thead > <tbody></tbody></table > ';




$(document).ready(function () {
    $('#register').hide();
    $('.loading_section.loading_page').hide()
  
    getsupplierscategorytype();
    $('#CATEGORY6').on('change', function () {
        $('.input.w-input').val($(this).val());
        $('.input.w-input').keyup();

    }); $('#NewSupplier').click( function () {
        $('.input.w-input').val('Panding');
        $('.input.w-input').keyup();

    });
    openlist() 
   
    var x = location.hash;
    if (x.length > 0) {
        x = x.substring(1);
        getcompanydetails(x)
    } else {
        register();
    }
});
function openstatus(cid) {
    $('#UID').val(cid)
    $('#myModalssss').show()
}
function openmail(email) {
    $('#send1').attr('style', 'display:flex')
    $('#Email').val(email);
} function opeallmail() {
    $('#allsend').attr('style', 'display:flex')
    
}

var processBusy = false;
function licensestatus(r)
{
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'Service.aspx',
        type: "POST", cache: false,
        data: {
            Action: "licensestatus",
            status: r,
            categoryid: $('#idcomp').html()
           
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            //getcompanycategorydocument()
            getcompanydetails(r); 

               
            //}
            //else {

            //    //var modal = document.getElementById("warningModal");
            //    //modal.style.display = "block";
            //    //$('#errorMsg').html(data);
            //    //$('#modaltitle').html("Registration");
            //}
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
             $('#myModalssss').hide()
            register();
        }
            


    });





}
function categorystatus(r)
{
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'management.aspx',
        type: "POST", cache: false,
        data: {
            Action: "categorystatus",
            status: r,
            categoryid: $('#Categorys').val()
           
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            getcompanycategorydocument()
          
               
            //}
            //else {

            //    //var modal = document.getElementById("warningModal");
            //    //modal.style.display = "block";
            //    //$('#errorMsg').html(data);
            //    //$('#modaltitle').html("Registration");
            //}
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
             $('#myModalssss').hide()
            register();
        }
            


    });





}
function getsupplierscategorytype()
{
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'management.aspx',
        type: "POST", cache: false,
        data: {
            Action: "getsupplierscategorytype"
           
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            AllSuppliers = JSON.parse(data);
            if (data.indexOf("Error") < 0) {
                for (var i = 0; i < AllSuppliers.length; i++) {

                    $("#CATEGORY6").append($('<option>').html(AllSuppliers[i].Category_Type).attr('value', AllSuppliers[i].Category_Type))
                
                    $("#CATEGORY7").append($('<option>').html(AllSuppliers[i].Category_Type).attr('value', AllSuppliers[i].Category_Type))
                }
            }
            else {

                //var modal = document.getElementById("warningModal");
                //modal.style.display = "block";
                //$('#errorMsg').html(data);
                //$('#modaltitle').html("Registration");
            }
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
        }
            


    });





}
function getcompanycategorydocument() {
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'Service.aspx',
        type: "POST", cache: false,
        data: {
            Action: "getcompanycategorydocument",
            Companyid: $('#Categorys').val()
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            var l = JSON.parse(data);
            if (data.indexOf("Error") < 0) {

                $('#cStatus').html(l[0].Category_Status);
                $('#Reason').html(l[0].Category_Specification);
                for (var i = 0; i < l.length;i++) {
                    var path = l[i].Document_File;
                    path = path.substr(2);
                    $("#Documentation" + i).attr("target", '_blank').attr("href", path).show();
                    $("#d" + i).show();
                    if (l[0].Category_Status == "Panding" ||l[0].Category_Status == "Pending" || l[0].Category_Status ==null) {
                        $("#accpt").show();
                        $("#diclne").show();
                    } else if (l[0].Category_Status == "Accepted") {
                        $("#reas").hide();
                        $("#accpt").hide();
                        $("#diclne").hide();
                    }
                    else if (l[0].Category_Status == "Declined")
                    {
                        $("#reas").show();
                        $("#accpt").hide();
                        $("#diclne").hide();
                    }
                }
            }
            else {

                //var modal = document.getElementById("warningModal");
                //modal.style.display = "block";
                //$('#errorMsg').html(data);
                //$('#modaltitle').html("Registration");
            }
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
        }
            


    });





}
function getcompanycategory() {
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'Service.aspx',
        type: "POST", cache: false,
        data: {
            Action: "getcompanycategory",
            Companyid: $('#idcomp').html()
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            var l = JSON.parse(data);
            if (data.indexOf("Error") < 0) {

                for (var i = 0; i < l.length; i++) {
                    $('#Categorys').append($('<option>').html(l[i].Category_Type).attr('value', l[i].Category_Id))

                }

            }
            else {

                //var modal = document.getElementById("warningModal");
                //modal.style.display = "block";
                //$('#errorMsg').html(data);
                //$('#modaltitle').html("Registration");
            }
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
        }
            


    });





}
function getcompanydetails(x) {
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'Service.aspx',
        type: "POST", cache: false,
        data: {
            Action: "getcompanydetails",
           Companyid:x
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            var l = JSON.parse(data);
            if (l.length > 0) {

                $('#Name').html(l[0].Company_Name);
                $('#Parent').html(l[0].Company_ParentCompany);
                $('#Organization').html(l[0].Company_Organization);
                $('#Year').html(l[0].Company_Year_Established);
                $('#Country').html(l[0].Company_Country);
                $('#City').html(l[0].Company_City);
                $('#Employe').html(l[0].Company_No_Employees);
                $('#Part').html(l[0].Company_Parttimehiring);
                $('#ContactPerson').html(l[0].Company_Contact_Person);
                $('#Email').html(l[0].Company_Email);
                $('#Phone').html(l[0].Company_Telephone);
                $('#License').html(l[0].Company_LicenseNo);
                $('#idcomp').html(l[0].CompanyID);
                var path = l[0].License_Document;
                path = path.substr(2);
                $("#licenses").attr("target", '_blank').attr("href", path);
                $("#licenses").attr('onclick','');
                //getcompanycategory(l[0].CompanyID)
                getcompanycategory()
            }
            else {

                //var modal = document.getElementById("warningModal");
                //modal.style.display = "block";
                //$('#errorMsg').html(data);
                //$('#modaltitle').html("Registration");
            }
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
        }
            


    });





}
function register() {
       
    $('.loading_section.loading_page').show()
    $.ajax({
        url: 'management.aspx',
        type: "POST", cache: false,
        data: {
            Action: "getsuppliers"
           
        },
        async: true,

        dataType: "json",
        success: function (data, e) {
           
            AllSuppliers = JSON.parse(data);
            if (data.indexOf("Error") < 0) {
                $('#DivAllSuppliers').html(tblAllSuppliers)
                $("#tblAllSuppliers").DataTable({
                    "pagingType": "full_numbers",
                    bStateSave: true,
                    aaData: AllSuppliers,
                    columns: [
                        { data: 'Company_Name' },
                        

                        { data: 'Company_Organization' },
                        { data: 'Company_Year_Established' },
                        
                        { data: 'Company_Country' },
                        { data: 'Company_LicenseNo' },
                        //{ data: 'Vehicle_DaysDB' },


                       
                        { data: 'Category_Type' },
                      
                       
                        { data: 'Category_Status' },


                        { data: 'Company_Telephone' },
                       { data: 'Company_Telephone' },
                      






                    ],
                    pageLength: 10,
                    paging: true,
                    bSort: true,
                    autoWidth: false,
                    bFilter: true,
                    rowCallback: function (row, data) {
                        //var path = data.License_Document;
                        //path = path.substr(2);
                        //$('td:eq(7)', row).html($("<a>").attr("target", '_blank').attr("href",path ).attr("class", "w3-bar-item  w3-hide-small").attr("style", "width:10px;height: 5px;").html('View License'));
                        //var paths = data.Document_File;
                        //paths = paths.substr(2);
                        //$('td:eq(9)', row).html($("<a>").attr("target", '_blank').attr("href", paths).attr("class", "w3-bar-item  w3-hide-small").attr("style", "width:10px;height: 5px;").html('View Category'));
                        $('td:eq(7)', row).html($("<input>").attr("onclick", "ViewDetails(" + data.CompanyID + ")").attr("class", "searchdrop bottommorelink bottommoreright w-inline-block").attr('value','View Detail').attr('type',"submit"));
                        $('td:eq(8)', row).html($("<input>").attr("onclick", "openmail('" + data.Company_Email + "')").attr("class", "bottommorelink bottommoreright  w-inline-block").attr('value','Send Mail').attr('type',"submit"));





                        //var RemBack = $('<a>').addClass('btn-custom').attr('onclick', 'RemoveBackground(' + data.Vehicle_ID + ',' + data.Vehicle_Mileage + ',"' + data.Vehicle_Make + '","' + data.Vehicle_MMCode + '","' + data.Model + '")').html("Remove Background").attr("style", "cursor: pointer");
                        //$('td:eq(11)', row).attr("style", "background-color: clear !important ;color:black !important;text-align:center;width:150px").html(RemBack)



                        //var str = data.Vehicle_VINNum;
                        //if (str != null) {
                        //    var vin = str.substring(17, 9);

                        //    $('td:eq(2)', row).html(vin);
                        //}
                        //$('td:eq(8)', row).html(formatter.format(data.Vehicle_Price));
                        //$('td:eq(9)', row).html(formattersss.format(data.Vehicle_Mileage));

                        ////var viewVehicle = $('<a>').addClass('btn-custom').attr('onclick', 'ViewVehicles(' + data.DealerId + ',"' + data.DealerName + '")').html("View Dealer Vehicles");
                        ////$('td:eq(8)', row).attr("style", "background-color: #2C9AE5 !important ;color:white !important;border-radius: 14px;font-size: 16px !important;text-align:center").html(viewVehicle)
                        //if (data.Vehicle_STATUS == "Sold") {
                        //    $('td:eq(12)', row).html($('<a>').addClass('btn btn-warning').html('Sold').attr('style', 'cursor:pointer'));
                        //}
                        //else
                        //    if (data.Vehicle_STATUS == "Dealer Removed") {
                        //        var viewDealerStats = $('<a>').addClass('btn-custom').attr('onclick', 'ViewDealerStats(' + data.Vehicle_ID + ')').html("Action Vehicle </br>Dealer Removed").attr("style", "cursor: pointer");
                        //        $('td:eq(10)', row).attr("style", "background-color: clear !important ;color:grey !important;text-align:center;width:150px").html(viewDealerStats)
                        //    }
                        //    else
                        //        if (data.Vehicle_STATUS == "Admin Removed") {
                        //            $('td:eq(12)', row).html($('<a>').addClass('btn btn-warning').html('Admin Removed').attr('style', 'cursor:pointer'));
                        //        }
                        //        else
                        //            if (data.Vehicle_STATUS == "Active") {
                        //                var viewDealerStats = $('<a>').addClass('btn-custom').attr('onclick', 'ViewDealerStats(' + data.Vehicle_ID + ')').html("Action Vehicle </br> Active").attr("style", "cursor: pointer");
                        //                $('td:eq(10)', row).attr("style", "background-color: clear !important ;color:grey !important;text-align:center;width:150px").html(viewDealerStats)
                        //            }


                        //$('td:eq(12)', row).html($('<a>').addClass('').attr('onclick', 'ViewVehicleDetail(' + data.Vehicle_ID + ',' + data.Vehicle_Mileage + ',"' + data.Vehicle_Make + '","' + data.Vehicle_MMCode + '","' + data.Model + '")').html('View Details').attr('style', 'cursor:pointer'))
                    },
                });

                $(".dataTables_filter").find('input[type="search"]').parent().addClass("w3-half")
                $(".dataTables_filter").find('input[type="search"]').addClass("input w-input");
                $(".dataTables_length").addClass("w3-row")
                $(".dataTables_length").find('select').parent().addClass("w3-half")
                $(".dataTables_length").find('select').addClass("").attr("style", '');
            }
            else {

                //var modal = document.getElementById("warningModal");
                //modal.style.display = "block";
                //$('#errorMsg').html(data);
                //$('#modaltitle').html("Registration");
            }
        },
        error: function (data, e) {


        },
        complete: function () {
            $('.loading_section.loading_page').hide()
        }
            


    });





}
function openlist() {
    $('#CATEGORY7').show()
    $('#CATEGORY6').show()
    $('#DivAllSuppliers').show()
    $('#mail').hide()
}function openmailS() {
    $('#mail').show()
    $('#DivAllSuppliers').hide()
    $('#CATEGORY7').hide()
    $('#CATEGORY6').hide()
}
function ViewDetails(compid) {
    window.location = "Service.aspx#" + compid;

}