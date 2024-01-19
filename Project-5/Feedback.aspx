<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Project_5.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
     .auto-style1{
         width:100%;
     }
    .auto-style2 {
        width: 24%
    }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
        <tr>
            <td colspan="3" class="text-center"><h1>Feedback Form</h1></td>
        </tr>
      
        <tr>
            <td class="auto-style2">Name:</td>
            <td>
                <asp:TextBox ID="Txtname" runat="server" Width="159px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="Txtmail" runat="server" Width="157px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style2">Rating:</td>
            <td>
                <asp:TextBox ID="Txtrating" runat="server" Width="155px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Btnsubmit" runat="server" OnClick="Btnsubmit_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
           <tr>
            <td class="auto-style2">
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      
    </table>

</asp:Content>
