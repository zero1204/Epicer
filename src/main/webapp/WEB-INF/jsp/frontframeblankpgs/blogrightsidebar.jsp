<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- //////   文章(食譜/論壇) 右側有分類    ////////// -->    
    
<!-- //////**極重要!!!!不可少//////<html> + <head> + <link>//////// -->
<%@include file="../frontpartials/frontheaderlink.jsp" %>

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
		<div class="row col-12 col-md-8">
		
            <div class="col-12 col-md-10 " style="margin-bottom:35px">
                <h1>title</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis debitis eius quisquam,
                    reprehenderit
                    qui
                    dicta eos! Facere ipsam odit qui quis! Labore necessitatibus quos aliquam fugit sunt excepturi
                    exercitationem enim!</p>
                <div class="row justify-content-start p-5">
                    <div class="col-11 col-md-12 p-4 ">
                        <div class="item row">
                            <img src="images/ji.jfif" alt="" class="img-fluid col-md-6 col-12 w-100" >
                            <div class="col-md-6 col-12">
                                <h3>333</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            
            
            
            
            <div class="row recipearea" id="info">
                <div class="col-11 col-md-4 p-4 recipecard">
                    <div class="item">
                        <img src="images/ji.jfif" alt="" class="img-fluid w-100">
                        <h3>title</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                    </div>
                </div>
                <div class="col-11 col-md-4 p-4 recipecard">
                    <div class="item">
                        <img src="images/ji.jfif" alt="" class="img-fluid w-100">
                        <h3>title</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                    </div>
                </div>
                <div class="col-11 col-md-4 p-4 recipecard">
                    <div class="item">
                        <img src="images/ji.jfif" alt="" class="img-fluid w-100">
                        <h3>title</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                    </div>
                </div>
                <div class="col-11 col-md-4 p-4 recipecard">
                    <div class="item">
                        <img src="images/ji.jfif" alt="" class="img-fluid w-100">
                        <h3>title</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                    </div>
                </div>
                <div class="col-11 col-md-4 p-4 recipecard">
                    <div class="item">
                        <img src="images/ji.jfif" alt="" class="img-fluid w-100">
                        <h3>title</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                    </div>
                </div>
                <div class="col-11 col-md-4 p-4 recipecard">
                    <div class="item">
                        <img src="images/ji.jfif" alt="" class="img-fluid w-100">
                        <h3>title</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, ullam?</p>
                    </div>
                </div>
            </div>


            <div class="page">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <li class="page-item">
                            <a class="page-link" aria-label="Previous" id="first">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link page-index">1</a></li>
                        <li class="page-item"><a class="page-link page-index">2</a></li>
                        <li class="page-item"><a class="page-link page-index">3</a></li>
                        <li class="page-item"><a class="page-link page-index">4</a></li>
                        <li class="page-item"><a class="page-link page-index">5</a></li>
                        <li class="page-item">
                            <a class="page-link" aria-label="Next" id="next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
         </div>
      		<div class="col-md-4">
					<!-- ///////////  文章頁的側邊 -推播專區 ///////////// -->
				<!-- @@include('blocks/post-sidebar.htm') -->
				<%@include file="../frontpartials/postsidebar.jsp" %>
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
            //當前頁數
            var nowPage = 1;
            ///總的頁數
            var totalPage = 4;
            ////每行限制數///
            var limitRows = 6;
            /////總的行數
            var totalRows = 0;
            ////開始的行數
            var startRows = 0;
            ////結束的行數,在資料庫中是用limit實現的,不需要此變數
            var endRows = 4;
            ////存所有行的陣列
            var list = new Array();
            ///////找表格元素及其它各元素///////
            var tab = $('#info');
            var now = $('#now');
            var total = $('#total');
            ///////1.初始化資料,運用jQuery的get請求///////
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
                    ///存入到陣列////
                    list = data[0];
                    /////初始化顯示資料///


                    disp(nowPage, list);
                }
            })

            // ///2.按頁號顯示資料
            function disp(n, d) {
                ///先刪除之前的,再建立新的
                $("div").remove(".recipecard");
                ////求每頁從1開始,要得到陣列開始下標要減一為從0開始
                startRows = (n - 1) * limitRows;
                endRows = startRows + limitRows;
                for (var i = startRows; i < 2; i++) {
						console.log(i)
                    var t = `<div class="col-11 col-md-4 p-4 recipecard">
                         <div class="item">
                             <img src="images/ji.jfif" alt="" class="img-fluid w-100" href="${pageContext.request.contextPath}/reciperesult/` + list[i].recipeId + '">'
                            '<h3>' + list[i].recipeName + '</h3>'
                            '<p>' + list[i].recipeDescription + '</p></div></div>'
                    tab.html(t);
                }
            } //disp
            // //3.下一頁////
            $("#next").click(function () {
                ++nowPage;
                //alert(nowPage)
                if (nowPage > totalPage) {
                    ////此處減一是因為陣列下標是最大長度減一的
                    nowPage = totalPage;
                }
                //先顯示頁數後展示數

                ///要後顯示,否則頁數切換不正確
                disp(nowPage, list);
            });
            ///////4.上一頁/////
            $("#first").click(function () {
                --nowPage;
                if (nowPage < 1) {
                    ////此處為0,傳遞的是陣列的最小標
                    nowPage = 1;
                }
                //先顯示頁數後展示資料

                disp(nowPage, list);
            });
            /////5.首頁
            $("#start").click(function () {
                //先顯示頁數後展示資料
                nowPage = 1; //注意變數的值要設

                disp(nowPage, list);
            });
            /////6.尾頁
            $("#end").click(function () {
                //先顯示頁數後展示資料
                nowPage = totalPage; //注意變數的值要設

                disp(nowPage, list);
            });


            $('.page-index').click(function () {
                nowPage = $('.page-index').text();

                disp(nowPage, list);
            })
        });
    </script>
</body>
</html>