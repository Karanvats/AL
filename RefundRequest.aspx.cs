using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RefundRequest : System.Web.UI.Page
{
    string info1;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   /// <summary>
   /// Dunakl
   /// </summary>
   /// <param name="sender"></param>
   /// <param name="e"></param>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Page.Validate();

        if (!Page.IsValid)
            return;

        
            MailMessage _helpMessage = new MailMessage();
            _helpMessage.From = new MailAddress(ConfigurationManager.AppSettings["ContactUsFromAddress"]);
            //if (_refundRequestCountryList.SelectedValue == "USA")
            //{
            //    _helpMessage.To.Add(ConfigurationManager.AppSettings["USARequestRefundToAddress"]);
            //    _helpMessage.Subject = ConfigurationManager.AppSettings["USARequestRefundSubject"];
            //}
            //else
            //{
            //    _helpMessage.To.Add(ConfigurationManager.AppSettings["OthersRequestRefundToAddress"]);
            //    _helpMessage.Subject = ConfigurationManager.AppSettings["OthersRequestRefundSubject"];
            //}

          //  string _messgebody = BuildMessageBody(_refundRequestCountryList.SelectedValue);
            SmtpClient SMTPServer = new SmtpClient();


          
            AlternateView PlainText;
            //PlainText = AlternateView.CreateAlternateViewFromString(_messgebody, null, "text/plain");
            //_helpMessage.AlternateViews.Add(PlainText);
            //_helpMessage.BodyEncoding = Encoding.UTF8;
            //_helpMessage.SubjectEncoding = Encoding.UTF8;

            if (_refundRequestFileUploader.HasFile)
            {

                _helpMessage.Attachments.Add(new System.Net.Mail.Attachment(_refundRequestFileUploader.PostedFile.InputStream, _refundRequestFileUploader.FileName));
            }
            try
            {
                SMTPServer.Send(_helpMessage);
                string sThankYouRedirect;
                //if (_refundRequestCountryList.SelectedValue == "USA")
                //    sThankYouRedirect = ConfigurationManager.AppSettings["USAThankYouPage"];
                //else
                //    sThankYouRedirect = ConfigurationManager.AppSettings["OtherThankYouPage"];

                //if (sThankYouRedirect.Length == 0)
                //    Response.Redirect("ThankYou.aspx");
                //else
                //    Response.Redirect(sThankYouRedirect);

                _helpMessage.Dispose();
            }
            catch (SmtpException smtpEx)
            {

            }
        
    }
   
    
    
   /// <summary>
   /// Building message body for the Email
   /// </summary>
   /// <param name="_FormID"></param>
   /// <returns></returns>
    private string BuildMessageBody(string _FormID)
    {
        string sEmailFormId;
        string lsFormIdBuild = _FormID;
        if (lsFormIdBuild == "USA")
        {
            sEmailFormId = ConfigurationManager.AppSettings["USARequestRefundFormId"];

        }
        else
        {
            sEmailFormId = ConfigurationManager.AppSettings["OthersRequestRefundFormId"];

        }


        StringBuilder sbBodyTextString = new StringBuilder();
        sbBodyTextString.AppendLine("EmailFormId: " + sEmailFormId);
        if(_refundRequestGuestCheckB.Checked)
        {
            sbBodyTextString.AppendLine("Guest: " + "Yes");
        }
        else
        {
            sbBodyTextString.AppendLine("Guest: " + "No");
        }
        //sbBodyTextString.AppendLine("Email: " + _refundRequestEmail.Text);
        //sbBodyTextString.AppendLine("PassengerTitle: " + _refundRequestSalutation.SelectedItem.Text);
        //sbBodyTextString.AppendLine("Passenger Given Name: " + _refundRequestFirstName.Text);
        //sbBodyTextString.AppendLine("Passenger Last Name: " + _refundRequestLastName.Text);
        //sbBodyTextString.AppendLine("Country: " + _refundRequestCountryList.SelectedValue);
        //sbBodyTextString.AppendLine("Telephone: " + _refundRequestTelephoneCode.Text + "" + _refundRequestTelephoneNumber.Text);
        //if (_refundRequestAerClubDropDown.SelectedValue != "Selected")
        //{
        //    sbBodyTextString.AppendLine("AerClub Tier: " + _refundRequestAerClubDropDown.SelectedValue);
        //    sbBodyTextString.AppendLine("AerClub Member ID: " + _refundRequestAerClubmembershipId.Text);
        //}
        //else
        //{
        //    sbBodyTextString.AppendLine("AerClub Tier: " + "");
        //    sbBodyTextString.AppendLine("AerClub Member ID: " + "");

        //}
        //sbBodyTextString.AppendLine("Representative Given Name: "+_refundRequestRepNameText.Text);
        //sbBodyTextString.AppendLine("Representative Last Name: "+_refundRequestRepLastnameText.Text);
        //sbBodyTextString.AppendLine("Representative Company Name: "+_refundRequestRepCompanyNameText.Text);
        //sbBodyTextString.AppendLine("Representative Email Address: "+_refundRequestRepEmail.Text);
        //sbBodyTextString.AppendLine("Representative Phone Number: "+_refundRequestRepPhoneNumberText.Text);
        //if(_refundRequestRepCountryList.SelectedValue !="selected")
        //{
        //    sbBodyTextString.AppendLine("Representative Country: " + _refundRequestRepCountryList.SelectedValue);
        //}
        //else
        //{
        //    sbBodyTextString.AppendLine("Representative Country: " + "");
        //}
        
        //sbBodyTextString.AppendLine("Representative Address: "+_refundRequestRepAddText.Text);
        //sbBodyTextString.AppendLine("Representative Address2: "+_refundRequestRepAdd2Text.Text);
        //sbBodyTextString.AppendLine("Representative Town/City: "+_refundRequestRepTownText.Text);
        //sbBodyTextString.AppendLine("Representative County/State: "+_refundRequestRepCountyText.Text);
        //sbBodyTextString.AppendLine("Representative Zip Code: "+_refundRequestRepZipText.Text);
        //if(_refundRequestRelationship.SelectedValue!="selected")
        //{
        //    sbBodyTextString.AppendLine("Representative Relationship to Guest: " + _refundRequestRelationship.Text);
        //}
        //else
        //{
        //    sbBodyTextString.AppendLine("Representative Relationship to Guest: " + "");
        //}
        
        //sbBodyTextString.AppendLine("Flight Number: " + _requestRefundFlightNumber.Text);
        //sbBodyTextString.AppendLine("Flight Date: " + _requestRefundDateOfFlight.Text);
        //sbBodyTextString.AppendLine("Reference Number: " + _requestRefundBookingRefNumber.Text);
        //sbBodyTextString.AppendLine("Guest1 Salutation: "+_requestRefundGuest1SalutationLabel.SelectedValue);
        //sbBodyTextString.AppendLine("Guest1 Name: "+_requestRefundGuest1Name.Text);
        //sbBodyTextString.AppendLine("Guest1 Last Name: "+_requestRefundGuest1LastName.Text);
        //if(_requestRefundGuest2SalutationLabel.SelectedValue!="none")
        //{
        //    sbBodyTextString.AppendLine("Guest2 Salutation: " + _requestRefundGuest2SalutationLabel.SelectedValue);
        //    sbBodyTextString.AppendLine("Guest2 Name: " + _requestRefundGuest2Name.Text);
        //    sbBodyTextString.AppendLine("Guest2 Last Name: " + _requestRefundGuest2LastName.Text);
        //}
        //else
        //{
        //    sbBodyTextString.AppendLine("Guest2 Salutation: " + "");
        //    sbBodyTextString.AppendLine("Guest2 Name: " + "");
        //    sbBodyTextString.AppendLine("Guest2 Last Name: " + "");
        //}
        //if(_requestRefundGuest3SalutationLabel.SelectedValue!="none")
        //{
        //    sbBodyTextString.AppendLine("Guest3 Salutation: " + _requestRefundGuest3SalutationLabel.SelectedValue);
        //    sbBodyTextString.AppendLine("Guest3 Name: " + _requestRefundGuest3Name.Text);
        //    sbBodyTextString.AppendLine("Guest3 Last Name: " + _requestRefundGuest3LastName.Text);
        //}else
        //{
        //    sbBodyTextString.AppendLine("Guest3 Salutation: " + "");
        //    sbBodyTextString.AppendLine("Guest3 Name: " + "");
        //    sbBodyTextString.AppendLine("Guest3 Last Name: " +"");

        //}
        //if(_requestRefundGuest4SalutationLabel.SelectedValue!="none")
        //{
        //    sbBodyTextString.AppendLine("Guest4 Salutation: " + _requestRefundGuest4SalutationLabel.SelectedValue);
        //    sbBodyTextString.AppendLine("Guest4 Name: " + _requestRefundGuest4Name.Text);
        //    sbBodyTextString.AppendLine("Guest4 Last Name: " + _requestRefundGuest4LastName.Text);
        //}
        //else
        //{
        //    sbBodyTextString.AppendLine("Guest4 Salutation: " + "");
        //    sbBodyTextString.AppendLine("Guest4 Name: " +"");
        //    sbBodyTextString.AppendLine("Guest4 Last Name: " + "");
        //}
        //if(_requestRefundGuest5SalutationLabel.SelectedValue!="none")
        //{
        //    sbBodyTextString.AppendLine("Guest5 Salutation: " + _requestRefundGuest5SalutationLabel.SelectedValue);
        //    sbBodyTextString.AppendLine("Guest5 Name: " + _requestRefundGuest5Name.Text);
        //    sbBodyTextString.AppendLine("Guest5 Last Name: " + _requestRefundGuest5LastName.Text);
        //}else
        //{
        //    sbBodyTextString.AppendLine("Guest5 Salutation: "+"");
        //    sbBodyTextString.AppendLine("Guest5 Name: " +"");
        //    sbBodyTextString.AppendLine("Guest5 Last Name: "+"");
        //}
      
        //sbBodyTextString.AppendLine("Query Type: " + _requestRefundReasonType.SelectedValue);
        //sbBodyTextString.AppendLine("Query Info: " + _requestRefundReasonInfo.SelectedValue);
        //sbBodyTextString.AppendLine("Query Type2: " + _requestRefundReasonType2.SelectedValue);
        //sbBodyTextString.AppendLine("Query Info2: " + _requestRefundReasonInfo2.SelectedValue);
        //sbBodyTextString.AppendLine("Query Type3: " + _requestRefundReasonType3.SelectedValue);
        //sbBodyTextString.AppendLine("Query Info3: " + _requestRefundReasonInfo3.SelectedValue);
        //sbBodyTextString.AppendLine("Comments: " + _refundRequestAdditionInformation.Text);


        return sbBodyTextString.ToString();
    }


    protected void _requestRefundReasonInfo_SelectedIndexChanged(object sender, EventArgs e)
    {
        info1 = _requestRefundReasonInfo.SelectedValue;
    }
}