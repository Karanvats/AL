using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NeedHelp : System.Web.UI.Page
{
    /// <summary>
    /// Page load Event Triggers as soon as page loads loads the list of countries from the xml
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
       


    }

       /// <summary>
    /// Build message body for the email in plain text
    /// </summary>
    /// <param name="_FormID"></param>
    /// <returns></returns>
   
    protected string BuildMessageBody(string _FormID)
    {
        
        string sEmailFormId;
        string lsFormIdBuild = _FormID;
        if (lsFormIdBuild == "USA")
        {
            sEmailFormId = ConfigurationManager.AppSettings["USANeedHelpFormId"];
           
        }
        else
        {
            sEmailFormId = ConfigurationManager.AppSettings["OthersNeedHelpFormId"];
           
        }

        
        StringBuilder sbBodyTextString = new StringBuilder();
        sbBodyTextString.AppendLine("EmailFormId: " + sEmailFormId);
        sbBodyTextString.AppendLine("Email: " + Request.Form["_helpQueryEmail"]);
        sbBodyTextString.AppendLine("PassengerTitle: " + _helpQuerySalutation.SelectedValue.ToString());
        sbBodyTextString.AppendLine("Passenger Given Name: " +Request.Form["helpQueryFirstName"]);
        sbBodyTextString.AppendLine("Passenger Last Name: " + Request.Form["helpQueryLastName"]);
        string countrycode = _helpQueryTelephoneCode.SelectedValue;
        sbBodyTextString.AppendLine("Country: " + Request.Form["_helpQueryCountryList"]);
        char[] delimiterChars = {  '(', ')' };
        string[] code = _helpQueryTelephoneCode.SelectedItem.ToString().Split(delimiterChars);
        sbBodyTextString.AppendLine("Telephone: " +code[1].ToString() +" " + Request.Form["_helpQueryTelephoneNumber"]);
        if (Request.Form["_helpQueryAerClubDropDown"]!="Selected")
        {
            sbBodyTextString.AppendLine("AerClub Tier: " + Request.Form["_helpQueryAerClubDropDown"]);
            sbBodyTextString.AppendLine("AerClub Member ID: " + Request.Form["_helpQueryAerClubmembershipId"]);
        }
        else
        {
            sbBodyTextString.AppendLine("AerClub Tier: " + "");
            sbBodyTextString.AppendLine("AerClub Member ID: " + "");

        }

        sbBodyTextString.AppendLine("Request Number: " + Request.Form["_helpQueryFlightNumber"]);
        sbBodyTextString.AppendLine("Flight Date: " + _helpQueryDateOfFlight.Text.ToString());
        sbBodyTextString.AppendLine("Reference Number: " + Request.Form["_helpQuerybookingReferenceNumber"]);
        sbBodyTextString.AppendLine("Query Type: " + _helpQueryTypeDropDownList.SelectedItem.ToString());
        sbBodyTextString.AppendLine("Query Definition: " + Request.Form["_helpQueryDefList"]);
        sbBodyTextString.AppendLine("Comments: " + _helpQueryAdditionInformation.Text.ToString());


        return sbBodyTextString.ToString();
    }
    /// <summary>
    /// Submits the request to the server 
    /// On Completion -success redirrects to thankyou page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Page.Validate();
       
      
        string selectedCountry = Request.Form["_helpQueryCountryList"];
        MailMessage _helpMessage = new MailMessage();
        //_helpMessage.From = new MailAddress(ConfigurationManager.AppSettings["ContactUsFromAddress"]);
        _helpMessage.From = new MailAddress("vats.karan@gmail.com");
        if (Request.Form["_helpQueryCountryList"] == "USA")
        {
            _helpMessage.To.Add(ConfigurationManager.AppSettings["USANeedHelpToAddress"]);
            _helpMessage.Subject = ConfigurationManager.AppSettings["USANeedHelpSubject"];
        }
        else
        {
            _helpMessage.To.Add(ConfigurationManager.AppSettings["OthersNeedHelpToAddress"]);
            _helpMessage.Subject = ConfigurationManager.AppSettings["OthersNeedHelpFormId"];
        }

        string _messgebody = BuildMessageBody(Request.Form["_helpQueryCountryList"]);
        //SmtpClient SMTPServer = new SmtpClient();
        SmtpClient SMTPServer = new SmtpClient("smtp.gmail.com");
        SMTPServer.Credentials = new NetworkCredential("vats.karan@gmail.com", "indu@1984");
        SMTPServer.Port = 587;
        //SMTPServer.DeliveryFormat = SmtpDeliveryFormat.International;
        SMTPServer.EnableSsl = true;
        AlternateView PlainText;
        PlainText = AlternateView.CreateAlternateViewFromString(_messgebody, null, "text/plain");
        _helpMessage.AlternateViews.Add(PlainText);
        _helpMessage.BodyEncoding = Encoding.UTF8;
        _helpMessage.SubjectEncoding = Encoding.UTF8;
       
        if(_helpQueryFileUploader.HasFile)
        {
           
            _helpMessage.Attachments.Add(new System.Net.Mail.Attachment(_helpQueryFileUploader.PostedFile.InputStream, _helpQueryFileUploader.FileName));
        }
        try
        {
            SMTPServer.Send(_helpMessage);
            string sThankYouRedirect;
            if (selectedCountry == "USA")
                //
  sThankYouRedirect = ConfigurationManager.AppSettings["USAThankYouPage"];
            else
                sThankYouRedirect = ConfigurationManager.AppSettings["OtherThankYouPage"];

            if (sThankYouRedirect.Length == 0)
            {
              //  hidden.SelectedIndex = 1;
                Response.Redirect("ThankYou.aspx");
            }
            else
                Response.Redirect(sThankYouRedirect);

            _helpMessage.Dispose();
        }
        catch (SmtpException smtpEx)
        {

        }

    }


}