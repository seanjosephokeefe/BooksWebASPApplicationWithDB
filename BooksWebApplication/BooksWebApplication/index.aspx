<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BooksWebApplication.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Books</title>
    <link href="styles/styles.css" rel="stylesheet" />
    <link href="LIB/jquery-ui/jquery-ui.css" rel="stylesheet" />
    <link href="LIB/jquery-ui/jquery-ui.structure.css" rel="stylesheet" />
    <link href="LIB/jquery-ui/jquery-ui.theme.css" rel="stylesheet" />
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
            <h2 class="center">Add a Book</h2>
            <div id="DivBookFields">
                <table id="TblAddBooks">
                    <tr>
                        <td class="firstCell">
                            <asp:Label ID="LblTitle" runat="server" Text="1. Book Title: "></asp:Label></td>
                        <td class="secondCell">&nbsp;&nbsp;&nbsp;</td>
                        <td class="thirdCell">
                            <asp:TextBox ID="TBTitle" runat="server"></asp:TextBox>
                        </td>
                        <td class="fourthCell">&nbsp;<asp:Label ID="LblErrorTBTitle" runat="server" Text="Can't be empty." CssClass="error"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="4">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblDate" runat="server" Text="2. Date Published: (jQuery Datepicker)"></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBPublishDate" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;<asp:Label ID="LblErrorDPPubDate" runat="server" Text="Must be valid date." CssClass="error"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="4">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblPrice" runat="server" Text="3. Original Price: "></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TBPrice" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;<asp:Label ID="LblErrorTBPrice" runat="server" Text="Must be a decimal." CssClass="error"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="4">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblSale" runat="server" Text="4. Pre Sell Date: (ASP Calendar)"></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:Calendar ID="CalSaleDate" runat="server"></asp:Calendar>
                        </td>
                        <td>&nbsp;<asp:Label ID="LblErrorCalSaleDate" runat="server" Text="Must select a date." CssClass="error"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="4">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblCategory" runat="server" Text="5. Category: "></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:DropDownList ID="DDCategory" runat="server">
                                <asp:ListItem>Select a Category</asp:ListItem>
                                <asp:ListItem>Action/Adventure</asp:ListItem>
                                <asp:ListItem>Fantasy</asp:ListItem>
                                <asp:ListItem>Mystery/Detective</asp:ListItem>
                                <asp:ListItem>Occult/Psychological/Horror</asp:ListItem>
                                <asp:ListItem>Romance</asp:ListItem>
                                <asp:ListItem>Science Fiction</asp:ListItem>
                                <asp:ListItem>Suspense/Thrillers</asp:ListItem>
                                <asp:ListItem>Western</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;<asp:Label ID="LblErrorDDCategory" runat="server" Text="Must select one." CssClass="error"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="4">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="4">
                            <asp:Button ID="BtnSave" runat="server" Text="Save" CssClass="button" OnClick="BtnSave_Click" />
                            <asp:Button ID="BtnReset" runat="server" Text="Reset" CssClass="button" OnClick="BtnReset_Click" />
                        </td>
                    </tr>
                </table>
                <div id="DivError">
                    <asp:Label ID="LblErrorMessage" runat="server" CssClass="error" Text="Please fix the above errors (*)"></asp:Label>
                </div>
            </div>
            <br />
        </div>
    </form>
    <script src="LIB/jquery-ui/external/jquery/jquery.js"></script>
    <script src="LIB/jquery-ui/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#TBPublishDate").datepicker();
        });
    </script>
</body>
</html>
