<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<%-- Add content controls here --%>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
  <h2>Welcome to admin default page.</h2>
  <h2 id="h2" runat="server"></h2>
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
</asp:Content>