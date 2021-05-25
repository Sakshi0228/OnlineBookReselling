<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="OnlineBookReselling.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/customStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="row">
                <div class="col">
                    <h1 class="maintitle">Vision</h1>
                    <p class="subtitle"><b>What do we want?</b></p>
                    <hr />
                </div>
                </div>
            <div class="row">
            <p>Online Book Reselling started with the aim to allow customers to buy books from the comfort of home through the internet.
                Lorem ipsum dolor sit amet, sint dicam et est, an nihil vulputate adversarium per. Vix quaeque deleniti in. Duo ex decore ocurreret. Alia essent ad quo. In vel phaedrum laboramus adipiscing, sit mollis suavitate ut.
Te numquam officiis vipisci dissentias at vix, detraxit consulatu intellegebat in sea, quo an oblique concludaturque. Vix ut blandit fastidii, commune neglegentur eu vis. Posse persequeris ne nam, mei tamquam voluptatibus eu. Eum ut alii iusto, ex est dicat dicant, eam quas saperet blandit id.
            </p>
            </div>
        </div>
        <div class="col-md-6">
            <img src="imgs/BookStack.png" width ="500"/>
        </div>
    </div>
  </div>
    <div class="container">
    <div class="row">
        <div class="col-12">
            <center>
                <div class="row">
                    <div class="col-12">
                    <h1 class="maintitle">Who we are?</h1>
                        <p class="subtitle"><b>This is our history</b></p>
                    <hr />
                    </div>       
                </div>
            <div class="row">
                <div class="col-md-12">
                    <p>Lorem ipsum dolor sit amet, sint dicam et est, an nihil vulputate adversarium per. Vix quaeque deleniti in. Duo ex decore ocurreret. Alia essent ad quo. In vel phaedrum laboramus adipiscing, sit mollis suavitate ut.
Te numquam officiis vipisci dissentias at vix, detraxit consulatu intellegebat in sea, quo an oblique concludaturque. Vix ut blandit fastidii, commune neglegentur eu vis. Posse persequeris ne nam, mei tamquam voluptatibus eu. Eum ut alii iusto, ex est dicat dicant, eam quas saperet blandit id.</p>
                <img src="imgs/books%20shelf.png" class="img-fluid"/>
            </div></div>
            </center>
    </div>
  </div>
</div>
    <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2 class="maintitle">How we Work</h2>
                  <p class="subtitle"><b>We have a Simple 3 Step Process</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="200" src="imgs/sign-up.png" />
                  <h4 class="t1">Sign Up</h4>
                  <p class="text-justify">Make an account as you can't remember 1000's of books we can't remember 1000's of you!</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="200" src="imgs/search-online.png"/>
                  <h4 class="t1">Search Books</h4>
                  <p class="text-justify">Search for the book you want. Just click on Buy and relax.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="200" src="imgs/library.png"/>
                  <h4 class="t1">Payment</h4>
                  <p class="text-justify">Found the book you wanted? Now pay us via our easy payment method and we'll ship your book.</p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
