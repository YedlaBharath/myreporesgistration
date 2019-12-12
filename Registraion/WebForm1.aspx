<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Registraion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .validation {
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            <h2>User Registraion form</h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="labelid" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="id" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="usernamelabel" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="userv" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="Please Enter Your Username" SetFocusOnError="True" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="emaillabel" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server" TextMode="Email" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="emailv" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Please Enter Your Email" SetFocusOnError="True" Font-Bold="False" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 
                <tr>
                    <td>
                        <asp:Label ID="passwordlabel" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="passv" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="Please Enter Your Password" SetFocusOnError="True" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="conformpasswordlabel" runat="server" Text="Conform Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="conformpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cv" runat="server" ControlToCompare="conformpassword" ControlToValidate="password" Display="Dynamic" ErrorMessage="Enter above Password" SetFocusOnError="True" CssClass="validation"></asp:CompareValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="genderlabel" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="countrylabel" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="country" runat="server">
                            <asp:ListItem Value="please select">Please select</asp:ListItem>
                            <asp:ListItem>INDIA</asp:ListItem>
                            <asp:ListItem>AUSTRALIA</asp:ListItem>
                            <asp:ListItem>ITALY</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="checkboxlabel" runat="server" Text="sports"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="checkbox1" runat="server" Text="Football" />
                        <asp:CheckBox ID="checkbox2" runat="server" Text="Cricket" />
                        <asp:CheckBox ID="checkbox4" runat="server" Text="Basketball" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="userbtn" runat="server" Text="Register" OnClick="register_click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="loglink" runat="server" NavigateUrl="~/result.aspx" Text="Login"></asp:HyperLink>
                    </td>
                </tr>
            </table>
            
            
            
            
        </div>
    </form>
    <div style="width: 651px" draggable="true" role="list" title="Users Details">
            <asp:Table ID="table1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellPadding="5" CellSpacing="5" Font-Italic="True" Width="501px" EnableTheming="True" ForeColor="#000066" GridLines="Both" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableHeaderCell>id</asp:TableHeaderCell>
                    <asp:TableHeaderCell>username</asp:TableHeaderCell>
                    <asp:TableHeaderCell>email</asp:TableHeaderCell>
                    <asp:TableHeaderCell>password</asp:TableHeaderCell>
                    <asp:TableHeaderCell>gender</asp:TableHeaderCell>
                    <asp:TableHeaderCell>country</asp:TableHeaderCell>
                </asp:TableRow>
                
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="idr" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:Label ID="usernamer" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:Label ID="emailr" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:Label ID="passwordr" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:Label ID="genderr" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:Label ID="countryr" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
</body>
</html>
