<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPostOfficeRecord.aspx.cs" Inherits="PostOfficeSystem.AddPostOfficeRecord" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Create Post Office Record</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fff;
            padding: 20px;
            margin: 0;
        }

        .form-container {
            background: linear-gradient(90deg, #e53935, #ffffff);
            border: 2px solid #e53935;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            max-width: 450px;
            margin: 30px auto;
            padding: 25px;
        }

        h2 {
            color: #e53935;
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        table {
            width: 100%;
            margin: 0 auto;
        }

        td {
            padding: 10px 0;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #e53935;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #b71c1c;
        }

        .error-message {
            color: #d32f2f;
            font-size: 12px;
            margin-top: 4px;
        }

        .btn-submit {
            background-color: #e53935;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
            font-size: 16px;
        }

        .btn-submit:hover {
            background-color: #b71c1c;
        }

        .form-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .form-buttons a {
            background-color: #ffffff;
            color: #e53935;
            border: 2px solid #e53935;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            font-size: 14px;
            font-weight: bold;
            margin-top: 10px;
        }

        .form-buttons a:hover {
            background-color: #e53935;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Create Post Office Record</h2>
            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                            ErrorMessage="First Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFirstName" runat="server" ControlToValidate="txtFirstName"
                            ErrorMessage="Only letters allowed" CssClass="error-message"
                            ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                            ErrorMessage="Last Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLastName" runat="server" ControlToValidate="txtLastName"
                            ErrorMessage="Only letters allowed" CssClass="error-message"
                            ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                            ErrorMessage="Address is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Scheme Name:</td>
                    <td>
                        <asp:TextBox ID="txtSchemeName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSchemeName" runat="server" ControlToValidate="txtSchemeName"
                            ErrorMessage="Scheme Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Balance:</td>
                    <td>
                        <asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvBalance" runat="server" ControlToValidate="txtBalance"
                            ErrorMessage="Balance is required" CssClass="error-message"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revBalance" runat="server" ControlToValidate="txtBalance"
                            ErrorMessage="Enter a valid number" CssClass="error-message"
                            ValidationExpression="^\d+(\.\d{1,2})?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>No Of Years:</td>
                    <td>
                        <asp:TextBox ID="txtNoOfYears" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNoOfYears" runat="server" ControlToValidate="txtNoOfYears"
                            ErrorMessage="No Of Years is required" CssClass="error-message"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNoOfYears" runat="server" ControlToValidate="txtNoOfYears"
                            ErrorMessage="Enter a valid number" CssClass="error-message"
                            ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mobile:</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                            ErrorMessage="Mobile number is required" CssClass="error-message"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile"
                            ErrorMessage="Enter a valid 10-digit number" CssClass="error-message"
                            ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <div class="form-buttons">
                <a href="Default.aspx">Go Back</a>
                <asp:Button ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" CssClass="btn-submit" CausesValidation="true" />
            </div>
        </div>
    </form>
</body>
</html>