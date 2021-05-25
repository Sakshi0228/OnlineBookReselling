<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OnlineBookReselling.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/customStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/online%20book%20reselling%20bg%201%20pt%204.jpg" class="card-img"/>
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2 class="maintitle">Our Features</h2>
                  <p class="subtitle"><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="200" src="imgs/digital-inventory.png"/>
                  <h4 class="t1">Digital Inventory</h4>
                  <p class="text-justify">Our inventory is completely digital. You don't have to worry about going to a book store anymore.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="200" src="imgs/search-online.png"/>
                  <h4 class="t1">Search Books</h4>
                  <p class="text-justify">Know the book you want? Our system allows you to search your favorite book without looking at thousand of books on shelf.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="200" src="imgs/book-online.png"/>
                  <h4 class="t1">Click Away</h4>
                  <p class="text-justify">Buying or selling a book was never any easier. Just one click and the book you wanted is yours. It's that easy</p>
               </center>
            </div>
         </div>
      </div>
   </section>
   <section>
       <img src="imgs/online%20book%20reselling%20bg%202.jpg" class="img-fluid" />
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2 class="maintitle">Our Process</h2>
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
