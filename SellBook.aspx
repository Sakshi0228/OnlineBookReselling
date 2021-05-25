<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SellBook.aspx.cs" Inherits="OnlineBookReselling.SellBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/LoginStyle.css" rel="stylesheet" />

    <script type="text/javascript">
       function readURL(input,string) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
               var id = string;
               reader.onload = function (e) {
                   $(id).attr('src', e.target.result);
               };
 
               reader.readAsDataURL(input.files[0]);
           }
       }
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100" src="imgs/BooksStack.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 class="loginhead">Sell Your Book</h4>
                           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Book Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBookName" runat="server" placeholder="Book Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextPublisherName" runat="server" placeholder="Publisher Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Category</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownCategory" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Educational" Value="Educational" />
                              <asp:ListItem Text="Science" Value="Science" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Action" Value="Action" />
                              <asp:ListItem Text="Romance" Value="Romance" />
                              <asp:ListItem Text="Mystery" Value="Mystery" />
                              <asp:ListItem Text="Travel" Value="Travel" />
                              <asp:ListItem Text="Children" Value="Children" />
                              <asp:ListItem Text="Health" Value="Health" />
                              <asp:ListItem Text="History" Value="History" />
                              <asp:ListItem Text="Maths" Value="Maths" />
                              <asp:ListItem Text="Other" Value="Other" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownLanguage" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="English" Value="English" />
                              <asp:ListItem Text="Marathi" Value="Marathi" />
                              <asp:ListItem Text="Gujrati" Value="Gujrati" />
                              <asp:ListItem Text="Bengali" Value="Bengali" />
                              <asp:ListItem Text="Other" Value="Other" />                             
                           </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Purchase Date</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextPurchaseDate" runat="server" placeholder="Purchase Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Condition</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownCondition" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="New" Value="New" />
                              <asp:ListItem Text="Very Good" Value=" Very Good" />
                              <asp:ListItem Text="Good" Value="Good" />
                              <asp:ListItem Text="Fair" Value="Fair" />
                              <asp:ListItem Text="Poor" Value="Poor" />                           
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Price</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextPrice" runat="server" placeholder="Price" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextDescription" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Book Pictures</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">                      
                     <div class="col-md-6">
                         <div class="row">
                          <div class="col">
                              <center>
                           <img width="100"  id="imgview1"/>
                              </center>
                          </div>
                        </div>
                        <label>Front</label>
                        <div class="form-group">
                            <asp:FileUpload ID="ImgFront" runat="server" onchange="readURL(this,imgview1)" />
                        </div>
                     </div>
                     <div class="col-md-6">
                         <div class="row">
                          <div class="col">
                              <center>
                           <img width="100"   id="imgview2"/>
                              </center>
                          </div>
                        </div>
                        <label>Back</label>
                        <div class="form-group">
                           <asp:FileUpload ID="ImgBack" runat="server" onchange="readURL(this,imgview2)" />
                        </div>
                     </div>                 
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                         <div class="row">
                          <div class="col">
                              <center>
                           <img width="100"   id="imgview3"/>
                              </center>
                          </div>
                        </div>
                        <label>Side </label>
                        <div class="form-group">
                            <asp:FileUpload ID="ImgSide" runat="server" onchange="readURL(this,imgview3)" />
                        </div>
                     </div>
                     <div class="col-md-6">
                         <div class="row">
                          <div class="col">
                              <center>
                           <img width="100"   id="imgview4"/>
                              </center>
                          </div>
                        </div>
                        <label>Barcode</label>
                        <div class="form-group">
                           <asp:FileUpload ID="ImgBar" runat="server" onchange="readURL(this,imgview4)"/>
                        </div>
                     </div>                 
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
             </div>
          </div>
        </div>
</asp:Content>
