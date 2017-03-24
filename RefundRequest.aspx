 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="RefundRequest.aspx.cs" Inherits="RefundRequest" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="js/style-2.css" />
     <link rel="stylesheet" href="js/screen.css"/>
     <link rel="stylesheet" href="js/Style-3.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	<script src="/js/jquery.validate.js"></script>
    <script src="/js/jquery-1.8.2.js"></script>
      <style>
             .input-container {
  display: inline-block;
  vertical-align: top;
  position: relative;
  max-width: 100%;
}

.inline-label {
  padding: 10px;
}
label{
    font-weight:400;
}

/* style that just styles the input */
.form-control {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 1px;
  border-top-left-radius: 1px;
/*  just adds the inset shadow  */
  background-clip: padding-box;
  border-width: 1px;
/*  default styles for the input  */
  display: block;
  border-radius: 0;
  -webkit-box-shadow: inset 0 0px 0px rgba(0,0,0,0.0);
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  width: 1.6;
  height: .32em;
  padding: 24px 20px 8px;
  border: solid #d3d3d3;
  border-width:.02px
}

select{
     border: solid  #d3d3d3;
  border-width:.02px
}

.textboxborder{
     border: solid  #d3d3d3;
  border-width:.02px
}

.form-control ~ .form-control-label {
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-transform-origin: 0%;
  -moz-transform-origin: 0%;
  -ms-transform-origin: 0%;
  transform-origin: 0%;
  position: absolute;
  color: #777;
  cursor: text; 
  left: 2px;
  top: .85em;
  pointer-events: none;
  white-space: nowrap;
  max-width: 100%;
  text-overflow: ellipsis;
  overflow: hidden;
  padding-right: 1px;
}
.form-control:focus {
  color: #008374;
  outline: none;
  border: 0px solid #008374;
  -webkit-box-shadow: 0px 0px 2px 0px #008374;
  box-shadow: 0px 0px 2px 0px #008374;
}
.form-control:focus ~ .form-control-label {
  color: #008374;
      will-change: all;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    -o-transition: all 0.2s ease;
    -ms-transition: all 0.2s ease;
    transition: all 0.2s ease;
    -webkit-transform: scale(0.5 );
    -ms-transform: scale(0.5 );
    transform: scale(0.5);
    -webkit-transform: scale(0.5);
    -moz-transform: scale(0.5);
    -o-transform: scale(0.5);
    -ms-transform: scale(0.5);
    transform: scale(0.5);
    top: .086em;
    max-width: 130%;
}

.form-control.filled ~ .form-control-label {
    color: #008374;
      will-change: all;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    -o-transition: all 0.2s ease;
    -ms-transition: all 0.2s ease;
    transition: all 0.2s ease;
    -webkit-transform: scale(0.5 );
    -ms-transform: scale(0.5 );
    transform: scale(0.5);
    -webkit-transform: scale(0.5);
    -moz-transform: scale(0.5);
    -o-transform: scale(0.5);
    -ms-transform: scale(0.5);
    transform: scale(0.5);
    top: 0.086em;
    max-width: 130%;
}

label {
  display: inline-block;
  margin-bottom: 12px;
}
td{
    width:1.15em;
    height:1.55em;
    border:none;
    padding-bottom:5px;
    padding-top:5px;
    padding-right:10px
}


#_helpQueryForm label {
		width: 250px;
	}

#_helpQueryForm label.error, #_helpQueryForm input.submit {
		margin-left: 253px;
	}

.inputError{
    border: solid  #ff0000;
    border-width:.02px
}

textboxclass{
      width:1.95em;
    height:1.55em;
    padding-bottom:5px;
    padding-top:5px;
    padding-right:10px
}

.ui-datepicker {
   background: #333;
   border: 1px solid #555;
   color: #EEE;
 }
             .auto-style1 {
                 height: 2em;
             }

  

    </style>
</head>
  
  

    <script type="text/javascript">  
        function Count() {  
  
            var i = document.getElementById("_refundRequestAdditionInformation").value.length;
            document.getElementById("_refundRequestCharCount").innerHTML ="Characters Remaining : "+( 1000 - i);

        }

        function validateForm() {
            var x = document.forms["_refundRequestForm"]["_refundRequestFirstName"].value
            if (x == null || x == "") {
                alert("First name must be filled out");
                return false;
            }
        }

       
    </script>  
                     <script type="text/javascript">
                            var validFileSize = 2 * 1024 * 1024;

                            function CheckFileSize(file) {
                                /*global document: false */
                                var fileSize = file.files[0].size;
                                var isValidFile = false;
                                if (fileSize !== 0 && fileSize <= validFileSize) {
                                    isValidFile = true;
                                }
                                else {
                                    file.value = null;
                                    alert("File Size Should be Greater than 0 and less than 2 MB.");
                                }
                                return isValidFile;
                            }
                        </script>
                            <script type="text/javascript">
                            function CheckFile(file) {
                                
                                    isValidFile = CheckFileSize(file);

                                return isValidFile;
                            }
                        </script>
<body>
    <div id="HeaderInfo" style="text-align: left;">
        <span class=" col-xs-12 tealGreenDark" >
        <p style="text-align: left">
            <font color="#008870" face="ARIAL" size="6"><b>Refund Request</b></font>
        </p>
  
    <p>
        <font face="ARIAL" size="2">Our cancellation policy is specific to the fare type you have booked. Please note a refund administration fee may apply.

<br />
        <br />
       To update an existing request
<br />
        <br />
       
        <b>* indicates a required field.</b>
        <br />
        </font>
    </p>
            </span>
      </div>
    <form id="form1" runat="server" autocomplete="off">
    <div style="margin-left: 80px">
            
    <table>
        <tr>
            <td>
                <asp:RadioButton GroupName="TypeSelection" ID="_refundRequestGuestCheckB" runat="server"   Text="I am a guest"  />
            </td>
            <td>
                <asp:RadioButton GroupName="TypeSelection" ID="_refundRequestRepCheckB" runat="server"   Text="I am a representative of the guest" />
            </td>
            
        </tr>
       <tr>
           <td><asp:Label ID="_refundRequestGuestInfoLabel" runat="server" Font-Bold="true" Text="Guest Information"></asp:Label></td>
            <td>&nbsp</td>
           <td>&nbsp</td>
              <td><asp:Label ID="_refundRequestRepInfoLabel" style="display: none;" runat="server" Font-Bold="true" Text="Representative Information" ></asp:Label></td>
       </tr>
          <tr>
           
             
            <td>
                <asp:DropDownList ID="_refundRequestSalutation" runat="server"  >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            </td>
                 <td>
                  
               <div class="input-container" >
                 <input type="text" style="width:230px" id="helpQueryFirstName" name="helpQueryFirstName"  class="form-control inline-label  " required="required" onblur="checkvalue(this)">
                    <label class="form-control-label">First Name</label>
                    </div>
                </td>
              <td>
                   
               <div class="input-container" >
                 <input type="text" style="width:230px" id="helpQueryLastName" title="Please Enter your Last Name" name="helpQueryLastName" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Last Name</label>
                </div>
               

            </td>
            
            <td>
                <asp:DropDownList ID="_refundRequestRepSalutation" style="display: none;" runat="server" Enabled="false"   >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            
                <td>
                    <div class="input-container" >
                 <input type="text" style="width:230px" id="helpQueryRepFirstName" name="helpQueryRepFirstName"  class="form-control inline-label  " required="required" onblur="checkvalue(this)">
                    <label class="form-control-label">First Name</label>
                    </div>

                </td>
               <td>
                   <div class="input-container" >
                 <input type="text" style="width:230px" id="helpQueryRepLastName" name="helpQueryRepLastName"  class="form-control inline-label  " required="required" onblur="checkvalue(this)">
                    <label class="form-control-label">Last Name</label>
                    </div>
               </td>
                
                 
            </td>
            </tr>
          
            <tr>
                
                <td>
                   <div class="input-container" >
                    <input  type="email" name="_helpQueryEmail" id="_helpQueryEmail" style="width:230px"  class="form-control inline-label"  required="required" onblur="checkvalue(this)">
                    <label class="form-control-label">Email ID</label>
                    </div>
                    </td>
                <td>
                      <div class="input-container" >
                    <input  type="email" name="refundrequestConfirmEmail" id="refundrequestConfirmEmail" style="width:230px"  class="form-control inline-label"  required="required" onblur="checkvalue(this)">
                    <label class="form-control-label">Confirm Email ID</label>
                    </div>
                    </td>
                <td>
                        &nbsp
                    </td>
                <td>
                    
                    <div class="input-container" >
                    <input  type="email" name="_refundRquestCompanyName" id="_refundRquestCompanyName" style="width:230px"  class="form-control inline-label"  required="required" onblur="checkvalue(this)">
                    <label class="form-control-label">Company Name</label>
                    </div>
                    </td>
             
                </td>
            </tr>
             <tr>
                <td>
         
                  <asp:XmlDataSource ID="_refundRequestCountriesSource" runat="server" DataFile="~/XML DataSource/Countries.xml" XPath="Countries/country" ></asp:XmlDataSource>
                 <asp:DropDownList ID="refundRequestCountrieslist"  runat="server" DataSourceID="_refundRequestCountriesSource" DataValueField="value" DataTextField="name" ></asp:DropDownList>
                 
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator1" InitialValue="selected"  runat="server"  controltovalidate="refundRequestCountrieslist" errormessage="Please Select Country"  Display="Dynamic" ValidationGroup="Submit" Font-Size="Small" ForeColor="Red"></asp:requiredfieldvalidator>
             </td>
            <td class="auto-style1">
             
            
            </td>
                  <td>
                <asp:Label ID="_refundRequestRepEmailLabel" style="display: none;" runat="server" Text="* Email"  Enabled="false" ></asp:Label>
                </td>
                  <td class="auto-style1">
                  <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestRepEmail" title="Please Enter your Last Name" name="refundRequestRepEmail" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label"> Email</label>
                </div>
            </td>
                     <td class="auto-style1">
                  <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestRepConfirmEmail" title="Please Enter your Last Name" name="refundRequestRepConfirmEmail" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Confirm Email</label>
                </div>
            </td>
            </tr>
             <tr>
                   <td class="auto-style1">
                  <asp:XmlDataSource ID="_helpQueryCountryCode" runat="server" DataFile="~/XML DataSource/CountryCodes.xml" XPath="CountryCode/AreaCode"></asp:XmlDataSource>
                <asp:DropDownList  CssClass="btn btn-default dropdown-toggle"  ID="_refundRequestTelephoneCode" Height="30px"  runat="server" Width="230px"  DataSourceID="_helpQueryCountryCode" DataTextField="name" DataValueField="value"></asp:DropDownList>
            </td>
                   <td class="auto-style1">
                  <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestTelephone" title="Please Enter your Telephone Numer" name="refundRequestTelephone" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Telephone Number</label>
                </div>
            </td>
                 <td>&nbsp</td>
               <td>
               <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestRepAddresss" title="Please Enter your Last Name" name="refundRequestRepAddresss" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Address</label>
                </div>
            </td>
            <td>
               <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestRepAddresss2" title="Please Enter your Last Name" name="refundRequestRepAddresss2" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Address2</label>
                </div>
            </td>
           
             </tr>
            <tr>
                 <td>
               <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestAddresss" title="Please Enter your Last Name" name="refundRequestAddresss" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Address</label>
                </div>
            </td>
            <td>
               <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestAddresss2" title="Please Enter your Last Name" name="refundRequestAddresss2" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Address2</label>
                </div>
            </td>
                <td>&nbsp</td>
                  <td>
                    <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestRepTown" title="Please Enter your Last Name" name="refundRequestRepTown" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Town/City</label>
                </div>
                </td>

                <td>
                <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestRepCounty" title="Please Enter your Last Name" name="refundRequestRepCounty" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">County/State</label>
                </div>
                    </td>
            </tr>
            <tr>
                <td>
                    <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestTown" title="Please Enter your Last Name" name="refundRequestTown" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Town/City</label>
                </div>
                </td>
               
                <td>
                <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestCounty" title="Please Enter your Last Name" name="refundRequestCounty" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">County/State</label>
                </div>
                    </td>
                 <td>
                    &nbsp
                </td>
                <td>
         
                  <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML DataSource/Countries.xml" XPath="Countries/country" ></asp:XmlDataSource>
                 <asp:DropDownList ID="_refundRequestRepCountryList"  runat="server" DataSourceID="XmlDataSource1" DataValueField="value" DataTextField="name" ></asp:DropDownList>
                 
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator2" InitialValue="selected"  runat="server"  controltovalidate="_refundRequestRepCountryList" errormessage="Please Select Country"  Display="Dynamic" ValidationGroup="Submit" Font-Size="Small" ForeColor="Red"></asp:requiredfieldvalidator>
             </td>
             <td>
         
                
             </td>
                   
            </tr>
            <tr>
                <td>
                    <div class="input-container" >
                 <input type="text" style="width:230px" id="refundRequestZip" title="Please Enter your Last Name" name="refundRequestZip" class="form-control inline-label" required="required" onblur="checkvalue(this)">
                 <label class="form-control-label">Zip Code</label>
                </div>
                </td>

                <td><asp:TextBox ID="_refundRequestAdd2TextBox" runat="server"></asp:TextBox></td>
                  <td>
                    <asp:Label ID="_refundRequestRepAddLabel" style="display: none;" Enabled="false"  runat="server" Text="* Address"></asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="_refundRequestRepAddText" style="display: none;" Enabled="false"  runat="server"></asp:TextBox>
                    <asp:requiredfieldvalidator id="_refundRequestRepAddValidator" style="display: none;" Enabled="false"    runat="server"  controltovalidate="_refundRequestRepAddText" errormessage="Please Provide Address"  Display="Dynamic" ValidationGroup="Submit" Font-Size="Small" ForeColor="Red"></asp:requiredfieldvalidator>
                </td>
            
            </tr>
        
                 
            
            <tr>
            <td class="auto-style1">
                       <select  class="btn btn-default dropdown-toggle" style="height:30px;width:230px" name="_helpQueryAerClubDropDown" id="_helpQueryAerClubDropDown" runat="server"    >
                         <option value="Selected" selected="selected">Please Select</option>
                         <option value="Green" >Green</option>
                          <option value="Silver" >Silver</option>
                          <option value="Platinum">Platinum</option>
                          <option value="Concierge" >Concierge</option>
                       </select>

                 </td>
                 <td class="auto-style1">
                    <div class="input-container" >
                    <input type="number" name="_helpQueryAerClubmembershipId" id="_helpQueryAerClubmembershipId" style="width:230px" pattern="[0-9]{16}" title="Please Enter your 16 Digit Membership ID"  disabled="disabled" class="form-control inline-label" onblur="checkvalue(this)">
                    <label class="form-control-label">Aer #</label>
                    </div>
                     
                 </td> 
                <td>
                    <asp:Label ID="_refundRequestRepAdd2Label"  style="display: none;" runat="server" Text="  Address2" Enabled="false" ></asp:Label>
                </td>

                <td><asp:TextBox ID="_refundRequestRepAdd2Text" style="display: none;" runat="server" Enabled="false" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="_refundRequestCounty"  runat="server" Text="  County/State"></asp:Label>
                </td>

                <td><asp:TextBox ID="_refundRequestCountyText" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="_refundRequestRepTownLabel" style="display: none;" runat="server" Enabled="false"  Text="* Town/City"></asp:Label>
                </td>

                <td><asp:TextBox ID="_refundRequestRepTownText" style="display: none;" runat="server" Enabled="false" ></asp:TextBox>
                  <asp:requiredfieldvalidator id="_refundRequestRepTownValidator"  Enabled="false"   runat="server"  controltovalidate="_refundRequestRepTownText" errormessage="Please Enter Town"  Display="Dynamic" ValidationGroup="Submit" Font-Size="Small" ForeColor="Red"></asp:requiredfieldvalidator>    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="_refundRequestZipCodeLabel" runat="server" Text="  Postal/Zip Code"></asp:Label>
                </td>

                <td><asp:TextBox ID="_refundRequestZipText" runat="server"></asp:TextBox></td>
                   <td>
                    <asp:Label ID="_refundRequestRepCountyLabel" style="display: none;" Enabled="false"  runat="server" Text="  County/State"></asp:Label>
                </td>

                <td><asp:TextBox ID="_refundRequestRepCountyText" style="display: none;" Enabled="false"  runat="server"></asp:TextBox></td>

            </tr>
             <tr>
                 <td>
                     <asp:Label ID="_refundRequestAerClubLabel" runat="server" Text="  AerClub">

                     </asp:Label>

                 </td>
                 <td>
                      <asp:XmlDataSource ID="_refundRequestAerClubSource" runat="server" DataFile="~/XML DataSource/AerClub.xml" XPath="ClubMembership/Type" ></asp:XmlDataSource>
                     <asp:DropDownList ID="_refundRequestAerClubDropDown" runat="server" DataSourceID="_refundRequestAerClubSource" DataValueField="value" DataTextField="name"   ></asp:DropDownList>
                     <asp:TextBox Enabled="false" ID="_refundRequestAerClubmembershipId" runat="server" MaxLength="16" ></asp:TextBox>
                     <asp:RegularExpressionValidator ValidationGroup="Submit" ID="_refundRequestAerClubValidator" ControlToValidate="_refundRequestAerClubmembershipId" ValidationExpression="^\d{16,}$" runat="server" ErrorMessage="Please Enter Your 16 digits ClubId" Font-Size="Small" ForeColor="Red" />
                 </td> 
                  <td>
                    <asp:Label ID="_refundRequestRepZipLabel" style="display: none;" Enabled="false"  runat="server" Text=" Postal/Zip Code"></asp:Label>
                </td>

                <td><asp:TextBox ID="_refundRequestRepZipText" style="display: none;" Enabled="false"  runat="server"></asp:TextBox></td>
             </tr>
        <tr>
            <td></td>
            <td></td>
            <td><asp:Label ID="_refundRequestRelationshipLabel" style="display: none;" runat="server" Text="  Relationship to the Guest"  Enabled="false" ></asp:Label></td>
            <td>
                 <asp:XmlDataSource ID="_reuestRefundRepRelationSource"   runat="server" DataFile="~/XML DataSource/RepRelation.xml" XPath="RepRelation/Relation" ></asp:XmlDataSource>
                <asp:DropDownList ID="_refundRequestRelationship" style="display: none;"  runat="server" Enabled="false"  DataSourceID="_reuestRefundRepRelationSource" DataValueField="value" DataTextField="name"></asp:DropDownList></td>
        </tr>

        </table>
        <table>
            <tr><td><font color="#008870" face="ARIAL" size="4" >Flight Information</font></td> </tr>
                <tr>
                    <td><asp:Label ID="_requestRefundFlightNumberLabel" runat="server" Text="Flight Number :"></asp:Label></td>
                    <td><asp:TextBox ID="_requestRefundFlightNumber" runat="server"></asp:TextBox></td>
                </tr>

                 <tr>
                        
                    <td><asp:Label ID="_requestRefundFlightDateLabel" runat="server" Text="Flight Date :"></asp:Label></td>
                    <td>
                        
                        <asp:TextBox ID="_requestRefundDateOfFlight" runat="server"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="_requestRefundBookingRefLabel" runat="server" Text="Booking Reference :"></asp:Label></td>
                    <td><asp:TextBox ID="_requestRefundBookingRefNumber" runat="server"></asp:TextBox></td>
                </tr>
                
                    </table>
         <div>
               <font color="#008870" face="ARIAL" size="4" >Guest Details</font>  
                <table>
                        <tr>
                            <td>
                                <asp:Label ID="_requestRefundGuest1Label" runat="server" Text="Guest 1"></asp:Label>
                            </td>
                <td>
                <asp:DropDownList ID="_requestRefundGuest1SalutationLabel" runat="server"   >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            
                <asp:TextBox ID="_requestRefundGuest1Name" runat="server" Text="" ></asp:TextBox>
                <asp:TextBox ID="_requestRefundGuest1LastName" runat="server" Text="" ></asp:TextBox>
                 
            </td>
                    </tr>
                <tr>
                   <td>
                                <asp:Label ID="_requestRefundGuest2Label" runat="server" Text="Guest 2"></asp:Label>
                            </td>
                 <td>
                <asp:DropDownList ID="_requestRefundGuest2SalutationLabel" runat="server"   >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            
                <asp:TextBox ID="_requestRefundGuest2Name" runat="server" ></asp:TextBox>
                <asp:TextBox ID="_requestRefundGuest2LastName" runat="server" ></asp:TextBox>
               

            </td>
                    </tr>
                <tr>
                    <td>
                                <asp:Label ID="_requestRefundGuest3Label" runat="server" Text="Guest 3"></asp:Label>
                            </td>
                 <td>
                <asp:DropDownList ID="_requestRefundGuest3SalutationLabel" runat="server"   >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            
                <asp:TextBox ID="_requestRefundGuest3Name" runat="server" ></asp:TextBox>
                <asp:TextBox ID="_requestRefundGuest3LastName" runat="server" ></asp:TextBox>
             
            </td>
                    </tr>
                <tr>
                    

<td>
                                <asp:Label ID="_requestRefundGuest4Label" runat="server" Text="Guest 4"></asp:Label>
                            </td>
                 <td>
                <asp:DropDownList ID="_requestRefundGuest4SalutationLabel" runat="server"   >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            
                <asp:TextBox ID="_requestRefundGuest4Name" runat="server" ></asp:TextBox>
                <asp:TextBox ID="_requestRefundGuest4LastName" runat="server" ></asp:TextBox>
               
            </td>
                    </tr>
                <tr>
                    
<td>
                                <asp:Label ID="_requestRefundGuest5Label" runat="server" Text="Guest 5"></asp:Label>
                            </td>

                 <td>
                <asp:DropDownList ID="_requestRefundGuest5SalutationLabel" runat="server"   >
                    <asp:ListItem Value="none">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            
                <asp:TextBox ID="_requestRefundGuest5Name" runat="server" ></asp:TextBox>
                <asp:TextBox ID="_requestRefundGuest5LastName" runat="server" ></asp:TextBox>
            
            </td>
                    </tr>
            </table>
        </div>

    </div>

       
        
         <font color="#008870" face="ARIAL" size="4"  style="margin-left: 80px">Reason For Refund</font>  
        <br />
        <p style="margin-left: 80px">
            * Please Select the reason you are requesting a refund
        </p>
        <div>
            <table style="margin-left: 80px">
                <tr>
                    <td>
                     <asp:DropDownList ID="_requestRefundReasonType"   DataTextField="name" DataValueField="value" DataSourceID="_requestRefundReasonSource" runat="server" ></asp:DropDownList>
                    </td>
                    <td>
                    <asp:XmlDataSource ID="_requestRefundReasonSource" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/Reason" ></asp:XmlDataSource>
                       
                   
                    </td>
                    <td>
                         <asp:XmlDataSource ID="_requestRefundFeeSource" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/FeeRelated" ></asp:XmlDataSource>
                        <asp:XmlDataSource ID="_requestRefundFlightSource" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/FlightRelated" ></asp:XmlDataSource>
                        <asp:XmlDataSource ID="_requestRefundComSource" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/CompRelated" ></asp:XmlDataSource>
                        <asp:DropDownList ID="_requestRefundReasonInfo" runat="server" DataTextField="name" DataValueField="value" DataSourceID="_requestRefundFlightSource" Enabled="false"  OnSelectedIndexChanged="_requestRefundReasonInfo_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td> <asp:Image ID="_addnewRefundReasonbutton1" ImageUrl="~/Images/plus.png" runat="server" Width="10" Height="10" /> </td>
                </tr>

                <tr>
                    <td>
                     <asp:DropDownList ID="_requestRefundReasonType2" style="display: none;"  DataTextField="name" DataValueField="value" DataSourceID="_requestRefundReasonSource2" runat="server" ></asp:DropDownList>
                    </td>
                    <td>
                    <asp:XmlDataSource ID="_requestRefundReasonSource2"  runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/SecondaryReason" ></asp:XmlDataSource>
                       
                   
                    </td>
                    <td>
                         <asp:XmlDataSource ID="_requestRefundFeeSource2" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/FeeRelated" ></asp:XmlDataSource>
                         <asp:XmlDataSource ID="_requestRefundComSource2" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/CompRelated" ></asp:XmlDataSource>
                        <asp:DropDownList ID="_requestRefundReasonInfo2" style="display: none;" runat="server" DataTextField="name" DataValueField="value" DataSourceID="_requestRefundFeeSource2" Enabled="false" ></asp:DropDownList>
                    </td>
                    <td> <asp:Image ID="_addnewRefundReasonbutton2" style="display: none;" ImageUrl="~/Images/plus.png" runat="server" Width="10" Height="10" /> </td>
                </tr>

                <tr>
                    <td>
                     <asp:DropDownList ID="_requestRefundReasonType3" style="display: none;" DataTextField="name" DataValueField="value" DataSourceID="_requestRefundReasonSource3" runat="server" ></asp:DropDownList>
                    </td>
                    <td>
                    <asp:XmlDataSource ID="_requestRefundReasonSource3" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/SecondaryReason" ></asp:XmlDataSource>
                       
                   
                    </td>
                    <td>
                         <asp:XmlDataSource ID="_requestRefundFeeSource3" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/FeeRelated" ></asp:XmlDataSource>
                         <asp:XmlDataSource ID="_requestRefundComSource3" runat="server" DataFile="~/XML DataSource/RefundRequestInfo.xml" XPath="RefundInfo/CompRelated" ></asp:XmlDataSource>
                        <asp:DropDownList ID="_requestRefundReasonInfo3" style="display: none;" runat="server" DataTextField="name" DataValueField="value" DataSourceID="_requestRefundFeeSource3" Enabled="false" ></asp:DropDownList>
                    </td>
                    
                </tr>
            </table>
        </div>
           <font color="#008870" face="ARIAL" size="4" style="margin-left: 80px" >Comments ?</font>  
        <div style="margin-left: 80px">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="_refundRequestAddInfoLabel" Width="120" Font-Size="Small" runat="server" Text="Please Provide Additional Information" Height="60" ></asp:Label>
                    </td>
                <td>
                    <asp:TextBox TextMode="MultiLine" onkeyup="Count()" Height="70" Width="300" id="_refundRequestAdditionInformation" maxlength="1000" runat="server"></asp:TextBox>
                    <br />
                  <font size="2">  <label id="_refundRequestCharCount" runat="server"  >Characters Remaining :1000</label> </font>
                </td>
                </tr>
                
            </table>
        </div>

        Please Upload all the relavant documentation with your request so it can be processed.
        <br />
        <br />
        
        <div style="margin-left: 80px">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="_refundRequestFileUploadLabel" runat="server" Text="File To Upload:"></asp:Label>
                    </td>
                    <td>
                           
                        <asp:FileUpload ID="_refundRequestFileUploader" onchange="return CheckFile(this);" runat="server" />
                    </td>
                </tr>
                
            </table>
            <div style="margin-left: 110px " >
            <font  face="ARIAL" size="2" >Maximum size limit -2 MB</font>
                     </div>
        </div>
        <br />
        <br />
        <asp:ValidationSummary runat="server" ShowMessageBox="true" ShowSummary="false" />
       <div style="margin-left: 200px">
       <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="80"  ValidationGroup="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
    <script type="text/javascript">
        function ToggleValidatorOff() {
            var valName = document.getElementById("_refundRequestRepTownValidator");
            ValidatorEnable(document.getElementById("_refundRequestRepTownValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepTownValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepNameValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepTownValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepCountriesValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepLastNameValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepAreaCodeRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepSalutationValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepAddValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepAddValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepCountriesValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepAreaCodeRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepLastNameValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberRequiredValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepNameValidator"), false);
            ValidatorEnable(document.getElementById("_refundRequestRepSalutationValidator"), false);
 
        }

        function ToggleValidatorOn()
        {
            ValidatorEnable(document.getElementById("_refundRequestRepTownValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepNameValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepTownValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepCountriesValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepLastNameValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepAreaCodeRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepSalutationValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepAddValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepAddValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepConfirmEmailRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepCountriesValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepAreaCodeRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepEmailValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepLastNameValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepPhoneNumberRequiredValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepNameValidator"), true);
            ValidatorEnable(document.getElementById("_refundRequestRepSalutationValidator"), true);
            $("#_refundRequestRepAdd2Label").css('visibility', 'visible');

        }

        $("#_refundRequestGuestCheckB").change(function () {
            if ($(this).is(":checked")) {
                $("#_refundRequestRepAdd2Label").attr("Disabled", true);
                $("#_refundRequestRepAdd2Text").attr("Disabled", true);
                $("#_refundRequestRepAddLabel").attr("Disabled", true);
                $("#_refundRequestRepAddText").attr("Disabled", true);
                $("#_refundRequestRepAreaCodeText").attr("Disabled", true);
                $("#_refundRequestRepCompanyNameLabel").attr("Disabled", true);
                $("#_refundRequestRepCompanyNameText").attr("Disabled", true);
                $("#_refundRequestRepConfirmEmailLabel").attr("Disabled", true);
                $("#_refundRequestRepConfirmEmailText").attr("Disabled", true);
                $("#_refundRequestRepCountryLabel").attr("Disabled", true);
                $("#_refundRequestRepCountryList").attr("Disabled", true);
                $("#_refundRequestRepCountyLabel").attr("Disabled", true);
                $("#_refundRequestRepCountyText").attr("Disabled", true);
                $("#_refundRequestRepEmail").attr("Disabled", true);
                $("#_refundRequestRepEmailLabel").attr("Disabled", true);
                $("#_refundRequestRepInfoLabel").attr("Disabled", true);
                $("#_refundRequestRepLastnameText").attr("Disabled", true);
                $("#_refundRequestRepNameLabel").attr("Disabled", true);
                $("#_refundRequestRepNameText").attr("Disabled", true);
                $("#_refundRequestRepPhoneNumberLabel").attr("Disabled", true);
                $("#_refundRequestRepPhoneNumberText").attr("Disabled", true);
                $("#_refundRequestRepSalutation").attr("Disabled", true);
                $("#_refundRequestRepTownLabel").attr("Disabled", true);
                $("#_refundRequestRepTownText").attr("Disabled", true);
                $("#_refundRequestRepZipLabel").attr("Disabled", true);
                $("#_refundRequestRepZipText").attr("Disabled", true);
                $("#_refundRequestRepAdd2Label").attr("Disabled", true);
                $("#_refundRequestRepAdd2Text").attr("Disabled", true);
                $("#_refundRequestRepAddLabel").attr("Disabled", true);
                $("#_refundRequestRepAddText").attr("Disabled", true);
                $("#_refundRequestRepAreaCodeText").attr("Disabled", true);
                $("#_refundRequestRepCompanyNameLabel").attr("Disabled", true);
                $("#_refundRequestRepCompanyNameText").attr("Disabled", true);
                $("#_refundRequestRepConfirmEmailLabel").attr("Disabled", true);
                $("#_refundRequestRepConfirmEmailText").attr("Disabled", true);
                $("#_refundRequestRepCountryLabel").attr("Disabled", true);
                $("#_refundRequestRepCountryList").attr("Disabled", true);
                $("#_refundRequestRepCountyLabel").attr("Disabled", true);
                $("#_refundRequestRepCountyText").attr("Disabled", true);
                $("#_refundRequestRepEmail").attr("Disabled", true);
                $("#_refundRequestRepEmailLabel").attr("Disabled", true);
                $("#_refundRequestRepInfoLabel").attr("Disabled", true);
                $("#_refundRequestRepLastnameText").attr("Disabled", true);
                $("#_refundRequestRepNameLabel").attr("Disabled", true);
                $("#_refundRequestRepNameText").attr("Disabled", true);
                $("#_refundRequestRepPhoneNumberLabel").attr("Disabled", true);
                $("#_refundRequestRepPhoneNumberRequiredValidator").attr("Disabled", true);
                $("#_refundRequestRepPhoneNumberText").attr("Disabled", true);
                $("#_refundRequestRepSalutation").attr("Disabled", true);
                $("#_refundRequestRepTownLabel").attr("Disabled", true);
                $("#_refundRequestRepTownText").attr("Disabled", true);
                $("#_refundRequestRepZipLabel").attr("Disabled", true);
                $("#_refundRequestRepZipText").attr("Disabled", true);
                $("#_refundRequestRelationshipLabel").attr("Disabled", true);
                $("#_refundRequestRelationshipLabel").attr("Disabled", true);
                $("#_refundRequestRelationship").attr("Disabled", true);
                $("#_refundRequestRelationship").attr("Disabled", true);
              
               
             
               
                $("#_refundRequestRepTownValidator").hide();
                $("#_refundRequestRepNameValidator").hide();
                $("#_refundRequestRepTownValidator").hide();
                $("#_refundRequestRepConfirmEmailValidator").hide();
                $("#_refundRequestRepCountriesValidator").hide();
                $("#_refundRequestRepConfirmEmailRequiredValidator").hide();
                $("#_refundRequestRepLastNameValidator").hide();
                $("#_refundRequestRepEmailRequiredValidator").hide();
                $("#_refundRequestRepEmailValidator").hide();
                $("#_refundRequestRepAreaCodeRequiredValidator").hide();
                $("#_refundRequestRepPhoneNumberRequiredValidator").hide();
                $("#_refundRequestRepPhoneNumberValidator").hide();
                $("#_refundRequestRepSalutationValidator").hide();
                $("#_refundRequestRepAddValidator").hide();
                $("#_refundRequestRepAddValidator").hide();
                $("#_refundRequestRepConfirmEmailValidator").hide();
                $("#_refundRequestRepConfirmEmailRequiredValidator").hide();
                $("#_refundRequestRepCountriesValidator").hide();
                $("#_refundRequestRepAreaCodeRequiredValidator").hide();
                $("#_refundRequestRepEmailRequiredValidator").hide();
                $("#_refundRequestRepEmailValidator").hide();
                $("#_refundRequestRepLastNameValidator").hide();
                $("#_refundRequestRepPhoneNumberValidator").hide();
                $("#_refundRequestRepPhoneNumberRequiredValidator").hide();
                $("#_refundRequestRepNameValidator").hide();
                $("#_refundRequestRepSalutationValidator").hide();
                $("#_refundRequestRepAreaCodeText").hide();
                $("#_refundRequestRepAddText").hide();
                $("#_refundRequestRepCompanyNameLabel").hide();
                $("#_refundRequestRepCompanyNameText").hide();
                $("#_refundRequestRepConfirmEmailLabel").hide();
                $("#_refundRequestRepConfirmEmailText").hide();
                $("#_refundRequestRepCountryLabel").hide();
                $("#_refundRequestRepCountryList").hide();
                $("#_refundRequestRepCountyLabel").hide();
                $("#_refundRequestRepCountyText").hide();
                $("#_refundRequestRepEmail").hide();
                $("#_refundRequestRepEmailLabel").hide();
                $("#_refundRequestRepInfoLabel").hide();
                $("#_refundRequestRepLastnameText").hide();
                $("#_refundRequestRepNameLabel").hide();
                $("#_refundRequestRepNameText").hide();
                $("#_refundRequestRepPhoneNumberLabel").hide();
                $("#_refundRequestRepPhoneNumberText").hide();
                $("#_refundRequestRepSalutation").hide();
                $("#_refundRequestRepTownLabel").hide();
                $("#_refundRequestRepTownText").hide();
                $("#_refundRequestRepZipLabel").hide();
                $("#_refundRequestRepZipText").hide();
                $("#_refundRequestRepAdd2Label").hide();
                $("#_refundRequestRepAdd2Text").hide();
                $("#_refundRequestRepAddLabel").hide();
                $("#_refundRequestRepAddText").hide();
                
                $("#_refundRequestRepAreaCodeText").hide();
                $("#_refundRequestRepCompanyNameLabel").hide();
                $("#_refundRequestRepCompanyNameText").hide();
                $("#_refundRequestRepConfirmEmailLabel").hide();
               
                $("#_refundRequestRepConfirmEmailText").hide();
                
                $("#_refundRequestRepCountryLabel").hide();
                $("#_refundRequestRepCountryList").hide();
                $("#_refundRequestRepCountyLabel").hide();
                $("#_refundRequestRepCountyText").hide();
                $("#_refundRequestRepEmail").hide();
                $("#_refundRequestRepEmailLabel").hide();
                
                $("#_refundRequestRepInfoLabel").hide();
                $("#_refundRequestRepLastnameText").hide();
               
                $("#_refundRequestRepNameLabel").hide();
                $("#_refundRequestRepNameText").hide();
               
                $("#_refundRequestRepPhoneNumberLabel").hide();
               
                $("#_refundRequestRepPhoneNumberText").hide();
               
                $("#_refundRequestRepSalutation").hide();
               
                $("#_refundRequestRepTownLabel").hide();
                $("#_refundRequestRepTownText").hide();
                $("#_refundRequestRepZipLabel").hide();
                $("#_refundRequestRepZipText").hide();
                $("#_refundRequestRelationshipLabel").hide();
                $("#_refundRequestRelationshipLabel").hide();
                $("#_refundRequestRelationship").hide();
                $("#_refundRequestRelationship").hide();
               
                ToggleValidatorOff();

               

            }
        });

      

        $("#_refundRequestRepCheckB").change(function () {
            if ($(this).is(":checked")) {
                $("#_refundRequestRepAdd2Label").attr("Disabled", false);
                $("#_refundRequestRepAdd2Text").attr("Disabled", false);
                $("#_refundRequestRepAddLabel").attr("Disabled", false);
                $("#_refundRequestRepAddText").attr("Disabled", false);
                $("#_refundRequestRepAreaCodeText").attr("Disabled", false);
                $("#_refundRequestRepCompanyNameLabel").attr("Disabled", false);
                $("#_refundRequestRepCompanyNameText").attr("Disabled", false);
                $("#_refundRequestRepConfirmEmailLabel").attr("Disabled", false);
                $("#_refundRequestRepConfirmEmailText").attr("Disabled", false);
                $("#_refundRequestRepCountryLabel").attr("Disabled", false);
                $("#_refundRequestRepCountryList").attr("Disabled", false);
                $("#_refundRequestRepCountyLabel").attr("Disabled", false);
                $("#_refundRequestRepCountyText").attr("Disabled", false);
                $("#_refundRequestRepEmail").attr("Disabled", false);
                $("#_refundRequestRepEmailLabel").attr("Disabled", false);
                $("#_refundRequestRepInfoLabel").attr("Disabled", false);
                $("#_refundRequestRepLastnameText").attr("Disabled", false);
                $("#_refundRequestRepNameLabel").attr("Disabled", false);
                $("#_refundRequestRepNameText").attr("Disabled", false);
                $("#_refundRequestRepPhoneNumberLabel").attr("Disabled", false);
                $("#_refundRequestRepPhoneNumberText").attr("Disabled", false);
                $("#_refundRequestRepSalutation").attr("Disabled", false);
                $("#_refundRequestRepTownLabel").attr("Disabled", false);
                $("#_refundRequestRepTownText").attr("Disabled", false);
                $("#_refundRequestRepZipLabel").attr("Disabled", false);
                $("#_refundRequestRepZipText").attr("Disabled", false);
                $("#_refundRequestRepAdd2Label").attr("Disabled", false);
                $("#_refundRequestRepAdd2Text").attr("Disabled", false);
                $("#_refundRequestRepAddLabel").attr("Disabled", false);
                $("#_refundRequestRepAddText").attr("Disabled", false);
                $("#_refundRequestRepAreaCodeText").attr("Disabled", false);
                $("#_refundRequestRepCompanyNameLabel").attr("Disabled", false);
                $("#_refundRequestRepCompanyNameText").attr("Disabled", false);
                $("#_refundRequestRepConfirmEmailLabel").attr("Disabled", false);
                $("#_refundRequestRepConfirmEmailText").attr("Disabled", false);
                $("#_refundRequestRepCountryLabel").attr("Disabled", false);
                $("#_refundRequestRepCountryList").attr("Disabled", false);
                $("#_refundRequestRepCountyLabel").attr("Disabled", false);
                $("#_refundRequestRepCountyText").attr("Disabled", false);
                $("#_refundRequestRepEmail").attr("Disabled", false);
                $("#_refundRequestRepEmailLabel").attr("Disabled", false);
                $("#_refundRequestRepInfoLabel").attr("Disabled", false);
                $("#_refundRequestRepLastnameText").attr("Disabled", false);
                $("#_refundRequestRepNameLabel").attr("Disabled", false);
                $("#_refundRequestRepNameText").attr("Disabled", false);
                $("#_refundRequestRepPhoneNumberLabel").attr("Disabled", false);
                $("#_refundRequestRepPhoneNumberText").attr("Disabled", false);
                $("#_refundRequestRepSalutation").attr("Disabled", false);
                $("#_refundRequestRepTownLabel").attr("Disabled", false);
                $("#_refundRequestRepTownText").attr("Disabled", false);
                $("#_refundRequestRepZipLabel").attr("Disabled", false);
                $("#_refundRequestRepZipText").attr("Disabled", false);
                $("#_refundRequestRelationshipLabel").attr("Disabled", false);
                $("#_refundRequestRelationshipLabel").attr("Disabled", false);
                $("#_refundRequestRelationship").attr("Disabled", false);
                $("#_refundRequestRelationship").attr("Disabled", false);

              
                $("#_refundRequestRepAreaCodeText").show();
                $("#_refundRequestRepAddText").show();
                $("#_refundRequestRepCompanyNameLabel").show();
                $("#_refundRequestRepCompanyNameText").show();
                $("#_refundRequestRepConfirmEmailLabel").show();
                $("#_refundRequestRepConfirmEmailText").show();
                $("#_refundRequestRepCountryLabel").show();
                $("#_refundRequestRepCountryList").show();
                $("#_refundRequestRepCountyLabel").show();
                $("#_refundRequestRepCountyText").show();
                $("#_refundRequestRepEmail").show();
                $("#_refundRequestRepEmailLabel").show();
                $("#_refundRequestRepInfoLabel").show();
                $("#_refundRequestRepLastnameText").show();
                $("#_refundRequestRepNameLabel").show();
                $("#_refundRequestRepNameText").show();
                $("#_refundRequestRepPhoneNumberLabel").show();
                $("#_refundRequestRepPhoneNumberText").show();
                $("#_refundRequestRepSalutation").show();
                $("#_refundRequestRepTownLabel").show();
                $("#_refundRequestRepTownText").show();
                $("#_refundRequestRepZipLabel").show();
                $("#_refundRequestRepZipText").show();
                $("#_refundRequestRepAdd2Label").show();
                $("#_refundRequestRepAdd2Text").show();
                $("#_refundRequestRepAddLabel").show();
                $("#_refundRequestRepAddText").show();
                $("#_refundRequestRepAreaCodeText").show();
                $("#_refundRequestRepCompanyNameLabel").show();
                $("#_refundRequestRepCompanyNameText").show();
                $("#_refundRequestRepConfirmEmailLabel").show();
                $("#_refundRequestRepConfirmEmailText").show();
                $("#_refundRequestRepCountryLabel").show();
                $("#_refundRequestRepCountryList").show();
                $("#_refundRequestRepCountyLabel").show();
                $("#_refundRequestRepCountyText").show();
                $("#_refundRequestRepEmail").show();
                $("#_refundRequestRepEmailLabel").show();
                $("#_refundRequestRepInfoLabel").show();
                $("#_refundRequestRepLastnameText").show();
                $("#_refundRequestRepNameLabel").show();
                $("#_refundRequestRepNameText").show();
                $("#_refundRequestRepPhoneNumberLabel").show();
                $("#_refundRequestRepPhoneNumberText").show();
                $("#_refundRequestRepSalutation").show();
                $("#_refundRequestRepTownLabel").show();
                $("#_refundRequestRepTownText").show();
                $("#_refundRequestRepZipLabel").show();
                $("#_refundRequestRepZipText").show();
                $("#_refundRequestRelationshipLabel").show();
                $("#_refundRequestRelationshipLabel").show();
                $("#_refundRequestRelationship").show();
                $("#_refundRequestRelationship").show();
                ToggleValidatorOn();
            }
        });
    </script>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>

<script>

    $('#_refundRequestFirstName').keyup(function (e) {
    var txtVal = $(this).val();
    $('#_requestRefundGuest1Name').val(txtVal);
    });

    $('#_refundRequestLastName').keyup(function (e) {
        var txtVal = $(this).val();
        $('#_requestRefundGuest1LastName').val(txtVal);
    });

    $('#_refundRequestSalutation').click (function (e) {
        var txtVal = $(this).val();
        $('#_requestRefundGuest1SalutationLabel').val(txtVal)
    });
    $('#_refundRequestSalutation').keyup(function (e) {
        var txtVal = $(this).val();
        $('#_requestRefundGuest1SalutationLabel').val(txtVal)
    });

    $("#_refundRequestAerClubDropDown").change(function () {
        var membertier = this.value;
        if (membertier != "Selected")
        {
            $("#_refundRequestAerClubmembershipId").attr('disabled', false);
        } else {
            $("#_refundRequestAerClubmembershipId").attr('disabled', true);
        }
        
    });

    
    
    $(window).on("load", function () {

        $("#_refundRequestGuestCheckB").click();
        var reasontype = $("#_requestRefundReasonType").val();
        if (reasontype != "Selected") {

            if (reasontype == "Flight Related") {
                $("#_addnewRefundReasonbutton1").hide();
            }
            if (reasontype == "Fee Related") {
                $("#_addnewRefundReasonbutton1").show();
            }
            if (reasontype == "Compensation Related") {
                $("#_addnewRefundReasonbutton1").show();
            }

        } else {

        }


    });


    $("#_requestRefundReasonType").change(function () {
        var reasontype = this.value;
        if (this.value != "Selected") {
            $("#_requestRefundReasonInfo").attr("Disabled", false);
            $("#_requestRefundReasonInfo").empty();
        } else {
            $("#_requestRefundReasonInfo").attr("Disabled", true);
           
        }
        var reasontype = $("#_requestRefundReasonType").val();
        if (reasontype != "Selected") {

            if (reasontype == "Flight Related") {
                $("#_addnewRefundReasonbutton1").hide();
                $("#_addnewRefundReasonbutton2").hide();
                $("#_requestRefundReasonType2").hide();
                $("#_requestRefundReasonType3").hide();
                $("#_requestRefundReasonInfo2").hide();
                $("#_requestRefundReasonInfo3").hide();
                $("#_requestRefundReasonType2").val("Selected");
                $("#_requestRefundReasonType3").val("Selected");
                $("#_requestRefundReasonInfo2").val("Selected");
                $("#_requestRefundReasonInfo3").val("Selected");
            }
            if (reasontype == "Fee Related") {
                $("#_addnewRefundReasonbutton1").show();
            }
            if (reasontype == "Compensation Related") {
                $("#_addnewRefundReasonbutton1").show();
            }

        } else {
            $("#_addnewRefundReasonbutton1").hide();
            $("#_requestRefundReasonType2").hide();
            $("#_requestRefundReasonType3").hide();
            $("#_requestRefundReasonInfo2").hide();
            $("#_requestRefundReasonInfo3").hide();
            $("#_requestRefundReasonType2").val = "Selected";
            $("#_requestRefundReasonType3").val = "Selected";
            $("#_requestRefundReasonInfo2").val = "Selected";
            $("#_requestRefundReasonInfo3").val = "Selected";
        }
        if (this.value == "Flight Related") {
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Bereavement",
                value: "Bereavement"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Cancelled Flight",
                value: "Cancelled Flight"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Delayed Flight",
                value: "Delayed Flight"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Disrupted Flight",
                value: "Disrupted Flight"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Duplicate Booking",
                value: "Duplicate Booking"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Flex/Business Class Booking",
                value: "Flex/Business Class Booking"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Schedule Change",
                value: "Schedule Change"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Tax Refund",
                value: "Tax Refund"
            }));
        }

        if (this.value == "Fee Related") {
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Bag Fee",
                value: "Bag Fee"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "PreOrder Meal",
                value: "PreOrder Meal"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Seat Fee (Choice/Exit/Premium)",
                value: "Seat Fee (Choice/Exit/Premium)"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Upgrade Yourself",
                value: "Upgrade Yourself"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Other",
                value: "Other"
            }));
        }

        if (this.value == "Compensation Related") {
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Accommodation",
                value: "Accommodation"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Cancelled Flight",
                value: "Cancelled Flight"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Seat Fee (Choice/Exit/Premium)",
                value: "Seat Fee (Choice/Exit/Premium)"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Delayed Flight",
                value: "Delayed Flight"
            }));
            $("#_requestRefundReasonInfo").append($('<option>', {
                text: "Voucher",
                value: "Voucher"
            }));
        }
       
    });

    $("#_addnewRefundReasonbutton1").click(function () {
        $("#_requestRefundReasonType2").show();

       
        $("#_requestRefundReasonInfo2").show();
        $("#_addnewRefundReasonbutton2").show();

    });

    $("#_requestRefundReasonType2").change(function () {
        if (this.value != "Selected") {
            $("#_requestRefundReasonInfo2").attr("Disabled", false);
            $("#_requestRefundReasonInfo2").empty();
        } else {
            $("#_requestRefundReasonInfo2").attr("Disabled", true);
        }
        
        if(this.value=="Fee Related")
        {
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Bag Fee",
                value: "Bag Fee"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "PreOrder Meal",
                value: "PreOrder Meal"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Seat Fee (Choice/Exit/Premium)",
                value: "Seat Fee (Choice/Exit/Premium)"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Upgrade Yourself",
                value: "Upgrade Yourself"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Other",
                value: "Other"
            }));
        }

        if (this.value == "Compensation Related") {
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Accommodation",
                value: "Accommodation"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Cancelled Flight",
                value: "Cancelled Flight"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Seat Fee (Choice/Exit/Premium)",
                value: "Seat Fee (Choice/Exit/Premium)"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Delayed Flight",
                value: "Delayed Flight"
            }));
            $("#_requestRefundReasonInfo2").append($('<option>', {
                text: "Voucher",
                value: "Voucher"
            }));
        }
    });
    $("#_requestRefundReasonType3").change(function () {
        if (this.value != "Selected")
        {
            $("#_requestRefundReasonInfo3").attr("Disabled", false);
            $("#_requestRefundReasonInfo3").empty();
        } else {
            $("#_requestRefundReasonInfo3").attr("Disabled", true);
        }

        if (this.value == "Fee Related") {
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Bag Fee",
                value: "Bag Fee"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "PreOrder Meal",
                value: "PreOrder Meal"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Seat Fee (Choice/Exit/Premium)",
                value: "Seat Fee (Choice/Exit/Premium)"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Upgrade Yourself",
                value: "Upgrade Yourself"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Other",
                value: "Other"
            }));
        }

        if (this.value == "Compensation Related") {
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Please choose",
                value: "Selected"
            }));

            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Accommodation",
                value: "Accommodation"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Cancelled Flight",
                value: "Cancelled Flight"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Seat Fee (Choice/Exit/Premium)",
                value: "Seat Fee (Choice/Exit/Premium)"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Delayed Flight",
                value: "Delayed Flight"
            }));
            $("#_requestRefundReasonInfo3").append($('<option>', {
                text: "Voucher",
                value: "Voucher"
            }));
        }
    });
   
    $("#_addnewRefundReasonbutton2").click(function () {
        $("#_requestRefundReasonType3").show();
        $("#_requestRefundReasonInfo3").show();
        

    });
</script>
    <script type="text/javascript">
   
</script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
       $(function () {
           $("#_requestRefundDateOfFlight").datepicker({ dateFormat: 'dd-M-yy' });});
</script>
 <script type="text/javascript">
      
      $(function () {

          $(".water").each(function () {
              $tb = $(this);
              if ($tb.val() != this.title) {
                  $tb.removeClass("water");
              }
          });

          $(".water").focus(function () {
              $tb = $(this);
              if ($tb.val() == this.title) {
                  $tb.val("");
                  $tb.removeClass("water");
              }
          });

          $(".water").blur(function () {
              $tb = $(this);
              if ($.trim($tb.val()) == "") {
                  $tb.val(this.title);
                  $tb.addClass("water");
              }
          });
      });


      $("#_refundRequestCountryList").change(function () {
          alert(this.value);
          $("#_refundRequestTelephoneCode").val(this.value);
         
      });

      $("#_refundRequestAerClubDropDown").change(function () {
          if(this.value!="Selected")
          {
              $("#_refundRequestAerClubmembershipId").attr("disabled", false);
              ValidatorEnable(document.getElementById("_refundRequestAerClubValidator"), true);
          } else {
              $("#_refundRequestAerClubmembershipId").attr("disabled", true);
              $("#_refundRequestAerClubmembershipId").addClass("water");
              ValidatorEnable(document.getElementById("_refundRequestAerClubValidator"), false);
          }
      });

      setSelect('#refundRequestCountrieslist', '/XML DataSource/Countries.xml', 'countries');

      function setSelect(selectid, xmlpath, xmlnode) {
          var loadingtext = '-- Loading --';
          var loadinghtml = '<option value="">' + loadingtext + '</option>';
          var randomno = Math.ceil(Math.random() * 999);

          $(selectid).html(loadinghtml);

          $.ajax({
              url: xmlpath + '?=rn' + randomno,
              success: function (xml) {
                  parseSelectXML(xml, selectid, xmlnode)
              },
              error: function (xhr, ajaxOptions, thrownError) {
                  alert(xhr.status);
                  alert(thrownError);
              }
          });
      }

      function parseSelectXML(xml, selectid, xmlnode) {
          var firstoption = '-- Select Country --';
          var firsthtml = '<option value="">' + firstoption + '</option>';
          var selecthtml = '';

          $(xml).find(xmlnode).each(function () {

              var selecttext = $(this).find('ID').attr('value');
              var selectvalue = $(this).find('Name').attr('value');
              selecthtml += '<option value="' + selectvalue + '">' + selecttext + '</option>';
          });

          $(selectid).html(firsthtml + selecthtml);
      }

 </script>
   
  
</html>
