<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayonebook.aspx.cs" Inherits="BooksWebApplication.displayonebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display One Book</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <h1 class="center white">Book Inventory Application</h1>
    <form id="form1" runat="server">
        <div id="DivButtons">
            <asp:Button ID="BtnHome" runat="server" Text="Add Books" CssClass="button" OnClick="BtnHome_Click" />
            <asp:Button ID="BtnDisplayBooks" runat="server" Text="Display Books" CssClass="button" OnClick="BtnDisplayBooks_Click" />
        </div>
        <br />
        <div id="DivContainer">
            <h2 class="center">View a Book</h2>
            <div id="DivTableSmall">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="LblTitle" runat="server" Text="1. Book Title: "></asp:Label>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBTitle" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblDate" runat="server" Text="2. Date Published: "></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBPublishDate" runat="server" ReadOnly="true"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblPrice" runat="server" Text="3. Original Price: "></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBPrice" runat="server" ReadOnly="true"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblSale" runat="server" Text="4. Pre-Sale Date: "></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBSaleDate" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblCategory" runat="server" Text="5. Category: "></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBCategory" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
