<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookDetail.aspx.cs" Inherits="OnlineBookReselling.BookDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-12 mx-auto">
            <div class="card">
               <div class="card-body">
                   <div class="row">
                       <div class="col-md-5">
                           <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
                                      <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                      </ol>
                                      <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <asp:Image ID="ImageFront" runat="server" Width="400" class="d-block img-fluid"/>
                                        </div>
                                        <div class="carousel-item">
                                          <asp:Image ID="ImageBack" runat="server" Width="400" class="d-block img-fluid"/>
                                        </div>
                                        <div class="carousel-item">
                                          <asp:Image ID="ImageSide" runat="server" Width="400" class="d-block img-fluid"/>
                                        </div>
                                        <div class="carousel-item">
                                          <asp:Image ID="ImageBar" runat="server" Width="400" class="d-block img-fluid"/>
                                        </div>
                                      </div>
                                      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                      </a>
                                      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                      </a>
                                    </div>                           
                           
                       </div>
                       <div class="col-md-7">                     
                       <div class="row">
                           <div class="col-12">
                               <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-md-12">
                                             <div class="row">
                                                <div class="col-12">
                                                    <asp:Label ID="LabelTitle" runat="server" Font-Bold="True" Font-Size="40"></asp:Label>
                                                    <br />
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   <span>Publisher <br /> </span>
                                                   <asp:Label ID="LabelPublisher" runat="server" Font-Bold="True"></asp:Label>
                                                   &nbsp;
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12"> 
                                                   <span>Language <br />
                                                      <asp:Label ID="LabelLanguage" runat="server" Font-Bold="True"></asp:Label>
                                                   </span>
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12"> 
                                                   <span>Category <br />
                                                      <asp:Label ID="LabelCategory" runat="server" Font-Bold="True"></asp:Label>
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   Condition <br />
                                                   <asp:Label ID="LabelCondition" runat="server" Font-Bold="True"></asp:Label>
                                                   &nbsp;
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12">
                                                   Price <br />
                                                   <asp:Label ID="LabelPrice" runat="server" Font-Bold="True"></asp:Label>
                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Rs"></asp:Label>
                                                   &nbsp;
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12">
                                                   Description <br />
                                                   <asp:Label ID="LabelDesc" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12"></asp:Label>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                   </div>
                           </div>
                           <div class="container-fluid ">
                           <div class="row">
                               <div class="col-6">
                                   <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" />
                               </div>
                               <div class="col-6">
                                   <center>
                                   <asp:LinkButton class="btn btn-outline-primary btn-block btn-lg " ID="Button2" runat="server" OnClick="Button2_Click" ><i class="fas fa-caret-square-left"></i> Browse other books</asp:LinkButton>
                                       </center>
                               </div>
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
