<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResidentialResult.aspx.cs" Inherits="admin_ResidentialResult" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cssLink" runat="Server">
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-rtl.css" />
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-metronic-rtl.css" />
    <link href="/assets/persian-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="/assets/plugins/data-tables/DT_bootstrap_rtl.css" />


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
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">نتیجه درخواست</h4>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label col-md-12">
                                                نتیجه درخواست اسکان در اماکن اقامتی:
                                                <span class="required">*
                                                </span>
                                            </label>
                                            <div class="col-md-12 input-icon right">
                                                <i class="fa"></i>
                                                <select name="requestStatus" id="requestStatus" class="requestStatus select2me form-control">
                                                    <option></option>
                                                    <option value="1">پذیرش اسکان</option>
                                                    <option value="2">پذیرش رزرو</option>
                                                    <option value="3">عدم پذیرش</option>
                                                </select>
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
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
                        <i class="fa fa-reorder"></i>نتیجه درخواست اسکان در اماکن اقامتی
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                        <a href="#" data-toggle="modal" class="config"></a>
                        <a href="javascript:;" class="reload"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="sample11">
                            <thead>
                                <tr>
                                    <th class="table-checkbox">
                                        <input type="checkbox" class="group-checkable" data-set="#sample11 .checkboxes" />
                                    </th>
                                    <th>نام و نام خانوادگی
                                    </th>
                                    <th class="rri">ResidentialRegisterId
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
                                    <th>وضعیت درخواست
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

    <script>
        jQuery(document).ready(function () {
            var dt;
            var residentialRegisterId;
            function show_table() {
                dt = $('#sample11').dataTable({
                    "aoColumns": [
                      { "bSortable": false },
                      null,
                      { "bSortable": false, "sType": "text" },
                      null,
                      { "bSortable": false },
                      { "bSortable": false },
                      null,
                      null,
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
                        $('.requestStatusId').on('click', function (index) {
                            residentialRegisterId = $(this).attr('residentialRegisterId');
                            //alert(residentialRegisterId)
                        });
                    }

                });
            }
            function load_sumarry_status() {
                $.ajax({
                    url: '/admin/ResidentialResult.aspx/resultStatus',
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
                        var requestMessage;
                        $(data.d).each(function (a, b) {
                            if (b.Member8 == "")
                                requestMessage = "تعیین نشده";
                            if (b.Member8 == "1")
                                requestMessage = "پذیرش اسکان";
                            if (b.Member8 == "2")
                                requestMessage = "پذیرش رزرو";
                            if (b.Member8 == "3")
                                requestMessage = "عدم پذیرش";
                            if (b.Member7 == 0)
                                message = "عدم استفاده";
                            else
                                message = 'این مکان' + b.Member7 + 'مرتبه استفاده شده است';
                            $("#usageStatusTable").append('<tr class="odd gradeX"><td><input type="checkbox" class="checkboxes" value="1"/></td><td>' + b.Member10 + ' ' + b.Member11 + '</td><td class="rri">' + b.Member9 + '</td><td>' + b.Member2 + '</td><td>' + b.Member3 + '</td><td>' + b.Member4 + '</td><td>' + b.Member5 + '</td><td>' + b.Member6 + '</td><td>' + message + '</td><td><a href="#portlet-config" data-toggle="modal" residentialRegisterId="' + b.Member9 + '" class="config requestStatusId">' + requestMessage + '</a></td></tr>');
                        });
                        $(".rri").css("display", "none");
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
                        requestStatus: {
                            required: true
                        }
                    },
                    messages: {
                        requestStatus: {
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
                    $("#residentialSubmit").attr("disabled", "disabled");
                    var btn = $("#residentialSubmit");
                    btn.button('loading');
                    console.log("setup");
                    var postdata = new FormData(this);
                    console.log(postdata);
                    
                    $.ajax({
                        url: '/admin/ResidentialResult.aspx/requestStatus',
                        method: 'post',
                        contentType: "application/json",
                        data: JSON.stringify({ 'requestStatusId': $(".requestStatus option:selected").val(), 'residentialRegisterId': residentialRegisterId }),
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
                $("#residentialForm")[0].reset();
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
</asp:Content>

