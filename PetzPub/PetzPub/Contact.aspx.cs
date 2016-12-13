using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace PetzPub
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void SendMail()
        {
        
            var fromAddress = "jerrywartak@gmail.com";
            var toAddress = YourEmail.Text.ToString();
            const string fromPassword = "Password";
            string subject = YourSubject.Text.ToString();
            string body = "From: " + YourName.Text + "\n";
            body += "Email: " + YourEmail.Text + "\n";
            body += "Subject: " + YourSubject.Text + "\n";
            body += "Question: \n" + Comments.Text + "\n";

            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }

            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SendMail();
                DisplayMessage.Text = "We will get back to you as soon as possible! Thanks! -PetzPub";
                DisplayMessage.Visible = true;
                YourSubject.Text = "";
                YourEmail.Text = "";
                YourName.Text = "";
                Comments.Text = "";
            }
            catch (Exception) { }
        }
    }
}