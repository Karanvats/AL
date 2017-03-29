<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ContactUs.ThankYou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
    <title></title>
    <link href="ContactUs.css" type="text/css" rel="stylesheet" /> 
     <link rel="stylesheet" href="js/style-2.css" />
     <link rel="stylesheet" href="js/screen.css"/>
     <link rel="stylesheet" href="js/Style-3.css" />
   <script src="/js/jquery.validate.js" type="text/javascript"></script>
    <script src="/js/jquery-1.8.2.js" type="text/javascript"></script>
    <style> 
#rcorners1 {
    border-radius: 25px;
    background: #73AD21;
    padding: 20px; 
    width: 200px;
    height: 150px;    
}

div {
    border-radius: 25px;
    border: 2px solid #73AD21;
  margin-left:auto;
  margin-right:auto;
    width: 500px;
    margin-top:100px;
    height: 150px;    
}

span{
     color: blue;
    font-family: verdana;
    font-size: 16px;
}


</style>
</head>
    <body style="align-items:center">
        <div  style="align-content:center;width:600px;height:150px;border:2px solid #73AD21 ; border-radius:10px;align-content:center">
            <table>
                <tr><td>
            <table >
                <tr>
                    <td style="margin:5px">
                        <asp:Image ImageUrl="~/Images/right-check-mark.jpg" width="130px" height="136px"    runat="server"></asp:Image>

                    </td>
                    <td>
                        <table >
                            <tr><td ><span class="tealGreen xl">Help Request Sent</span></td></tr>
                            <tr><td><span class="tealGreen xl">Thank You</span></td></tr>
                            <tr><td><span class="tealGreen xl">Your Help Request has been Sent Successfully</span></td></tr>
                        </table>
                    </td>
                   
                    </tr>
            </table>
                    </td><td  style="vertical-align:top;"><a id="crossbutton" href="NeedHelp.aspx" style="margin:8px;width:20px;height:20px">&#10006;</a></td></tr>
                </table>
             
        </div>
        
</body>
</html>