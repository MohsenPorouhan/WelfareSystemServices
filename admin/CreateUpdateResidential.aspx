<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUpdateResidential.aspx.cs" Inherits="admin_CreateUpdateResidential" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLink" runat="Server">
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-rtl.css" />
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-metronic-rtl.css" />
    <link rel="stylesheet" type="text/css" href="/assets/plugins/bootstrap-toastr/toastr-rtl.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="Server">
    <!-- BEGIN PAGE HEADER-->
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
            <%--<h3 class="page-title">
					<small>form layouts</small>
					Form Layouts</h3>--%>
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <i class="fa fa-home"></i>
                    <a href="index.html">Home
                    </a>
                    <i class="fa fa-angle-left"></i>
                </li>
                <li>
                    <a href="#">link1
                    </a>
                    <i class="fa fa-angle-left"></i>
                </li>
                <li>
                    <a href="#">link1
                    </a>
                </li>
            </ul>
            <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
    </div>
    <!-- END PAGE HEADER-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-reorder"></i>Form Actions
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body form">
            <!-- BEGIN FORM-->
            <form action="#" id="formSubmit" class="form-horizontal">
                <div class="form-body">
                    <div class="row">
                        <!--/span-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">انتخاب مرکز اقامتی</label>
                                <div class="col-md-9">
                                    <select name="foo" id="locationId" class="location select2me form-control">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!--/span-->
                    </div>
                    <h3 class="form-section">اطلاعات مربوط به مرکز اقامتی انتخاب شده</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    نام مرکز اقامتی  
                                    <span class="required">*
                                    </span>
                                </label>
                                <div class="col-md-9 input-icon right">
                                    <i class="fa"></i>
                                    <input type="text" id="ResidentialNameId" name="ResidentialName" class="form-control" placeholder="نام مرکز اقامتی">
                                </div>
                            </div>
                        </div>
                        <!--/span-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    نام شهر
                                    <span class="required">*
                                    </span>
                                </label>
                                <div class="col-md-9 input-icon right">
                                    <i class="fa"></i>
                                    <select id="cityId" name="city" class="city select2me form-control">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!--/span-->
                    </div>
                    <!--/row-->
                    <!--/row-->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    نام استان
                                    <span class="required">*
                                    </span>
                                </label>
                                <div class="col-md-9 input-icon right">
                                    <i class="fa"></i>
                                    <select name="province" id="provinceId" class="provine select2me form-control">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    نوع
                                    <span class="required">*
                                    </span>
                                </label>
                                <div class="col-md-9 input-icon right">

                                    <div class="radio-list">

                                        <label class="radio-inline">
                                            <span id="cashId">
                                                <input type="radio" name="type" value="1" />
                                            </span>
                                            غیر رایگان
                                        </label>
                                        <label class="radio-inline">
                                            <span id="freeId">
                                                <input type="radio" name="type" value="2" />
                                            </span>
                                            رایگان
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/span-->
                    </div>
                    <!--/row-->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    هزینه اجاره
                                    <span class="required">*
                                    </span>
                                </label>
                                <div class="col-md-9 input-icon right">
                                    <i class="fa"></i>
                                    <input type="text" id="rentCostId" name="rentCost" class="form-control" placeholder="هزینه اجاره">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <div class="form-actions fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" id="btnSubmit" class="btn green">ارسال</button>
                                <button type="reset" id="btnReset" class="btn default">انصراف</button>
                            </div>
                        </div>
                        <div class="col-md-6">
                        </div>
                    </div>
                </div>
            </form>
            <!-- END FORM-->
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="htmlHead" runat="Server">
    <script type="text/javascript" src="/assets/plugins/select2/select2.min.js"></script>
    <script src="/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/bootstrap-toastr/toastr.min.js"></script>
    <script src="/assets/scripts/custom/ui-toastr.js"></script>
    <script>
        jQuery(document).ready(function () {

            function locationList() {
                $.ajax({
                    url: '/admin/CreateUpdateResidential.aspx/locationList',
                    method: 'post',
                    contentType: "application/json",
                    //data: "{'username':'" + username + "','password':'" + password + "'}",
                    dataType: "json",
                    success: function (data) {
                        //alert(data.d[0].LocationName);
                        //alert("successssss");
                        //alert(data.d.Email);
                        $("#locationId").append('<option value="0"></option>');
                        $(data.d).each(function (a, b) {
                            $("#locationId").append('<option value="' + b.LocationId + '">' + b.LocationName + '</option>');
                        });

                        //alert(data);
                    },
                    error: function (error, a, b) {
                        //alert("errorrrrrrrrrr");
                        alert(error);
                        //alert(a);
                        //alert(b);
                    }
                });
            }

            locationList();

            $.ajax({
                url: '/admin/CreateUpdateResidential.aspx/cityListt',
                method: 'post',
                contentType: "application/json",
                //data: "{'locationId':'" + $(".location option:selected").val() + "'}",
                dataType: "json",
                success: function (data) {
                    //alert(data.d[0].LocationName);
                    //alert("successssss");
                    //alert(data.d.Email);
                    $("#cityId").append('<option value=""></option>');
                    $(data.d).each(function (a, b) {
                        $("#cityId").append('<option value="' + b.CityId + '">' + b.CityName + '</option>');
                    });

                    //alert(data);
                },
                error: function (error, a, b) {
                    //alert("errorrrrrrrrrr");
                    alert(error);
                    //alert(a);
                    //alert(b);
                }
            });

            $.ajax({
                url: '/admin/CreateUpdateResidential.aspx/provinceList',
                method: 'post',
                contentType: "application/json",
                //data: "{'locationId':'" + $(".location option:selected").val() + "'}",
                dataType: "json",
                success: function (data) {
                    //alert(data.d[0].LocationName);
                    //alert("successssss");
                    //alert(data.d.Email);
                    $("#provinceId").append('<option value=""></option>');
                    $(data.d).each(function (a, b) {
                        $("#provinceId").append('<option value="' + b.Id + '">' + b.Name + '</option>');
                    });

                    //alert(data);
                },
                error: function (error, a, b) {
                    //alert("errorrrrrrrrrr");
                    alert(error);
                    //alert(a);
                    //alert(b);
                }
            });

            $("#locationId").change(function () {

                //alert($(".location option:selected").val())
                //$("#cityId").html("");
                //$("#s2id_cityId a .select2-chosen").html("");

                $.ajax({
                    url: 'CreateUpdateResidential.aspx/locationInfo',
                    method: 'post',
                    contentType: "application/json",
                    data: "{'locationId':'" + $(".location option:selected").val() + "'}",
                    dataType: "json",
                    success: function (data) {
                        //alert(data.d[0].LocationName);
                        //alert(data.d);
                        $("#ResidentialNameId").val(data.d.LocationName);
                        $("#rentCostId").val(data.d.Cost);
                        //alert(data.d.LocationStatusEntity.Id)
                        if (data.d.LocationStatusEntity.Id == 1) {
                            $("#freeId .radio span").removeClass("checked");
                            $("#cashId .radio span").addClass("checked");

                            $("#freeId .radio span input").removeAttr("checked", "checked");
                            $("#cashId .radio span input").attr("checked", "checked");

                        } else {
                            $("#cashId .radio span").removeClass("checked");
                            $("#freeId .radio span").addClass("checked");

                            $("#cashId .radio span input").removeAttr("checked", "checked");
                            $("#freeId .radio span input").attr("checked", "checked");
                        }
                        //$('#cityId option[value=' + data.d.CityEntity.CityId + ']').attr('selected', 'selected');
                        $("#cityId").select2("val", data.d.CityEntity.CityId);
                        $("#provinceId").select2("val", data.d.CityEntity.Province.Id);

                        //$("#cityId").append('<option value=""></option>');
                        //$(data.d).each(function (a, b) {
                        //    $("#cityId").append('<option value="' + b.CityId + '">' + b.CityName + '</option>');
                        //});
                    },
                    error: function (error, a, b) {
                        //alert("errorrrrrrrrrr");
                        alert(error);
                        //alert(a);
                        //alert(b);
                    }
                });
            });

            $("#btnReset").click(function () {
                //$("#formSubmit")[0].reset();
                $("#cashId .radio span").removeClass("checked");
                $("#freeId .radio span").removeClass("checked");
                //$('#locationId').prop('selectedIndex', "");
                $("#locationId").select2("val", "");
                $("#cityId").select2("val", "");
                $("#provinceId").select2("val", "");

            });

            $("#formSubmit").submit(function (e) {
                //            var postdata2 = $(this).serializeArray();
                debugger;
                var form = $('#formSubmit');
                var error2 = $('.alert-danger', form);
                form.validate({
                    //console.log($('#registerform').serializeArray());
                    errorElement: 'span', //default input error message container
                    errorClass: 'help-block', // default input error message class
                    focusInvalid: false, // do not focus the last invalid input
                    ignore: "",
                    rules: {
                        ResidentialName: {
                            required: true
                        },
                        city: {
                            required: true
                        },
                        province: {
                            required: true
                        },
                        type: {
                            required: true
                        },
                        rentCost: {
                            required: true
                        }
                    },
                    messages: {
                        ResidentialName: {
                            required: "پر کردن این فیلد الزامی می باشد",
                        },
                        city: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
                        province: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
                        type: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
                        rentCost: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        }
                    },
                    invalidHandler: function (event, validator) { //display error alert on form submit
                        //                    success2.hide();
                        error2.show();
                        //                    App.scrollTo(error2, -200);
                    },
                    errorPlacement: function (error, element) { // render error placement for each input type
                        var icon = $(element).parent('.input-icon').children('i');
                        icon.removeClass('fa-check').addClass("fa-warning");
                        icon.attr("data-original-title", error.text()).tooltip();
                    },
                    highlight: function (element) { // hightlight error inputs
                        $(element)
                                .closest('.form-group').addClass('has-error'); // set error class to the control group
                    },

                    unhighlight: function (element) { // revert the change done by hightlight

                    },

                    success: function (label, element) {
                        var icon = $(element).parent('.input-icon').children('i');
                        $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                        icon.removeClass("fa-warning").addClass("fa-check");
                    },

                    submitHandler: function (form) {
                        //                    success2.show();
                        //                    error2.hide();
                    }
                })
                if (form.valid() == false) {
                    //                        //console.log($('#registerform').serializeArray());
                    return false;
                } else {
                    //                        $("#articleSubmit").addClass('disabled');
                    $("#btnSubmit").attr("disabled", "disabled");
                    var btn = $("#btnSubmit");
                    btn.button('loading');
                    console.log("setup");
                    var postdata = new FormData(this);
                    console.log(postdata);

                    $.ajax({
                        url: '/admin/CreateUpdateResidential.aspx/insertUpdate',
                        method: 'post',
                        contentType: "application/json",
                        data: JSON.stringify({
                            'locationId': $(".location option:selected").val(), 'ResidentialName': $("#ResidentialNameId").val(), 'cityId': $("#cityId").val(),
                            'locationStatusId': $("input[name='type']:checked").val(), 'rentCost': $("#rentCostId").val()
                        }),
                        dataType: "json",
                        success: function (data) {
                            $("#locationId").html("");
                            locationList();
                            if (data.d == 0) {
                                toastr.options.timeOut = "8000";
                                toastr.options.positionClass = "toast-top-center";
                                toastr.success("با موفقیت انجام شد.");
                            }
                            $("#formSubmit")[0].reset();
                            $("#cashId .radio span").removeClass("checked");
                            $("#freeId .radio span").removeClass("checked");
                            $("#locationId").select2("val", "");
                            $("#cityId").select2("val", "");
                            $("#provinceId").select2("val", "");
                            //Begin of reset form validation
                            $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
                            $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
                            $(".alert-danger").hide();
                            $('.form-group').removeClass('has-error');
                            $('.form-group').removeClass('has-success');
                            //End of reset form validation
                            //$("#sample11").html(jQuery(data).find('#sample_1').html());
                        },
                        error: function (error, a, b) {
                            alert("errorrrrrrrrrr");
                            //alert(error);
                            //alert(a);
                            //alert(b);
                        }
                    }).always(function () {
                        $("#btnSubmit").removeAttr("disabled", "disabled")
                        $("#btnSubmit").button('reset');
                        $(btn).removeClass('disabled');
                    });
                    e.preventDefault(e);
                }
            });

        });
    </script>
</asp:Content>

