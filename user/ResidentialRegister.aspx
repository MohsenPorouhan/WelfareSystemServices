<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResidentialRegister.aspx.cs" Inherits="user_ResidentialRegister" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cssLink" runat="Server">
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-rtl.css" />
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-metronic-rtl.css" />
    <link href="/assets/persian-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="/assets/plugins/data-tables/DT_bootstrap_rtl.css" />
    <link rel="stylesheet" type="text/css" href="/assets/plugins/bootstrap-toastr/toastr-rtl.min.css" />


</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="CPH1" runat="Server">
    <h1 id="test" runat="server"></h1>
    <div class="modal fade" id="portlet-config2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Modal title</h4>
                </div>
                <div class="modal-body">
                    Widget settings form goes here
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn blue">Save changes</button>
                    <button type="button" class="btn default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <div class="hidden" id="tbBody">
    </div>
    <div class="modal fade" id="statusDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Status Details</h4>
                </div>
                <div id="status_body" class="modal-body">
                </div>
                <div class="modal-footer">
                    <%--<button type="button" class="btn blue">Save changes</button>--%>
                    <button type="button" class="btn default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div class="modal fade" id="articleDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Modal title</h4>
                </div>
                <div class="modal-body">
                    Are you sure to delete?
                </div>
                <div class="modal-footer">
                    <form id="deleteForm">
                        <input type="hidden" id="articleId" name="articleID">
                        <input type="hidden" id="peopleId" name="peopleID">
                        <button type="submit" class="btn blue">Yes</button>
                        <button type="button" class="btn default" data-dismiss="modal">No</button>
                    </form>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <%--Modal End--%>
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div class="modal fade" id="portlet-config" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">نام نویسی اماکن اقامتی</h4>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" id="residentialForm"
                        class="form-horizontal">
                        <div class="modal-body">
                            <div id="alert-danger" class="alert alert-danger display-hide">
                                <button class="close" data-close="alert"></button>
                                پر کردن فيلدهاي ستاره دار اجباري مي باشد.
                            </div>
                            <div class="form-body">

                                <h3 class="form-section">متقاضی</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">
                                                مرکز اقامتی
                                                <span class="required">*
                                                </span>
                                            </label>
                                            <div class="col-md-9 input-icon right">
                                                <i class="fa"></i>
                                                <select name="location" id="locationId" class="location ArrivalDeparture select2me form-control">
                                                </select>
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">
                                                شهر مورد تقاضا
                                                <span class="required">*
                                                </span>
                                            </label>
                                            <div class="col-md-9 input-icon right">
                                                <i class="fa"></i>
                                                <select name="city" id="cityId" class="select2me form-control">
                                                </select>
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <!--/span-->
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                تعداد همراهان
                                                <span class="required">*
                                                </span>
                                            </label>
                                            <div class="col-md-7 input-icon right">
                                                <i class="fa"></i>
                                                <input id="guestInput" name="numberOfGuest" type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class='form-group'>
                                            <label id="label3" class='control-label col-md-4'>
                                                تاریخ ورود
                                                <span class="required">*
                                                </span>
                                            </label>
                                            <div class="col-md-8 input-icon right">
                                                <i class="fa"></i>
                                                <input type="text" id="arrival" name="arrival" class="ArrivalDeparture form-control datepicker" tabindex="3" />
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class='form-group'>
                                            <label id="label4" class='control-label col-md-4'>
                                                تاریخ خروج
                                                <span class="required">*
                                                </span>
                                            </label>

                                            <div class="col-md-8 input-icon right">
                                                <i class="fa"></i>
                                                <input type="text" id="departure" name="departure" class="ArrivalDeparture form-control datepicker" tabindex="3" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">هزینه اقامت</label>
                                            <div class="col-md-8">
                                                <input type="text" id="costId" class="form-control" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">نحوه تسویه حساب</label>
                                            <div class="col-md-9">
                                                <div class="radio-list">
                                                    <label class="radio-inline">
                                                        <input id="free" type="radio" name="paymentWay" value="1" />
                                                        رایگان
                                                    </label>
                                                    <label class="radio-inline">
                                                        <input id="payroll" type="radio" name="paymentWay" value="2" />
                                                        کسر از حقوق و مزایا
                                                    </label>
                                                    <label class="radio-inline">
                                                        <input id="cash" type="radio" name="paymentWay" value="3" />
                                                        نقدی
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <h3 id="guestH3" class="form-section hidden">مشخصات همراهان</h3>
                                <div id="guestTable" class="table-responsive hidden">
                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center">#
                                                </th>
                                                <th class="text-center">نام و نام خانوادگی
                                                </th>
                                                <th class="text-center">تاریخ تولد
                                                </th>
                                                <th class="text-center">شماره ملی
                                                </th>
                                                <th class="text-center">نسبت
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="tableBody">
                                            <tr>
                                                <td>1</td>
                                                <td>
                                                    <div class='form-group'>
                                                        <div class="col-md-12 input-icon right">
                                                            <i class="fa"></i>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>

                                                </td>
                                                <td>
                                                    <div class="col-md-12">
                                                        <input type="text" name="to" class="form-control datepicker" tabindex="3" />
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="col-md-12">
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="col-md-12">
                                                        <select name="foo" class="select2me form-control col-md-12">
                                                            <option value="1">Abc</option>
                                                            <option value="1">Abc</option>
                                                            <option value="1">This is</option>
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <%--<div class="form-actions right">--%>
                            <%--<button type="button" id="cancel" class="btn default">Cancel</button>--%>
                            <%--<button type="submit" class="btn blue"><i class="fa fa-check"></i> Save--%>
                            <%--</button>--%>
                            <%--</div>--%>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" id="residentialSubmit" class="btn blue">ارسال</button>
                            <button type="button" class="btn default" data-dismiss="modal">انصراف</button>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <!-- /.modal -->
    <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <!-- BEGIN STYLE CUSTOMIZER -->

    <!-- END STYLE CUSTOMIZER -->
    <!-- BEGIN PAGE HEADER-->
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
            <h3 class="page-title">
                <small>user inbox</small>
                Inbox
            </h3>
            <ul class="page-breadcrumb breadcrumb">
                <li class="btn-group">
                    <button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                        data-delay="1000" data-close-others="true">
                        <span>Actions
                        </span>
                        <i class="fa fa-angle-down"></i>
                    </button>
                    <ul class="dropdown-menu pull-right" role="menu">
                        <li>
                            <a href="#">Action
                            </a>
                        </li>
                        <li>
                            <a href="#">Another user.actions
                            </a>
                        </li>
                        <li>
                            <a href="#">Something else here
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">Separated link
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <i class="fa fa-home"></i>
                    <a href="index.html">Home
                    </a>
                    <i class="fa fa-angle-left"></i>
                </li>
                <li>
                    <a href="#">Extra
                    </a>
                    <i class="fa fa-angle-left"></i>
                </li>
                <li>
                    <a href="#">Inbox
                    </a>
                </li>
            </ul>
            <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
    </div>
    <!-- END PAGE HEADER-->
    <!-- BEGIN PAGE CONTENT-->
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box blue">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-reorder"></i>اماکن اقامتی
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                        <a href="#portlet-config2" data-toggle="modal" class="config"></a>
                        <a href="javascript:;" class="reload"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="table-toolbar">
                        <div class="btn-group">
                            <a href="#portlet-config" data-toggle="modal" id="residentialAdd" class="btn green">ایجاد کردن<i class="fa fa-plus"></i>
                            </a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="sample11">
                            <thead>
                                <tr>
                                    <th class="table-checkbox">
                                        <input type="checkbox" class="group-checkable" data-set="#sample11 .checkboxes" />
                                    </th>
                                    <th>مرکز اقامتی
                                    </th>
                                    <th>شهر مورد تقاضا
                                    </th>
                                    <th>تعداد همراهان
                                    </th>
                                    <th>تاریخ ورود
                                    </th>
                                    <th>تاریخ خروج
                                    </th>
                                    <th>وضعیت استفاده
                                    </th>
                                    <th>ویرایش
                                    </th>
                                </tr>
                            </thead>
                            <tbody id="usageStatusTable">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="htmlHead" runat="Server">
    <script src="/assets/scripts/custom/form-samples.js"></script>
    <script type="text/javascript" src="/assets/plugins/select2/select2.min.js"></script>
    <script src="/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="/assets/persian-datepicker/jquery.ui.datepicker-cc.all.min.js" type="text/javascript"></script>
    <%--<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>--%>
    <%--<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.js"></script>--%>
    <script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/assets/scripts/custom/components-form-tools.js"></script>


    <script type="text/javascript" src="/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="/assets/plugins/data-tables/DT_bootstrap.js"></script>

    <script src="/assets/plugins/bootstrap-toastr/toastr.min.js"></script>
    <script src="/assets/scripts/custom/ui-toastr.js"></script>

    <script>
        jQuery(document).ready(function () {
            var dt;
            function show_table() {
                $('#sample11').dataTable({
                    "aoColumns": [
                      { "bSortable": false },
                      null,
                      { "bSortable": false, "sType": "text" },
                      null,
                      { "bSortable": false },
                      { "bSortable": false },
                      null,
                      null
                    ],
                    "aLengthMenu": [
                        [5, 15, 20, -1],
                        [5, 15, 20, "All"] // change per page values here
                    ],
                    // set the initial value
                    "iDisplayLength": 5,
                    "sPaginationType": "bootstrap",
                    "oLanguage": {
                        "sLengthMenu": "_MENU_ records",
                        "oPaginate": {
                            "sPrevious": "Prev",
                            "sNext": "Next"
                        }
                    },
                    "aoColumnDefs": [
                        { 'bSortable': false, 'aTargets': [0] },
                        { "bSearchable": false, "aTargets": [0] }
                    ],
                    "fnDrawCallback": function (oSettings) {
                        $('.updateResidential').on('click', function (index) {
                            residentialRegisterId = $(this).attr('residentialRegisterId');
                            //alert(residentialRegisterId)
                            $.ajax({
                                url: 'ResidentialRegister.aspx/CheckPossibilityChanges',
                                method: 'post',
                                contentType: "application/json",
                                data: "{'residentialRegisterId':'" + residentialRegisterId + "'}",
                                dataType: "json",
                                success: function (data) {
                                    //alert(data.d[0].LocationName);
                                    //alert("successssss");
                                    if (data.d == 1) {
                                        toastr.options.timeOut = "6000";
                                        toastr.options.positionClass = "toast-top-center";
                                        toastr.success("ویرایش امکان پذیر است");
                                    } else {
                                        toastr.options.timeOut = "6000";
                                        toastr.options.positionClass = "toast-top-center";
                                        toastr.success("ویرایش امکان پذیر نیست");
                                    }
                                },
                                error: function (error, a, b) {
                                    //alert("errorrrrrrrrrr");
                                    alert(error);
                                    //alert(a);
                                    //alert(b);
                                }
                            });
                        });
                    }

                });
            }
            function load_sumarry_status() {
                $.ajax({
                    url: 'ResidentialRegister.aspx/usageStatus',
                    method: 'post',
                    contentType: "application/json",
                    //data: "{'username':'" + username + "','password':'" + password + "'}",
                    dataType: "json",
                    success: function (data) {
                        //alert(data.d[0].LocationName);
                        //alert("successssss");
                        //alert(data);
                        $("#usageStatusTable").html("");
                        var message;
                        $(data.d).each(function (a, b) {
                            if (b.Member7 == 0)
                                message = "عدم استفاده";
                            else
                                message = 'این مکان' + b.Member7 + 'مرتبه استفاده شده است';
                            $("#usageStatusTable").append('<tr class="odd gradeX"><td><input type="checkbox" class="checkboxes" value="1"/></td><td>' + b.Member2 + '</td><td>' + b.Member3 + '</td><td>' + b.Member4 + '</td><td>' + b.Member5 + '</td><td>' + b.Member6 + '</td><td>' + message + '</td><td><a href="#" residentialRegisterId="' + b.Member9 + '" class="updateResidential">ویرایش</a></td></tr>');
                        });

                        show_table();
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
            load_sumarry_status();
            $(".datepicker").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'yy/mm/dd'
            });

            var i = 1;
            var template = jQuery.validator.format($.trim($("#addChild").html()));
            $("#guestInput").blur(function () {
                i = 1;
                $("#tableBody").html("");
                $("#guestH3").addClass("hidden");
                $("#guestTable").addClass("hidden");
                if ($("#guestInput").val() > 0 && $("#guestInput").val() < 11) {
                    $("#guestH3").removeClass("hidden");
                    $("#guestTable").removeClass("hidden");
                    debugger;
                    for (var j = 1; j <= $("#guestInput").val() ; j++) {

                        $(template(i++)).appendTo("#tableBody");
                        $('.netFullName').each(function () {
                            $(this).rules("add", {
                                required: true,
                                messages: {
                                    required: "پرکردن این فیلد الزامی می باشد",
                                }
                            });
                        });
                        $('.netBirthDate').each(function () {
                            $(this).rules("add", {
                                required: true,
                                messages: {
                                    required: "پرکردن این فیلد الزامی می باشد",
                                }
                            });
                        });
                        $('.netNationalNumber').each(function () {
                            $(this).rules("add", {
                                required: true,
                                messages: {
                                    required: "پرکردن این فیلد الزامی می باشد",
                                }
                            });
                        });
                        $('.netRelative').each(function () {
                            $(this).rules("add", {
                                required: true,
                                messages: {
                                    required: "پرکردن این فیلد الزامی می باشد",
                                }
                            });
                        });

                        //$("#tableBody").append(' <tr><td>' + i + '</td><td><div class="col-md-12"><input name="fullName' + i + '" id="fullName' + i + '" type="text" class="form-control"></div></td><td><div class="col-md-12"><input type="text" name="birthDate' + i + '" id="birthDate' + i + '" class="form-control datepicker" tabindex="3" /></div></td><td><div class="col-md-12"><input type="text" name="nationalNumber' + i + '" id="nationalNumber' + i + '" class="form-control"></div></td><td><div class="col-md-12"><select name="relative' + i + '" id="relative' + i + '" class="select2me relative form-control col-md-12"></select></div></td></tr>');
                    }

                    $(".datepicker").datepicker({
                        changeMonth: true,
                        changeYear: true,
                        dateFormat: 'yy/mm/dd'
                    });

                    $.ajax({
                        url: 'ResidentialRegister.aspx/relativeList',
                        method: 'post',
                        contentType: "application/json",
                        //data: "{'username':'" + username + "','password':'" + password + "'}",
                        dataType: "json",
                        success: function (data) {
                            //alert(data.d[0].LocationName);
                            //alert("successssss");
                            //alert(data.d.Email);
                            $(".relative").append('<option value=""></option>');
                            $(data.d).each(function (a, b) {
                                $(".relative").append('<option value="' + b.Id + '">' + b.Name + '</option>');
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
            });


            $("#residentialAdd").click(function () {
                //begin of fix bug
                //The dynamically validation for guest inputs have an error so after a submit it will go right
                $("#residentialForm").submit();
                //Begin of reset form validation
                $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
                $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
                $(".alert-danger").hide();
                $('.form-group').removeClass('has-error');
                $('.form-group').removeClass('has-success');
                //End of reset form validation
                //end of fix bug
                $.ajax({
                    url: 'ResidentialRegister.aspx/locationList',
                    method: 'post',
                    contentType: "application/json",
                    //data: "{'locationId':'" + $(".location option:selected").val() + "'}",
                    dataType: "json",
                    success: function (data) {
                        //alert(data.d[0].LocationName);
                        //alert("successssss");
                        //alert(data.d.Email);
                        $("#locationId").append('<option value=""></option>');
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

                $("#locationId").change(function () {
                    //alert($(".location option:selected").val())
                    $("#cityId").html("");
                    $("#s2id_cityId a .select2-chosen").html("");
                    //alert($(".location option:selected").val())
                    $.ajax({
                        url: 'ResidentialRegister.aspx/cityList',
                        method: 'post',
                        contentType: "application/json",
                        data: "{'locationId':'" + $(".location option:selected").val() + "'}",
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
                });
            });

            $(".ArrivalDeparture").blur(function () {

                $(document).click(function () {

                    if ($("#arrival").val() != "" && $("#departure").val() != "" && $(".location option:selected").val() != "") {

                        console.log($("#arrival").val());
                        console.log($("#departure").val());

                        $.ajax({
                            url: 'ResidentialRegister.aspx/costAndPayment',
                            method: 'post',
                            contentType: "application/json",
                            data: "{'locationId':'" + $(".location option:selected").val() + "','arrivalDate':'" + $("#arrival").val() + "','departureDate':'" + $("#departure").val() + "'}",
                            dataType: "json",
                            success: function (data) {
                                //alert(data.d[0].LocationName);
                                //alert("successssss");
                                //alert(data.d.Email);
                                $("#costId").val(data.d[1]);
                                if (data.d[2] == 1 || data.d[4] == 2) {
                                    $("#free").removeAttr("disabled", "disabled");
                                    $("#free").attr("checked", "checked");
                                    $("#payroll").attr("disabled", "disabled");
                                    $("#cash").attr("disabled", "disabled");
                                } else {
                                    $("#payroll").removeAttr("disabled", "disabled");
                                    $("#cash").removeAttr("disabled", "disabled");

                                    $("#free").removeAttr("checked", "checked");
                                    $("#free").attr("disabled", "disabled");
                                }
                                //alert(data);
                            },
                            error: function (error, a, b) {
                                alert("errorrrrrrrrrr");
                                //alert(error);
                                //alert(a);
                                //alert(b);
                            }
                        });
                    }
                });
            })


            $("#residentialForm").submit(function (e) {
                //            var postdata2 = $(this).serializeArray();
                debugger;
                var form = $('#residentialForm');
                var error2 = $('.alert-danger', form);
                form.validate({
                    //console.log($('#registerform').serializeArray());
                    errorElement: 'span', //default input error message container
                    errorClass: 'help-block', // default input error message class
                    focusInvalid: false, // do not focus the last invalid input
                    ignore: "",
                    rules: {
                        numberOfGuest: {
                            required: true,
                            range: [1, 10]
                        },
                        location: {
                            required: true
                        },
                        city: {
                            required: true
                        },
                        arrival: {
                            required: true
                        },
                        departure: {
                            required: true
                        },
                    },
                    messages: {
                        numberOfGuest: {
                            required: "پر کردن این فیلد الزامی می باشد",
                            range: "حداقل مقدار 1 و حداکثر مقدار 10 مجاز می باشد"
                        },
                        location: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
                        city: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
                        arrival: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
                        departure: {
                            required: "پر کردن این فیلد الزامی می باشد"
                        },
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
                    $("#residentialSubmit").attr("disabled", "disabled");
                    var btn = $("#residentialSubmit");
                    btn.button('loading');
                    console.log("setup");
                    var postdata = new FormData(this);
                    console.log(postdata);

                    var fullName = [];
                    for (var k = 1; k <= $("#guestInput").val() ; k++) {
                        fullName[k] = $("#fullName" + k).val();
                    }

                    var birthDate = [];
                    for (var kk = 1; kk <= $("#guestInput").val() ; kk++) {
                        birthDate[kk] = $("#birthDate" + kk).val();
                    }

                    var nationalNumber = [];
                    for (var kkk = 1; kkk <= $("#guestInput").val() ; kkk++) {
                        nationalNumber[kkk] = $("#nationalNumber" + kkk).val();
                    }

                    var relative = [];
                    for (var kkk = 1; kkk <= $("#guestInput").val() ; kkk++) {
                        relative[kkk] = $("#relative" + kkk).val();
                    }
                    $.ajax({
                        url: 'ResidentialRegister.aspx/locationRegister',
                        method: 'post',
                        contentType: "application/json",
                        data: JSON.stringify({
                            'fullName': fullName, 'birthDate': birthDate, 'nationalNumber': nationalNumber, 'relative': relative,
                            'locationId': $(".location option:selected").val(), 'arrivalDate': $("#arrival").val(), 'departureDate': $("#departure").val(),
                            'cityId': $("#cityId").val(), 'numberOfGuest': $("#guestInput").val(), 'locationCost': $("#costId").val(),
                            'paymentWay': $("input[name='paymentWay']:checked").val()
                        }),
                        dataType: "json",
                        success: function (data) {
                            alert(data.d);
                            $("#portlet-config").modal("hide")
                            $("#sample11").DataTable().fnDestroy();
                            load_sumarry_status();
                            //$("#sample11").html(jQuery(data).find('#sample_1').html());
                        },
                        error: function (error, a, b) {
                            alert("errorrrrrrrrrr");
                            //alert(error);
                            //alert(a);
                            //alert(b);
                        }
                    }).always(function () {
                        $("#articleSubmit").removeAttr("disabled", "disabled")
                        $("#residentialSubmit").button('reset');
                        $(btn).removeClass('disabled');
                    });
                    e.preventDefault(e);
                }
            });

            $('#portlet-config').on('hidden.bs.modal', function () {
                // debugger;
                $("#payroll").removeAttr("disabled", "disabled");
                $("#cash").removeAttr("disabled", "disabled");
                $("#free").removeAttr("disabled", "disabled");

                $("#payroll").removeAttr("checked", "checked");
                $("#cash").removeAttr("checked", "checked");
                $("#free").removeAttr("checked", "checked");


                $("#residentialForm")[0].reset();
                $("#locationId").html("");
                $("#cityId").html("");
                $(".select2-chosen").html("");
                $("#tableBody").html("");
                $("#guestH3").addClass("hidden");
                $("#guestTable").addClass("hidden");
                //Begin of reset form validation
                $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
                $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
                $(".alert-danger").hide();
                $('.form-group').removeClass('has-error');
                $('.form-group').removeClass('has-success');
                //End of reset form validation
            });
        });
    </script>
    <script type="text/html" id="addChild">
        <tr>
            <td>{0}</td>
            <td>
                <div class="form-group">
                    <div class="col-md-12 input-icon right">
                        <i class="fa"></i>
                        <input name="fullName{0}" id="fullName{0}" type="text" class="form-control netFullName">
                    </div>
                </div>
            </td>
            <td>
                <div class="form-group">
                    <div class="col-md-12 input-icon right">
                        <i class="fa"></i>
                        <input type="text" name="birthDate{0}" id="birthDate{0}" class="form-control datepicker netBirthDate" tabindex="3" />
                    </div>
                </div>
            </td>
            <td>
                <div class="form-group">
                    <div class="col-md-12 input-icon right">
                        <i class="fa"></i>
                        <input type="text" name="nationalNumber{0}" id="nationalNumber{0}" class="form-control netNationalNumber">
                    </div>
                </div>
            </td>
            <td>
                <div class="form-group">
                    <div class="col-md-12 input-icon right">
                        <i class="fa"></i>
                        <select name="relative{0}" id="relative{0}" class="select2me relative form-control col-md-12 netRelative"></select>
                    </div>
                </div>
            </td>
        </tr>
    </script>
</asp:Content>

