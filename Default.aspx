<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table border="8">
                        <tr>
                            <td>
                                <img src='<%# Eval("bookimg")%>' height="50" width="50" />
                            </td>
                            <td>
                                <b>Title:</b><%# Eval("booktit") %><br /><b>Author:</b><%# Eval("bookaut") %><br /><b>Pub:</b><%# Eval("bookpub") %><br /><b>Price:</b><%# Eval("bookprc") %><br /></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">&lt;&lt;Prev</asp:HyperLink>
&nbsp;&nbsp;&nbsp; 1 of 3&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default2.aspx">Next&gt;&gt;</asp:HyperLink>
        </div>
    </form>
</body>
</html>
