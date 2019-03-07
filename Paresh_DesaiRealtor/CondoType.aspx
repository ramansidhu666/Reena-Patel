<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="CondoType.aspx.cs" Inherits="Property.CondoType" %>
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
                                  <uc:SearchBar runat="server" ID="SearchBar1" />
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
                            <div class="widgets-city-links">
                                <div class="main-city-image">
                                   <a href="Search.aspx?PropertyType=Condo&HomeType=Condo Apt">
                                        <img src="images/7.jpg" alt="" title="Condo Apt">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject2"><span>Search In </span>Condo Apt</h2>
                            </div>
                        </div>
                          <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Condo&HomeType=Condo Townhouse">
                                        <img src="images/8.jpg" alt="" title="Condo Townhouse">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject2"><span>Search In </span>Condo Townhouse</h2>
                            </div>
                        </div>
                           <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Condo&HomeType=Comm Element Condo">
                                        <img src="images/9.jpg" alt="" title="Comm Element Condo">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject2"><span>Search In </span>Comm Element Condo</h2>
                            </div>
                        </div>
                        
                    </div>
                     <div class="row frnt_line_cls">
                          <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links">
                                <div class="main-city-image">
                                   <a href="Search.aspx?PropertyType=Condo&HomeType=Parking Space">
                                        <img src="images/10.jpg" alt="" title="Parking Space">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject2"><span>Search In </span>Parking Space</h2>
                            </div>
                        </div>
                           <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Condo&HomeType=Det Condo">
                                        <img src="images/11.jpg" alt="" title="Det Condo">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject2"><span>Search In </span>Det Condo</h2>
                            </div>
                        </div>
                          <div class="col-md-4 col-sm-4">
                            <div class="widgets-city-links">
                                <div class="main-city-image">
                                    <a href="Search.aspx?PropertyType=Condo&HomeType=Locker">
                                        <img src="images/12.jpg" alt="" title="Locker">
                                        <div class="city-overlay">
                                            <p><span>VIEW ALL </span>PROPERTIES</p>
                                        </div>
                                    </a>
                                </div>
                                <h2 class="subject2"><span>Search In </span>Locker</h2>
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
