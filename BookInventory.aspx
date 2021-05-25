<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookInventory.aspx.cs" Inherits="OnlineBookReselling.BookInventory1" %>
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
                           <h4 class="loginhead">Update Book</h4>
                           
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
                           <asp:TextBox CssClass="form-control" ID="TextUploadedBy" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                       </div>
                   </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Book Name</label>

                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBookName" runat="server"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Sold?</label>

                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextSold" runat="server"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Publisher Name</label>

                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextPublisherName" runat="server"></asp:TextBox>
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
                           <asp:TextBox CssClass="form-control" ID="TextPurchaseDate" runat="server" ReadOnly="True" TextMode="Date"></asp:TextBox>
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
                           <asp:TextBox CssClass="form-control" ID="TextPrice" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Description</label>

                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextDescription" runat="server"  TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                            <asp:Image ID="ImgBar" runat="server" Width="100" />
                            </center>
                        </div>
                     </div>                 
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-outline-success" runat="server" Text="Update" OnClick="Button1_Click" />
                     </div>
                     <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-outline-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
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
                        <center>
                           <h4>Books for Sale</h4>
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBookResellingConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl] WHERE ([status] = @status)">
                             <SelectParameters>
                                 <asp:Parameter DefaultValue="Accepted" Name="status" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-10">
                                             <div class="row">
                                                <div class="col-12">
                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   <span>Publisher - </span>
                                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                   &nbsp;| 
                                                   <span>
                                                      Language -<span>&nbsp;</span>
                                                      <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   Condition -
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("condition") %>'></asp:Label>
                                                   &nbsp;
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12">
                                                   Price -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("price") %>'></asp:Label>
                                                   &nbsp;
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12">
                                                   Description -
                                                   <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("description") %>'></asp:Label>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-lg-2">
                                             <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("img_front")) %>' />
                                          </div>
                                       </div>
                                    </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
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
