<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH1" runat="Server">
    <!-- BEGIN PAGE HEADER-->
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
            <h3 class="page-title">
                <small>statistics and more</small>
                Dashboard
            </h3>
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <i class="fa fa-home"></i>
                    <a href="index.html">Home
                    </a>
                    <i class="fa fa-angle-left"></i>
                </li>
                <li>
                    <a href="#">Dashboard
                    </a>
                </li>
                <li class="pull-right">
                    <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top" data-original-title="Change dashboard date range">
                        <i class="fa fa-calendar"></i>
                        <span></span>
                        <i class="fa fa-angle-down"></i>
                    </div>
                </li>
            </ul>
            <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
    </div>
    <!-- END PAGE HEADER-->
    <div class="row ">
        <div class="col-md-6 col-sm-6">
            <div class="portlet yellow box">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-cogs"></i>اطلاعات پرسنل
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            نام:
                        </div>
                        <div id="firstName" runat="server" class="col-md-7 value">

                            <span class="label label-info label-sm">Email confirmation was sent
                            </span>
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            نام خانوادگی:
                        </div>
                        <div id="lastName" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            شماره پرسنلی:
                        </div>
                        <div id="employee_number" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            معاونت:
                        </div>
                        <div id="department" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            مدیریت:
                        </div>
                        <div id="departmentParent" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            عنوان شغل:
                        </div>
                        <div id="job" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            آخرین مدرک تحصیلی:
                        </div>
                        <div id="certificate" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            وضعیت تاهل:
                        </div>
                        <div id="maritalStatus" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            تعداد فرزندان تحت تکفل:
                        </div>
                        <div id="numberOfChilderen" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            تلفن داخلی:
                        </div>
                        <div id="localPhone" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            تلفن همراه:
                        </div>
                        <div id="phoneNumber" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            تلفن منزل:
                        </div>
                        <div id="telphone" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                    <div class="row static-info">
                        <div class="col-md-5 name">
                            آدرس محل سکونت:
                        </div>
                        <div id="address" runat="server" class="col-md-7 value">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-6">
            <!-- BEGIN PORTLET-->
            <div class="portlet paddingless">
                <div class="portlet-title line">
                    <div class="caption">
                        <i class="fa fa-bell-o"></i>پیام های دریافتی از خدمات رفاهی
                    </div>
                    <div class="tools">
                        <a href="#" class="collapse"></a>
                        <a href="#portlet-config" data-toggle="modal" class="config"></a>
                        <a href="#" class="reload"></a>
                        <a href="#" class="remove"></a>
                    </div>
                </div>
                <div class="portlet-body">
                    <!--BEGIN TABS-->
                    <div class="tabbable tabbable-custom">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#tab_1_1" data-toggle="tab">پیام ها
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1_1">
                                <div class="scroller" style="height: 290px;" data-always-visible="1" data-rail-visible="0">
                                    <ul class="feeds" id="feed">

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--END TABS-->
                </div>
            </div>
            <!-- END PORTLET-->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="htmlHead" runat="server">
    <script>
        jQuery(document).ready(function () {
            $.ajax({
                url: '/Default.aspx/notification',
                method: 'post',
                contentType: "application/json",
                //data: "{'username':'" + username + "','password':'" + password + "'}",
                dataType: "json",
                success: function (data) {
                    //alert(data.d[0].LocationName);
                    //alert("successssss");
                    //alert(data.d.Email);
                    $(data.d).each(function (a, b) {
                        $("#feed").append('<li><div class="col1"><div class="cont"><div class="cont-col1"><div class="label label-sm label-success"><i class="fa fa-bell-o"></i></div></div><div class="cont-col2"><div class="desc">در تاریخ ' + b.Member1 + ' طبق نامه شماره ' + b.Member2 + ' در خواست شما برای مرکز اقامتی ' + b.Member3 + ' در شهر ' + b.Member4 + ' <b>' + b.Member5 + '</b> گردید.<span class="label label-sm label-danger ">   <i class="fa fa-share"></i></span></div></div></div></div></li>');
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
    </script>
</asp:Content>
