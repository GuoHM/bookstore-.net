<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDescription.aspx.cs" Inherits="WebApplication2.BookDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style type="text/css">
        .tdstyle
        {
        
            text-align:center;
         
        }
          .tdstyle1{
            
            text-align:left;
          
                 
        }
        .buttonstyle{
            background-color:darkkhaki;            
        }
        .headerstyle{
            text-align:center;
        }
    </style>
      <script type="text/javascript">
              function test() {
                  var jsonval = (<%=this.jsonval%>);
                     if (jsonval.length != 0)
                  {

             var header = "<h1 class='headerstyle'>" + jsonval[0].BookTitle + "</h1> "
              var tablerow = "<table><tr>";
                  var imgtd;
               
                      for (var i = 0; i < jsonval.length; i++) {
                          if (jsonval[i] != null && jsonval[i].ISBN != null) {

                              imgtd +=
                                  "<td class='tdstyle' >" +
                                  "<img alt='ISBN' src=" + 'images/' + jsonval[i].ISBN + '.jpg' + " ></td >";
                          }
                      }


                      for (var j = 0; j < jsonval.length; j++) {
                          if (jsonval[j] != null && jsonval[j].BookDescription1 != null) {
                              imgtd += "<td class='tdstyle1'>" + jsonval[j].BookDescription1 + "</td>";

                          }
                      }
                      imgtd += "</tr> <tr>";

                      for (var i = 0; i < jsonval.length; i++) {
                          if (jsonval[i] != null && jsonval[i].Price != null) {

                              imgtd += "<td class='tdstyle' >" + 'Price : ' + jsonval[i].Price + "</td>";
                          }
                      }
                      imgtd += "</tr><tr><tr/>";
                      return header + tablerow + imgtd ;
                  }
                  else
                  {
                      var errortxt = "Selected Book is not available ";
                      return "<h1 class='headerstyle'>" + errortxt + "</h1>";
                  }
             
         };
         

         $(function () {
            var userInput = 1;
            for (var i = 0; i < userInput; i++) {
                $('#images').append(test()); 
            }
        });
         </script>
    <br />
      <br />
     <div id="images">
              </div>

        <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="Add To Cart"  style="position:relative; float:right;"  OnClick="Button1_Click" />
    
</asp:Content>
