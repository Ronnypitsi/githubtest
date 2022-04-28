$(document).ready(function () {
    $('#register').hide();
    $('.files').hide();
    $('#detailss').hide();
    $('#Category').hide();
    $('#Financial').hide();
    $('#activity').hide();
    $('.loading_section.loading_page').hide()
});
function categorystatus() {
    $('.loading_section.loading_page').show()

    $.ajax({
        url: 'Suppliers.aspx',
        type: "POST", cache: false,
        data: {
            Action: "status",
            License: $('#License').val(),
            Category: $('#Categorys').val()

        },
        async: true,

        dataType: "json",
        success: function (data, e) {

            AllSuppliers = JSON.parse(data);
            if (data.indexOf("Error") < 0) {
                $('#License_val').val(AllSuppliers[0].Company_LicenseNo)
                $('#Company_val').val(AllSuppliers[0].Company_Name)
                $('#Year_val').val(AllSuppliers[0].Company_Year_Established)
                $('#Status_val').val(AllSuppliers[0].Category_Status)
                $('#Category_val').val(AllSuppliers[0].Category_Type)
                $('#detailss').show();
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
function openregister() {
        $('.masthead').hide()
        $('#register').show()
}
var processBusy = false;
function register() {
       
        if(!processBusy) {
            processBusy = true;
           

            var data = new FormData();
            data.append("processBusy", processBusy);
            data.append("NameCompany", $("#NameCompany").val());
            data.append("ParentCompany", $("#ParentCompany").val());
            data.append("YearEstablished", $("#YearEstablished").val());
            data.append("LicenseNo", $("#LicenseNo").val());
            data.append("Oraganisation", $("input[name=Oraganisation]:checked").val());
            data.append("contactperson", $("#contactperson").val());
            data.append("phone", $("#phone").val());
            data.append("fax", $("#fax").val());
            data.append("email", $("#email").val());
            data.append("Companystreet", $("#Companystreet").val());
            data.append("CompanyCity", $("#CompanyCity").val());
            data.append("CompanyCountry", $("#CompanyCountry").val());
            data.append("PostBoxNo", $("#PostBoxNo").val());



            var OfficeFurniture = document.getElementById('OfficeFurniture')
            if (OfficeFurniture.checked) {
                var fileUploadr = $("#OfficeFurnitureF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#OfficeFurnitureF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "OfficeFurniture");
                    data.append("OfficeFurniture", $("#OfficeFurniture").val());
                }
            }
           
            var Consultant = document.getElementById('Consultant')
            if (Consultant.checked) {
                var fileUploadr = $("#ConsultantF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#ConsultantF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "Consultant");
                    data.append("Consultant", $("#Consultant").val());
                    data.append("description", $("#description").val());
                }
            }
           
            var PromotionalMaterial = document.getElementById('PromotionalMaterial')
            if (PromotionalMaterial.checked) {
                var fileUploadr = $("#PromotionalMaterialF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#PromotionalMaterialF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "PromotionalMaterial");
                    data.append("PromotionalMaterial", $("#PromotionalMaterial").val());
                }
            }
           
            var ComputerandAccessories = document.getElementById('ComputerandAccessories')
            if (ComputerandAccessories.checked) {
                var fileUploadr = $("#ComputerandAccessoriesF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#ComputerandAccessoriesF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "ComputerandAccessories");
                    data.append("ComputerandAccessories", $("#ComputerandAccessories").val());
                }
            }
           
            var AdvertisingMaterial = document.getElementById('AdvertisingMaterial')
            if (AdvertisingMaterial.checked) {
                var fileUploadr = $("#AdvertisingMaterialF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#AdvertisingMaterialF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "AdvertisingMaterial");
                    data.append("AdvertisingMaterial", $("#AdvertisingMaterial").val());
                }
            }
           
            var PrintingEquipment = document.getElementById('PrintingEquipment')
            if (PrintingEquipment.checked) {
                var fileUploadr = $("#PrintingEquipmentF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#PrintingEquipmentF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "PrintingEquipment");
                    data.append("PrintingEquipment", $("#PrintingEquipment").val());
                }
            }
           
            var NetworkingService = document.getElementById('NetworkingService')
            if (NetworkingService.checked) {
                var fileUploadr = $("#NetworkingServiceF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#NetworkingServiceF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "NetworkingService");
                    data.append("NetworkingService", $("#NetworkingService").val());
                }
            }
           
            var ConferenceFacilities = document.getElementById('ConferenceFacilities')
            if (ConferenceFacilities.checked) {
                var fileUploadr = $("#ConferenceFacilitiesF").get(0);
                var files1 = fileUploadr.files;
                if (files1.length == 1) {
                    var fileUpload = $("#ConferenceFacilitiesF").get(0);
                    var file = fileUpload.files;

                    data.append(file[0].name, file[0]);
                    data.append(file[0].name + "filetype", "ConferenceFacilities");
                    data.append("ConferenceFacilities", $("#ConferenceFacilities").val());
                }
            }
            //var NameofCompany = document.getElementById('NameofCompany')
            //if (NameofCompany.value!="") {
            //    var fileUploadr = $("#NameofCompanyF").get(0);
            //    var files1 = fileUploadr.files;
            //    if (files1.length == 1) {
            //        var fileUpload = $("#NameofCompanyF").get(0);
            //        var file = fileUpload.files;

            //        data.append(file[0].name, file[0]);
            //        data.append(file[0].name + "filetype", "NameofCompany");
            //        data.append("NameofCompany", $("#NameofCompany").val());
            //    }
            //}
           
         
            //data.append("NameofCompany", $("#NameofCompany").val());

            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            

           

            //data.append("websites", "");
            //data.append("comments", "");

            data.append("CompanyState", $("#CompanyState").val());
            data.append("fulltimeemployees", $("#fulltimeemployees").val());
            data.append("parttimeemployees", $("#parttimeemployees").val());
            //data.append("NameofCompany", $("#NameofCompany").val());
            //data.append("category", $("input[name=category]:checked").val());

            

            //alert($("input[name=condition]:checked").val());
            var fileUploadr = $("#LICENSE").get(0);
            var files1 = fileUploadr.files;
            if (files1.length == 1) {
                var fileUpload = $("#LICENSE").get(0);
                var file = fileUpload.files;

                data.append(file[0].name, file[0]);
                data.append(file[0].name + "filetype", "LICENSE");

             
                // $("#divLoadingTable").show();
                $('.loading_section.loading_page').show();
                var options = {};
                options.url = "addsuppliers.ashx";
                options.type = "POST";
                options.data = data;
                options.contentType = false;
                options.processData = false;
                options.success = function (result) {

                    if (result.indexOf("Successfully") > -1) {
                        alert(result);
                        first();
                        //$(".se-pre-con").fadeOut('slow');
                        //var modal = document.getElementById("warningModal");
                        //modal.style.display = "block";
                        //$('#errorMsg').html(result);
                        //$('#modaltitle').html("Upload Status");

                        processBusy = false;

                        //sendsms();
                         location.reload(true);

                    }
                    else {

                        var modal = document.getElementById("warningModal");
                        modal.style.display = "block";
                        alert(result);
                        $('#modaltitle').html("Upload Status");
                    }
                };
                options.error = function (err) { alert(err.statusText); processBusy = false; };
                options.complete = function (err) { $('.loading_section.loading_page').hide(); processBusy = false; location.reload(true);};
                $.ajax(options);
            }
            else {
                //alert("Please drag or select the 9 images");
                alert("Please add licene document")
                //$("#warningModal").modal('show');
                //$("#image_preview").html("")
                processBusy = false;
            }
        }
    else { processBusy = false; }

    
}
function openlogin() {
        $('.masthead').show()
        $('#register').hide()
}