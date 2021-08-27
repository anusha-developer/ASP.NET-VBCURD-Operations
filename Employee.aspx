<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Employee.aspx.vb" Inherits="ASPVBNET.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Employee Registraction</h3>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="EmpId"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="EmpName"></asp:Label>


                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="EmpGender"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpGender" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="EmpMobileNo"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpMobileNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="EmpEmailId"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpEmailId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="EmpAddress"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Save" />
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                        <asp:Button ID="Button1" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
