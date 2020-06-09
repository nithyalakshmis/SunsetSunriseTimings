<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sunset-Sunrise.aspx.cs" Inherits="SunsetSunriseTimings.Sunset_Sunrise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 29px;
        }
        .auto-style6 {
            margin-left: 47px;
        }
        .auto-style7 {
            margin-left: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                        Latitude: <asp:TextBox ID="txtLatitude" runat="server" CssClass="auto-style5" Width="227px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Longitute: <asp:TextBox ID="txtLongitute" runat="server" CssClass="auto-style6" Width="220px"></asp:TextBox>
        </div>
        <p class="auto-style7">
                        <asp:Button ID="btnGetData"  runat="server" Text="GetData" CssClass="auto-style2" Width="185px"
                            OnClick="btnGetDataClick" Height="41px" />
                        </p>
        <p class="auto-style7">
                        &nbsp;</p>
        <p class="auto-style2">
                        &nbsp;Sunrise is at: <asp:Label ID="lblSunrise" runat="server" Text=""></asp:Label>
                        </p>
        <p class="auto-style2">
                        &nbsp;Sunset is at: <asp:Label ID="lblSunset" runat="server" Text=""></asp:Label>
                        </p>
    </form>
</body>
</html>
