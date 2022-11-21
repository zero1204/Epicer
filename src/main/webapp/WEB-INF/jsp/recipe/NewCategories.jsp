<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- //////   文章(食譜/論壇) 右側有分類    ////////// -->    
    
<!-- //////**極重要!!!!不可少//////<html> + <head> + <link>//////// -->
<%@include file="../frontpartials/frontheaderlink.jsp" %>
<style>
p {
overflow:hidden visible;

}
</style>
</head>
<body id="body">


<!-- 主文內容 開始 -->

<!-- /////// 超級重要!!!!Navbar 1+2 要連放一起!! (1)聯絡電話 + 購物車 + 商品搜尋 (2)首頁連動，大家串聯在這，最最後要討論串連的地方///// -->
<%@include file="../frontpartials/frontheadernavigation.jsp" %>
<%@include file="../frontpartials/frontheadernavigationtwo.jsp" %>

<!-- /////// 可抽換連結分頁回首頁(客製化/個人化)(類似分頁標籤) /////// -->
<jsp:include page="../frontpartials/pageheader.jsp" flush="true">
<jsp:param name="title" value="論壇/食譜" />
<jsp:param name="pagination" value="論壇/食譜" />
</jsp:include>
<input type="hidden" id="categoryId" value="2" >
<div class="page-wrapper" style="padding-top: 20px;">
	<div class="container">
		<div class="row col-12 col-md-8 ">
		
            <div class="col-12 col-md-10 " style="margin-bottom:35px">           
                <div class="row justify-content-start p-5">
                    <div class="col-11 col-md-12 p-4 ">
                        <div class="item row">
                        <div class="col-md-6 col-12">
                            <img src="" alt="" class="img-fluid w-100 " id="categoryImg" >
                           </div>
                            <div class="col-md-6 col-12">
                                <h3 id="categoryName"></h3>
                                <p id="categoryDescription"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row recipearea" id="info">
            </div>
            <div class="page col text-center">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center pagecontainer">
                        <li class="page-item">
                            <a class="page-link" aria-label="Previous" id="first">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
         </div>
        
      		<div class="col-md-4">
					<!-- ///////////  文章頁的側邊 -推播專區 ///////////// -->
				<!-- @@include('blocks/post-sidebar.htm') -->
				<%@include file="../frontpartials/recipePostsidebar.jsp" %>
      		</div>
		</div>
	</div>
</div>


<!-- /////// 首頁第五段 - 要連動到外網粉絲頁?instagram?(可以拆掉不使用) ///// -->
<%@include file="../frontpartials/footer.jsp" %>

<!-- 主文內容 結束 -->

<!-- //////**極重要!!!!不可少//////<script>//////// -->
<%@include file="../frontpartials/frontscripttobodyend.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            var nowPage = 1;
            var totalPage = 4;
            var limitRows = 6;
            var totalRows = 0;
            var startRows = 0;
            var endRows = 4;
            var list = new Array();
            var tab = $('#info');
            var now = $('#now');
            var total = $('#total');
            let categoryId = Number($('#categoryId').val());
            $.ajax({
                type: 'get',
                url: `categories/` + categoryId,
                dataType: 'json',
                success: function (data) {
                	console.log(JSON.stringify(data))
                    var tg = Math.floor(data[0].length / limitRows);
                    if (Math.floor(data[0].length % limitRows) == 0) {
                        totalPage = tg;
                    } else {
                        totalPage = tg + 1;
                    }
                    list = data[0];
					category(data[1]);
					generate(totalPage);
                    disp(nowPage, list);
                }
            })
            function category(data){
            	$('#categoryName').text(data.categoryName);
            	$('#categoryDescription').text(data.categoryDescriptionString)
            	$('#categoryImg').attr("src",data.categoryImg)
            }
			function generate(totalPage) {

                for (var i = 1; i < (totalPage + 1); i++) {
                    let content = `<li class="page-item" ><a class="page-link page-index">`
                        + i + `</a></li>`
                    $('.pagecontainer').append(content);
                }
                let next = `<li class="page-item">
                    <a class="page-link " aria-label="Next" id="next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>`
                	$('.pagecontainer').append(next);

            }
            function disp(n, d) {
                $("div").remove(".recipecard");
                startRows = (n - 1) * limitRows;
                endRows = startRows + limitRows;
                for (var i = startRows; i < endRows ; i++) {
                    var t = '<div class="col-11 col-md-4 p-4 recipecard h-50">'+
                         '<div class="item">'+
                             '<a href="${pageContext.request.contextPath}/reciperesult/'+list[i].recipeId+'">'+'<img src="'+list[i].imgPath+'" alt="" class="img-fluid w-100"  >'+
                            '<h3>' + list[i].recipeName + '</h3>'+
                            '<p style="height:150px">' + list[i].recipeDescription + '</p></div></div>';
                    tab.append(t);
                }
            } //disp
            $('.pagecontainer').on('click','#next',function () {
            	console.log(345)
                ++nowPage;
                if (nowPage > totalPage) {
                    nowPage = totalPage;
                }

                disp(nowPage, list);
            });
            $("#first").click(function () {
                --nowPage;
                if (nowPage < 1) {
                    nowPage = 1;
                }
                disp(nowPage, list);
            });
            $("#start").click(function () {
                nowPage = 1; //注意變數的值要設
                disp(nowPage, list);
            });
            $("#end").click(function () {
                nowPage = totalPage; //注意變數的值要設
                disp(nowPage, list);
            });

            $('.pagecontainer').on('click','.page-index',function () {
            	console.log($(this).text())
                nowPage = Number($(this).text());
                disp(nowPage, list);
            })
        });
    </script>
</body>
</html>