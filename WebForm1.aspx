<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="registration_db_connection.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <table><h1>Registration Form</h1>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>

                    <td class="auto-style1">
                        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name !" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email_id" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Email!" ControlToValidate="email_id" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>

                </tr>
                <tr>

                    <td>
                        <asp:Label ID="Label3" runat="server" Text="phone"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="phone_number" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Phone!" ControlToValidate="phone_number" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem> Male</asp:ListItem>
                            <asp:ListItem> Female</asp:ListItem>
                            <asp:ListItem> Others</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                   
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select Gender!" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="course"></asp:Label>

                    </td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>c</asp:ListItem>
                            <asp:ListItem>java</asp:ListItem>
                            <asp:ListItem>.net</asp:ListItem>
                            <asp:ListItem>python</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    
                </tr>
                 
                
            
       
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="States"></asp:Label>
                    </td>
                    
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>kerala</asp:ListItem>
                            <asp:ListItem>Tamil nadu</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                        </asp:DropDownList>
                            
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please select State!" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label9" runat="server" Text="Photo"></asp:Label>
                   </td>
                   <td>
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Browse a photo!" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                  
               </tr>
                
                 <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="User Name"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="user" runat="server"></asp:TextBox>
                    </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter UserName" ControlToValidate="user" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                    </td>
                    
                    <td class="auto-style1">
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Password!" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="bclick" />
                </td>
                </tr>

                
            </table>
             
        </div>
    </form>
    </center>
    <table>
        <tr>
            
            <td>
                <asp:Label ID="showusername" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="showemail" runat="server" Text=""></asp:Label>

             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="phone" runat="server" Text=""></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="gender" runat="server" Text=""></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="courses" runat="server" Text=""></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                 <asp:Label ID="date" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        
                       
      

         <tr>
            <td>
                <asp:Label ID="state" runat="server" Text=""></asp:Label>

            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="files" runat="server" Text=""></asp:Label>

            </td>
        </tr>

          <tr>
            <td>
                <asp:Label ID="showuser" runat="server" Text=""></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="showpass" runat="server" Text=""></asp:Label>

            </td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
