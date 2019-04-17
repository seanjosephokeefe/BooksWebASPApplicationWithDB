<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayall.aspx.cs" Inherits="BooksWebApplication.displayall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Books</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="center white">Book Inventory Application</h1>
        <div id="DivButtons">
            <asp:Button ID="BtnHome" runat="server" Text="Add Books" CssClass="button" OnClick="BtnHome_Click" />
            <asp:Button ID="BtnDisplayBooks" runat="server" Text="Display Books" CssClass="button" OnClick="BtnDisplayBooks_Click" />
        </div>
        <br />
        <div id="DivContainer">
            <h2 class="center">Display Books</h2>
            <p class="center">
                Select a book by title to view:&nbsp;
                <asp:DropDownList ID="DDBooks" runat="server" OnSelectedIndexChanged="DDBooks_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Please select a book title to view</asp:ListItem>
                </asp:DropDownList>
            </p>
            <div id="DivTableResults" runat="server"></div>
            <br />
        </div>
    </form>
</body>
</html>
