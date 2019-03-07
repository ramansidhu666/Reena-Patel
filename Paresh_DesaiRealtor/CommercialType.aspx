<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="CommercialType.aspx.cs" Inherits="Property.CommercialType" %>
<%@ Register Src="~/Controls/SearchBar.ascx" TagPrefix="uc" TagName="SearchBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <asp:ScriptManager ID="scrmngr" EnablePageMethods="true" runat="server">
        </asp:ScriptManager> 
    
    <div class="free_nw_cls_bg">

    <div class="">
        <%--<div class="row frnt_line_cls">
                    <div class="col-md-12 col-sm-12">
                        <div class="ltst_srch_sct">
                           <div class="input_srch_new">
                                <div class="In_bg_new">
                                  <uc:SearchBar runat="server" ID="SearchBar" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
    <div class="wrapper_new">
        <div class="cities_sct_bg">
            <div class="">
                <div class="main_sction">
                    <div class="row frnt_line_cls">
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                   <a href="Search.aspx?PropertyType=Commercial&HomeType=Commercial/Retail">
                                        <img src="images/1.jpg" alt="" title="Commercial/Retail">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Commercial/Retail</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Commercial&HomeType=Sale Of Business">
                                        <img src="images/2.jpg" alt="" title="Sale Of Business">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Sale Of Business</h2>
                            </div>
                        </div>
                       <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Commercial&HomeType=Office">
                                        <img src="images/3.jpg" alt="" title="Office">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Office</h2>
                            </div>
                        </div>
                        
                    </div>
                     <div class="row frnt_line_cls">
                       <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                   <a href="Search.aspx?PropertyType=Commercial&HomeType=Industrial">
                                        <img src="images/4.jpg" alt="" title="Industrial">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Industrial</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Commercial&HomeType=Land">
                                        <img src="images/5.jpg" alt="" title="Land">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Land</h2>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                                                        <div class="widgets-city-links2">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Commercial&HomeType=Investment">
                                        <img src="images/6.jpg" alt="" title="Investment">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject"><span>Search In </span>Investment</h2>
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
