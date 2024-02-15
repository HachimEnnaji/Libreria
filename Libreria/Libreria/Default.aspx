<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Libreria._Default" enableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table" >
            <Columns>
                <asp:TemplateField HeaderText="Immagine">
                    <ItemTemplate>
                        <asp:Image ID="imgPhoto" runat="server" Width="100" Height="100"
                            src='<%# Eval("Immagine") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Titolo">
                    <ItemTemplate>
                        <asp:Label ID="lblCol1" runat="server" CssClass="h2" Text='<%# Eval("Titolo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Autore">
                    <ItemTemplate>
                        <asp:Label ID="lblCol2" runat="server" CssClass="h2" Text='<%# Eval("Autore") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Costo">
                    <ItemTemplate>
                        <asp:Label ID="lblCol3" runat="server" CssClass="display-5" Text='<%# Eval("Costo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Azioni">
                    <ItemTemplate>
                        <asp:Button ID="btnAction" runat="server" Text="Dettagli" CommandName="Action"  CssClass="btn btn-secondary" OnClick="btnAction_Click"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>

    </main>

</asp:Content>
