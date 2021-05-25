<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PurchasePage.aspx.cs" Inherits="OnlineBookReselling.PurchasePage" %>

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
                                <asp:Image ID="ImageFront" runat="server" Width="400" class="d-block img-fluid" />
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
                                                            Condition
                                                            <br />
                                                            <asp:Label ID="LabelCondition" runat="server" Font-Bold="True"></asp:Label>
                                                            &nbsp;
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            Price
                                                            <br />
                                                            <asp:Label ID="LabelPrice" runat="server" Font-Bold="True"></asp:Label>
                                                            &nbsp;
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <hr />
                                                            <asp:RadioButton ID="RadioCOD" runat="server" Text="Cash On Delivery" GroupName="PaymentMethod" OnCheckedChanged="RadioCOD_CheckedChanged" AutoPostBack="true" />
                                                            <hr />
                                                        </div>
                                                        <div class="col-6">
                                                            <hr />
                                                            <asp:RadioButton ID="RadioCard" runat="server" Text="Credit Card/Debit Card" GroupName="PaymentMethod" OnCheckedChanged="RadioCard_CheckedChanged" AutoPostBack="true" />
                                                            <hr />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            Please enter your deliver address :
                                                            <br />
                                                            <asp:TextBox CssClass="form-control" ID="Address" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">


                                                            <asp:Panel ID="Panel1" runat="server">
                                                                <div class="card m-1">
                                                                    <div class="card-body">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <center>
                                                                                <img src="imgs/card.png" width="100" />
                                                                                </center>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row m-1">
                                                                            <div class="col-6">
                                                                                Name on Card
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <asp:TextBox ID="CardName" runat="server" TextMode="SingleLine"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row m-1">
                                                                            <div class="col-6">
                                                                                Card Number
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <asp:TextBox ID="CardNo" runat="server" TextMode="Number"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row m-1">
                                                                            <div class="col-6">
                                                                                Expiry Date
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <asp:TextBox ID="ExpiryDate" runat="server" TextMode="Date"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row m-1">
                                                                            <div class="col-6">
                                                                                CVV
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <asp:TextBox ID="CVV" runat="server" TextMode="Number"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </asp:Panel>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="container-fluid ">
                                            <div class="row">
                                                <div class="col-6">
                                                    <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button1" runat="server" Text="Make Payment" OnClick="Button1_Click" />
                                                </div>
                                                <div class="col-6">
                                                    <center>
                                   <asp:LinkButton class="btn btn-outline-primary btn-block btn-lg " ID="Button2" runat="server" OnClick="Button2_Click" ><i class="fas fa-caret-square-left"></i> Go Back</asp:LinkButton>
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
        </div>
    </div>
    </div>
</asp:Content>
