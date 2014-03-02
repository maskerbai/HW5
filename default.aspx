﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jintan's Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="CalStyleSheet.css" /></head>
<body>
    <form id="form1" runat="server">
    <div id="content">
    <h3>
    Jintan's Mortgage Calculator</h3>
        
       
        <hr/>
            <br />
            
     

        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please Enter Required Information"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please Enter Required Information"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please Enter a Number that Lower than 20" Operator="LessThan" Type="Double" ValueToCompare="20"></asp:CompareValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please Enter Required Information"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" BorderStyle="None" ControlToValidate="tbLoanTerm" EnableTheming="True" ErrorMessage="Please Enter a Integer that larger that 1" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="1"></asp:CompareValidator>
        <br />
        <br />
        * Indicate the Required Information <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="82px" />
        
        <%If Not IsPostBack Then%>
            <p>Welcome to my calculator. Please complete the above fields to get your monthly payment and loand repayment schedule cacluated for you. </p>
        <% Else%>

        <br /><br />            
        <div id="clearcontent" runat="server">>  
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" BorderColor="#660066" BorderStyle="Solid" BorderWidth="3px" >
            <AlternatingRowStyle CssClass="alt" BorderColor="#660033"/>
            </asp:GridView>

        </div>
        <%end if %>    
        </div>
    </form>
</body>
</html>
