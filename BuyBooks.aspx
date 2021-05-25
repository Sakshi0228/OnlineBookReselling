<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuyBooks.aspx.cs" Inherits="OnlineBookReselling.BuyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-12 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBookResellingConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl] WHERE (([status] = @status) AND ([sold] = @sold))">
                             <SelectParameters>
                                 <asp:Parameter DefaultValue="Accepted" Name="status" Type="String" />
                                 <asp:Parameter DefaultValue="No" Name="sold" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                             <Columns>
                                 <asp:BoundField DataField="book_id" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
                                 <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "BookDetail.aspx?book_id=" + Eval("book_id")%>' style="text-decoration:none" ForeColor="Black">
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
                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Rs"></asp:Label>
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
                                             <asp:Image Width="130" class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("img_front")) %>' />
                                          </div>
                                       </div>
                                    </div>
                                            </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                             </Columns>

                             </asp:Gridview>
                         </div>
                      </div>
                   </div>
            </div>
             </div>
               </div>
            </div>
</asp:Content>
