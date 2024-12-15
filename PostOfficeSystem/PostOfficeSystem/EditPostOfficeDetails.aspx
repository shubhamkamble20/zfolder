<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPostOfficeDetails.aspx.cs" Inherits="PostOfficeSystem.EditPostOfficeDetails" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Edit Post Office Record</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background: #f8f8f8;
            border: 2px solid #d70000;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .form-container h2 {
            text-align: center;
            color: #d70000;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-group input:focus {
            outline: none;
            border-color: #d70000;
        }

        .form-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .form-buttons input[type="submit"],
        .form-buttons a {
            background-color: #d70000;
            color: white;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .form-buttons a {
            background-color: #555;
        }

        .form-buttons input[type="submit"]:hover,
        .form-buttons a:hover {
            background-color: #a00000;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Edit Post Office Record</h2>

            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" />
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtSchemeName">Scheme Name:</label>
                <asp:TextBox ID="txtSchemeName" runat="server" />
            </div>

            <div class="form-group">
                <label for="txtBalance">Balance:</label>
                <asp:TextBox ID="txtBalance" runat="server" TextMode="Number" />
            </div>

            <div class="form-group">
                <label for="txtNoOfYears">Number of Years:</label>
                <asp:TextBox ID="txtNoOfYears" runat="server" TextMode="Number" />
            </div>

            <div class="form-group">
                <label for="txtMobile">Mobile:</label>
                <asp:TextBox ID="txtMobile" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-buttons">
                <a href="Default.aspx">Go Back</a>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </div>
        </div>
    </form>
</body>
</html>