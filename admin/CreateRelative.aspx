<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateRelative.aspx.cs" Inherits="admin_CreateRelative" %>

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
                                <label class="control-label col-md-3">مشاهده نسبت</label>
                                <div class="col-md-9">
                                    <select name="foo" id="RelativeId" class="relative select2me form-control">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!--/span-->
                    </div>
                    <h3 class="form-section">اطلاعات مربوط به نسبت</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-3">
                                    نسبت  
                                    <span class="required">*
                                    </span>
                                </label>
                                <div class="col-md-9 input-icon right">
                                    <i class="fa"></i>
                                    <input type="text" id="RelativeNameId" name="RelativeName" class="form-control" placeholder="نسبت">
                                </div>
                            </div>
                        </div>
                        <!--/span-->
                        
                        <!--/span-->
                    </div>
                    <!--/row-->
                    <!--/row-->
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

            function relativeList() {
                $.ajax({
                    url: 'CreateRelative.aspx/relativeListt',
                    method: 'post',
                    contentType: "application/json",
                    //data: "{'username':'" + username + "','password':'" + password + "'}",
                    dataType: "json",
                    success: function (data) {
                        //alert(data.d[0].LocationName);
                        //alert("successssss");
                        //alert(data.d.Email);
                        debugger;
                        $("#RelativeId").append('<option value=""></option>');
                        $(data.d).each(function (a, b) {
                            $("#RelativeId").append('<option value="' + b.Id + '">' + b.Name + '</option>');
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

            relativeList();

            $("#btnReset").click(function () {
                //$("#formSubmit")[0].reset();
                $("#RelativeId").select2("val", "");
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
                        RelativeName: {
                            required: true
                        }
                    },
                    messages: {
                        RelativeName: {
                            required: "پر کردن این فیلد الزامی می باشد",
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
                        url: '/admin/CreateRelative.aspx/insert',
                        method: 'post',
                        contentType: "application/json",
                        data: JSON.stringify({
                            'name': $("#RelativeNameId").val()
                        }),
                        dataType: "json",
                        success: function (data) {
                            $("#RelativeId").html("");
                            relativeList();
                            if (data.d == 0) {
                                toastr.options.timeOut = "8000";
                                toastr.options.positionClass = "toast-top-center";
                                toastr.success("با موفقیت انجام شد.");
                            }
                            $("#formSubmit")[0].reset();
                            $("#RelativeId").select2("val", "");
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

