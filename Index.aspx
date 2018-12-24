<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication2.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style type="text/css">
        .tdstyle
        {
            width:30%;
            text-align:center;
            text-wrap:normal;
            font-weight:600;
            font-family:'Monotype Corsiva';
              
                 
        }
        #data tr {
  display: none;
}
      .imgstyle{
          height:60%;
          width:60%;
      }
      
       
         </style>
     <script type="text/javascript">
              function test() {
                  var jsonval = (<%=this.jsonval%>);
                  
              var tablerow = "<table id='data'><tr>";
             var imgtd;
             for (var i = 0; i < jsonval.length; i += 4) {
                 for (var j = i; j < i + 4; j++) {
                     if (jsonval[j] != null && jsonval[j].ISBN != null) {
                         
                         imgtd +=
                             "<td class='tdstyle'>" +
                             "<a href=" + 'CartDetails.aspx?bookid='+ jsonval[j].BookID  +">" +
                             "<img  alt='ISBN' src=" + 'images/' + jsonval[j].ISBN + '.jpg' + " ></td >";
                     }
                 }

                     imgtd += "</tr>";
                     for (var j = i; j < i + 4; j++) {
                         if (jsonval[j]!=null && jsonval[j].BookTitle != null) {
                             imgtd += "<td class='tdstyle'>" + jsonval[j].BookTitle + "</td>";

                         }
                 }
                  imgtd += "</tr>";
                 for (var j = i; j < i + 4; j++) {
                     if (jsonval[j] != null && jsonval[j].Price != null) {
                         imgtd += "<td class='tdstyle'>" + jsonval[j].Price + "</td>";
                     }
                 }
                 imgtd += "</tr>";
                  for (var j = i; j < i + 4; j++) {
                      if (jsonval[j] != null && jsonval[j].Discount1 != null) {
                          imgtd += "<td class='tdstyle'>" + jsonval[j].Discount1 + "</td>";
                     }
                 }
                  imgtd += "</tr>";
                            
                    for (var j = i; j < i + 4; j++) {
                        if (jsonval[j] != null && jsonval[j].Price != null) {
                            imgtd += "<td class='tdstyle ' >" + "<a href=" + 'CartDetails.aspx?bookid=' + jsonval[j].BookID + ">" +  'Add To Cart';
                         }
                 }
                 
                 imgtd += "</tr>";
                
                  imgtd += "</tr>";
             }
             return  tablerow + imgtd ;
         };
         

         $(function () {         
            
                $('#images').append(test()); 
            
         });
         $(document).ready(function(){
    $('#data').after('<div id="nav"></div>');
    var rowsShown = 8;
    var rowsTotal = $('#data tbody tr').length;
    var numPages = rowsTotal/rowsShown;
    for(i = 0;i < numPages;i++) {
        var pageNum = i + 1;
        $('#nav').append('<a href="#" rel="'+i+'">'+pageNum+'</a> ');
    }
    $('#data tbody tr').hide();
    $('#data tbody tr').slice(0, rowsShown).show();
    $('#nav a:first').addClass('active');
    $('#nav a').bind('click', function(){

        $('#nav a').removeClass('active');
        $(this).addClass('active');
        var currPage = $(this).attr('rel');
        var startItem = currPage * rowsShown;
        var endItem = startItem + rowsShown;
        $('#data tbody tr').css('opacity','0.0').hide().slice(startItem, endItem).
        css('display','table-row').animate({opacity:1}, 300);
    });
});
         </script>
    <div style="background-color:dimgrey;margin-top:21px;">

			<div class="carousel slide carousel-size" id="carousel-871299">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-871299"></li>
					<li data-slide-to="1" data-target="#carousel-871299"></li>
					<li data-slide-to="2" data-target="#carousel-871299"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="images/2.png" class="img-responsive center-block" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="item">
						<img alt="" src="images/3.png" class="img-responsive center-block" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="item">
						<img alt="" src="images/4.png" class="img-responsive center-block" />
						<div class="carousel-caption">
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-871299" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#carousel-871299" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
         <div id="images">
              </div>

      
</asp:Content>
