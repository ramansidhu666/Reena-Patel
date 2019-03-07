<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="ScheduleAppointmentAdmin.aspx.cs" Inherits="Property.ScheduleAppointmentAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="css/style.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
    <link href="slider/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ajaxtoolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxtoolkit:ToolkitScriptManager>
      <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                 <asp:HiddenField ID="ClientId" runat="server" />
             
                
                    <h2>
                        Give Appointment
                    </h2> 
                    </div>
                        <div class="module-body">
                    <div class="form-horizontal row-fluid">
                        <div class="control-group">
                            <label class="control-label" for="basicinput"> First Name</label>
                            <div class="controls">
                            
                               
                            <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" PlaceHolder="First Name"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="txtFirstName" ErrorMessage="Only alphabets are allowed"
                                            ForeColor="Red" ValidationGroup="SaveAppointment" Display="Dynamic" ValidationExpression="^[a-zA-Z ]+$"> </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ErrorMessage="First Name is Required"
                                ControlToValidate="txtFirstName" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="control-group">
                            <label class="control-label" for="basicinput">  Last Name</label>
                            <div class="controls">
                            
                             
                            <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" PlaceHolder="Last Name"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                            ControlToValidate="txtLastName" ErrorMessage="Only alphabets are allowed"
                                            ForeColor="Red" ValidationGroup="SaveAppointment" Display="Dynamic" ValidationExpression="^[a-zA-Z ]+$"> </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="reqLastName" runat="server" ErrorMessage="Last Name is Required"
                                ControlToValidate="txtLastName" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                            <label class="control-label" for="basicinput">   Email</label>
                            <div class="controls">
                              
                            <asp:TextBox ID="txtEmail" runat="server" MaxLength="150" TextMode="Email" PlaceHolder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email is Required"
                                ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegEmail" ForeColor="Red" runat="server" ErrorMessage="Email is not valid"
                                ValidationGroup="SaveAppointment" SetFocusOnError="true" ControlToValidate="txtEmail"
                                Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="control-group">
                            <label class="control-label" for="basicinput">   Phone Number</label>
                            <div class="controls">
                              
                            <asp:TextBox ID="txtPhoneNo" runat="server" MaxLength="50" PlaceHolder="Phone Number" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" ></asp:TextBox>
                              <ajaxtoolkit:MaskedEditExtender runat="server" ID="mee" Mask="(999) 999-9999"
                                        TargetControlID="txtPhoneNo">
                                    </ajaxtoolkit:MaskedEditExtender>
                            <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ErrorMessage="Phone Number is Required"
                                ControlToValidate="txtPhoneNo" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator2" ValidationGroup="SaveAppointment" ForeColor="red" runat="server" ErrorMessage="Invalid Phone no."
                                  ControlToValidate="txtPhoneNo" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                     <div class="control-group">
                            <label class="control-label" for="basicinput">   Appointment Date</label>
                            <div class="controls">
                               
                            <asp:TextBox ID="txtAppointmentDate" runat="server"  PlaceHolder="Date"></asp:TextBox>
                           <span class="help-inline">
                                   <ajaxtoolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtAppointmentDate"
                                                PopupButtonID="txtAppointmentDate">
                                            </ajaxtoolkit:CalendarExtender>
                                            <asp:RequiredFieldValidator ID="reqAppointmentDate" runat="server" ErrorMessage="Appointment Date is Required"
                                                ControlToValidate="txtAppointmentDate" ForeColor="Red" ValidationGroup="SaveAppointment"
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                </span>
                        </div>
                    </div>
                    <div class="control-group">
                            <label class="control-label" for="basicinput">  Appointment Time</label>
                            <div class="controls">
                               
                            <asp:DropDownList ID="ddlAppointmentTime" runat="server">
                                <asp:ListItem Value="0" Text="--select--"></asp:ListItem>
                                <asp:ListItem Value="9am-11am" Text="9am-11am"></asp:ListItem>
                                <asp:ListItem Value="11am-1pm" Text="11am-1pm"></asp:ListItem>
                                <asp:ListItem Value="1pm-3pm" Text="1pm-3pm"></asp:ListItem>
                                <asp:ListItem Value="3pm-5pm" Text="3pm-5pm"></asp:ListItem>
                                <asp:ListItem Value="5pm-7pm" Text="5pm-7pm"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="reqAppointmentTime" runat="server" ErrorMessage="Appointment Time is required"
                                InitialValue="0" ControlToValidate="ddlAppointmentTime" ValidationGroup="SaveAppointment"
                                SetFocusOnError="true" Display="Dynamic" CssClass="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                            <label class="control-label" for="basicinput">   Notes</label>
                            <div class="controls">
                               
                            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Text="" PlaceHolder="Notes"></asp:TextBox>
                        </div>
                    </div>
                    
                  
                     <asp:Label ID="lblmsg" runat="server" ForeColor="Red" ></asp:Label>
                </div>
 <div class="control-group">
                        <div class="controls">
                        <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="SaveAppointment"
                            OnClick="btnSave_Click" />
                    </div>
                       </div>
            </div>
        </div>
            </div>
          </div>
</asp:Content>
