<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookVerification.aspx.cs" Inherits="OnlineBookReselling.BookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100" src="imgs/BooksStack.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 class="loginhead">Verification</h4>
                           
                        </center>
                     </div>
                  </div>
                   
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                       <div class="col-6">
                        <label>Book ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBookID" runat="server" placeholder="Book ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                       <div class="col-6">
                           <label>Uploaded By</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextUploadedBy" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                       </div>
                   </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Book Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBookName" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextPublisherName" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Category</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextCategory" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextLanguage" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Purchase Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextPurchaseDate" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Condition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextCondition" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextPrice" runat="server"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextDescription" runat="server"  TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
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
                        <label>Front</label>
                        <div class="form-group">
                            <center>
                            <asp:Image ID="ImgFront" runat="server" Width="100" />
                                </center>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Back</label>
                        <div class="form-group">
                            <center>
                           <asp:Image ID="ImgBack" runat="server" Width="100" />
                                </center>
                        </div>
                     </div>                 
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Side </label>
                        <div class="form-group">
                            <center>
                           <asp:Image ID="ImgSide" runat="server" Width="100" />
                                </center>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Barcode</label>
                        <div class="form-group">
                            <center>
                           <asp:Image ID="ImgBar" runat="server"  Width="100"/>
                                </center>
                        </div>
                     </div>                 
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-outline-success" runat="server" Text="Accept" OnClick="Button1_Click" />
                     </div>
                     <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-outline-danger" runat="server" Text="Reject" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBookResellingConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl] WHERE ([status] = @status)">
                             <SelectParameters>
                                 <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                        <center>
                           <h4>Books to be Reviewed</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
                                <asp:BoundField DataField="book_name" HeaderText="Name" SortExpression="book_name" />
                                <asp:BoundField DataField="publisher_name" HeaderText="Publisher" SortExpression="publisher_name" />
                                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                                <asp:BoundField DataField="language" HeaderText="Language" SortExpression="language" />
                                <asp:BoundField DataField="purchase_date" HeaderText="Purchase Date" SortExpression="purchase_date" />
                                <asp:BoundField DataField="condition" HeaderText="Condition" SortExpression="condition" />
                                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                <asp:BoundField DataField="username" HeaderText="Uploaded By" SortExpression="username" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
