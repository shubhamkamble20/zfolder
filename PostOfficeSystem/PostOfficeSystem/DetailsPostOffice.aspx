<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsPostOffice.aspx.cs" Inherits="PostOfficeSystem.DetailsPostOffice" %>

<!DOCTYPE html>
<html>
<head>
    <title>PostOffice Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .card {
            background: #ffffff;
            border: 2px solid #ff0000; /* Indian Post Office red */
            border-radius: 10px;
            padding: 20px;
            max-width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .header {
            background-color: #ff0000; /* Indian Post Office red */
            color: white;
            padding: 10px;
            border-radius: 8px 8px 0 0;
            text-align: center;
        }

        .content {
            padding: 20px;
        }

        .row {
            display: flex;
            justify-content: space-between;
            margin: 10px 0;
        }

        .column {
            flex: 1;
            margin: 0 10px;
        }

        .column label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.9em;
            color: #ffffff;
            background-color: #ff0000; /* Indian Post Office red */
            padding: 10px;
            border-radius: 0 0 8px 8px;
        }

        .footer a {
            text-decoration: none;
            color: #ffffff;
            background-color: #333333;
            padding: 8px 15px;
            border-radius: 5px;
        }

        .footer a:hover {
            background-color: #555555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <div class="header">
                <h2>PostOffice Account Details</h2>
            </div>
            <div class="content">
                <!-- Row 1: Id and Scheme Name -->
                <div class="row">
                    <div class="column">
                        <label>Id:</label>
                        <asp:Label ID="lblId" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Scheme Name:</label>
                        <asp:Label ID="lblSchemeName" runat="server" Text="" />
                    </div>
                </div>

                <!-- Row 2: First Name and Last Name -->
                <div class="row">
                    <div class="column">
                        <label>First Name:</label>
                        <asp:Label ID="lblFirstName" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Last Name:</label>
                        <asp:Label ID="lblLastName" runat="server" Text="" />
                    </div>
                </div>

                <!-- Row 3: Address and Balance -->
                <div class="row">
                    <div class="column">
                        <label>Address:</label>
                        <asp:Label ID="lblAddress" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Balance:</label>
                        <asp:Label ID="lblBalance" runat="server" Text="" />
                    </div>
                </div>

                <!-- Row 4: No of Years and Mobile -->
                <div class="row">
                    <div class="column">
                        <label>No of Years:</label>
                        <asp:Label ID="lblNoOfYears" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Mobile:</label>
                        <asp:Label ID="lblMobile" runat="server" Text="" />
                    </div>
                </div>
            </div>

            <div class="footer">
                <p>Thank you for trusting our PostOffice services!</p>
                <a href="Default.aspx">Go Back</a>
            </div>
        </div>
    </form>
</body>
</html>
