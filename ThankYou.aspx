<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ContactUs.ThankYou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="ContactUs.css" type="text/css" rel="stylesheet" />    
    <script type="text/javascript">
        window.onload=function()
        {
               location.href=location.href+'#'; // Appends "#" to the current location so it will go on top.
        }
     </script>
</head>
<body>
    <div class="DivBody" align="center">
        <div class="DivForm">
            <table>
                <tr>
                    <td><img src="/images/right-check-mark.jpg" style="width: 102px; height: 69px" /> </td>
                    <td>
                        <div id="BlockText" style="text-align: left; width:430;color:green">
                Refund Request Sent Successfully<br />
                Thank you.<br />
                Your Refund Request has been sent successfully</div>
        </div>
                    </td>
                </tr>
            </table>
            
    </div>
</body>
</html>