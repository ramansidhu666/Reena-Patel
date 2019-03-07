<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="ResidentialType.aspx.cs" Inherits="Property.ResidentialType" %>
<%@ Register Src="~/Controls/SearchBar.ascx" TagPrefix="uc" TagName="SearchBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <asp:ScriptManager ID="scrmngr" EnablePageMethods="true" runat="server">
        </asp:ScriptManager> 
    <%--<div class="latst_srch_bg">
    <div class="container">
                 <div class="col-md-12 col-sm-12">
                  <div class="featurd_heading">
                     <img src="images/hding_1.png" alt="" title="" />
                </div>
                    </div>
                <div class="row frnt_line_cls">
                    <div class="col-md-12 col-sm-12">
                        <div class="ltst_srch_sct">
                           <div class="input_srch_new">
                                <div class="In_bg_new">
                                  <uc:SearchBar runat="server" ID="SearchBar" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>--%>
    <div class="free_nw_cls_bg">

    <div class="col-md-12 col-sm-12">
    <div class="wrapper_new">
        <div class="cities_sct_bg">
            <div class="">
                <div class="main_sction">
                    <div class="row frnt_line_cls">
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                   <a href="Search.aspx?PropertyType=Residential&HomeType=Detached">
                                        <img src="images/1_rs.jpg" alt="" title="Detached">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Detached</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Residential&HomeType=Semi-Detached">
                                        <img src="images/2_rs.jpg" alt="" title="Semi-Detached">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Semi-Detached</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Residential&HomeType=Att/Row/Twnhouse">
                                        <img src="images/3_rs.jpg" alt="" title="Att/Row/Twnhouse">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Att/Row/Twnhouse</h2>
                            </div>
                        </div>
                        
                    </div>
                     <div class="row frnt_line_cls">
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                   <a href="Search.aspx?PropertyType=Residential&HomeType=Vacant Land">
                                        <img src="images/4_rs.jpg" alt="" title="Vacant Land">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Vacant Land</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Residential&HomeType=Duplex">
                                        <img src="images/5_rs.jpg" alt="" title="Duplex">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Duplex</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Residential&HomeType=Farm">
                                        <img src="images/6_rs.jpg" alt="" title="Farm">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Farm</h2>
                            </div>
                        </div>
                        
                    </div>
                    </div>
      </div>
        </div>
       
        </div>
    </div>
    </div>
</asp:Content>
