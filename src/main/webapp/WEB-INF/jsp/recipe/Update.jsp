<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-TW">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Epicer管理員系統</title>

<!-- eLindHead (開始) -->
<%@include file="../includes/eLinkHead.jsp" %>
<!-- eLindHead (結束) -->
</head>

<body class="g-sidenav-show   bg-gray-100">

	<!-- ////////////////// 介面最外層框架 //////////////////-->
	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<!-- ////////////////// Side Navber (開始) //////////////////-->
	<%@include file="../includes/eSidenavAdmin.jsp"%>
	<!-- ////////////////// Side Navber (結束) //////////////////-->
	<!-- //////////////////主畫面框架(開始) ////////////////// -->
	<main class="main-content position-relative border-radius-lg ">
		<!-- ////////////////// (Header)Start 上方 Navbar 上方  (要加裝在個人頁面)(從includes/eHead.jsp要拉一個檔案到自己資料夾改)////////////////// -->
		<%@include file="../includes/eHead.jsp"%>
		<!-- ////////////////// End 上方 Navbar //////////////////-->
<!-- ////////////////// 個人主文開始 //////////////////-->

<fieldset style=" margin: 0px,auto">

<h1>修改食譜</h1>
    <form action="${pageContext.request.contextPath}/recipeupdate"  enctype="multipart/form-data" method="post">
<input type="hidden" name="userId" value="1001">
          <input type="hidden" name="id" value="${recipe.recipeId}" >
          
        <div><label><input
                     type="text" name="recipeName" placeholder="請填寫食譜標題" minlength="1"
                    required="" value=" ${recipe.recipeName}" style="width: 250px; height: 30px;"></label>

        </div>
        
                <div id="description">
            <h3 >簡介</h3>
            <div class="st1">
                <label for="" class="t1">照片</label>
                 <input type='file' name="file1"/>
                <img class = "img"/>
                <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
                <script>
                    $('input').on('change', function (e) {
                        const file = this.files[0];

                        const fr = new FileReader();
                        fr.onload = function (e) {
                            $('.img').attr('src', e.target.result);
                        };

                        // 使用 readAsDataURL 將圖片轉成 Base64
                        fr.readAsDataURL(file);
                    });
                </script>
            </div>
            <div ><label><textarea
                         placeholder="輸入食譜描述 (最多 200 字)" name="description" rows="5"
                        style="width: 516px; height: 302px;"></textarea></label>

            </div>
        </div>
        <div calss="howmany">

            <label for="" class="t1">份量:</label>
            <select name="howmanypeople" id="howmanypeople">
                <option value="null">未設定</option>
                
                <option value="1人份"<c:if test="${recipe.howManyPeople=='1人份'}">selected</c:if>>1人份</option>
                <option value="2人份"<c:if test="${recipe.howManyPeople=='2人份'}">selected</c:if>>2人份</option>
                <option value="3人份"<c:if test="${recipe.howManyPeople=='3人份'}">selected</c:if>>3人份</option>
                <option value="4人份"<c:if test="${recipe.howManyPeople=='4人份'}">selected</c:if>>4人份</option>
                <option value="5人份"<c:if test="${recipe.howManyPeople=='5人份'}">selected</c:if>>5人份</option>
                <option value="6人份"<c:if test="${recipe.howManyPeople=='6人份'}">selected</c:if>>6人份</option>
                <option value="7人份"<c:if test="${recipe.howManyPeople=='7人份'}">selected</c:if>>7人份</option>
                <option value="8人份"<c:if test="${recipe.howManyPeople=='8人份'}">selected</c:if>>8人份</option>
                <option value="9人份"<c:if test="${recipe.howManyPeople=='9人份'}">selected</c:if>>9人份</option>
                <option value="10人份"<c:if test="${recipe.howManyPeople=='10人份'}">selected</c:if>>10人份</option>
            </select>

        </div>
        <div calss="howlong">

            <label for="" class="t1">花費時間:</label>
            <select name="time" id="time">
                <option value="null">未設定</option>
                <option value="5分鐘"  <c:if test="${recipe.cookTime=='5分鐘'}">selected</c:if>>5分鐘</option>
                <option value="10分鐘" <c:if test="${recipe.cookTime=='10分鐘'}">selected</c:if>>10分鐘</option>
                <option value="15分鐘" <c:if test="${recipe.cookTime=='15分鐘'}">selected</c:if>>15分鐘</option>
                <option value="20分鐘" <c:if test="${recipe.cookTime=='20分鐘'}">selected</c:if>>20分鐘</option>
                <option value="25分鐘" <c:if test="${recipe.cookTime=='25分鐘'}">selected</c:if>>25分鐘</option>
                <option value="30分鐘" <c:if test="${recipe.cookTime=='30分鐘'}">selected</c:if>>30分鐘</option>
                <option value="35分鐘" <c:if test="${recipe.cookTime=='35分鐘'}">selected</c:if>>35分鐘</option>
                <option value="40分鐘" <c:if test="${recipe.cookTime=='40分鐘'}">selected</c:if>>40分鐘</option>
                <option value="45分鐘" <c:if test="${recipe.cookTime=='45分鐘'}">selected</c:if>>45分鐘</option>
                <option value="50分鐘" <c:if test="${recipe.cookTime=='50分鐘'}">selected</c:if>>50分鐘</option>
                <option value="55分鐘" <c:if test="${recipe.cookTime=='55分鐘'}">selected</c:if>>55分鐘</option>
                <option value="60分鐘" <c:if test="${recipe.cookTime=='60分鐘'}">selected</c:if>>60分鐘</option>
            </select>

        </div>
        <section id="ingredientsection">
        <h3>食材<span aria-label="食材敘述">食材 15 字以內，份量 10
                字以內</span></h3>

        <fieldset class="ingredientsfield">
        <c:forEach items="${requestScope.ingredients}" var="item">
            <div>
                <div data-disabled-sortable="false" aria-label="食材資訊" id="ingredient"><label><input type="text"
                            aria-label="食材" placeholder="食材" maxlength="15" value=""
                            name="ingredient"></label><label><input class="mdc-text-field__input" type="text"
                            aria-label="份量" placeholder="份量" maxlength="10" value="${item.ingredient}" name="amount"></label><button
                        class="deleteingredient">刪除</button>
                </div>
            </div>
            <div>
                <div data-disabled-sortable="false" aria-label="食材資訊" id="ingredient"><label><input type="text"
                            aria-label="食材" placeholder="食材" maxlength="15" value=""
                            name="ingredient"></label><label><input class="mdc-text-field__input" type="text"
                            aria-label="份量" placeholder="份量" maxlength="10" value="${item.amount}" name="amount"></label><button
                        class="deleteingredient">刪除</button>
                </div>
            </div>
            </c:forEach>
        </fieldset><button data-color="blue" data-size="md" data-full-width="true" data-unfulfilled="false"
            data-pending="false" id="plusing" data-with-title="false" type="button"
            aria-label="新增食材"><span>加入食材</span></button>

    </section>
    <c:forEach items="${requestScope.step}" var="item" varStatus="status">
    ${status.index+1}. ${item.step}</c:forEach>
        <section class="style-module__recipeEditorStep___3m52r" id="step">
            <h3 class="style-module__recipeEditorFieldTitle___1DFTn">步驟<span
                    class="style-module__recipeEditorFieldTitleDescription___387Sr" aria-label="步驟敘述"></span>
            </h3>
            <div class="steparea">
             
                <div class="style-module__recipeEditorStepItem___MuONW">
                    <section class="style-module__recipeEditorStepItemContent___1-QAn">
                        <header class="style-module__recipeEditorStepItemContentHeader___1BQMR">
                            <h4 class="style-module__recipeEditorStepItemContentHeaderTitle___RPJzS"> </h4>

                        </header>
                        <div class="style-module__recipeEditorTextArea___3FI8w"><label
                                class="mdc-text-field mdc-text-field--outlined mdc-text-field--textarea mdc-text-field--no-label style-module__recipeEditorTextAreaDom___2LZQF"><textarea
                                    class="mdc-text-field__input" placeholder="輸入步驟說明 (最多 150 字)" rows="4" name="step"
                                    style="width: 350px; height: 150px;"></textarea></span><span
                                    class="mdc-notched-outline mdc-notched-outline--no-label"><span
                                        class="mdc-notched-outline__leading"></span><span
                                        class="mdc-notched-outline__trailing"></span></span></label>

                        </div>
                    </section>
                </div>
                x
               
            </div>
            <label class="plus">增加步驟</label>
        </section>
        <div class="sub">
            <input type="submit" value="送出">
            <input type="reset" value="清除">
        </div>
    </form>
    </filedset>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script>
        $(function () {
        	 $('#plusing').click(function () {
                 let content = `<div>
         <div  data-disabled-sortable="false"
                         aria-label="食材資訊" id="ingredient"><label><input type="text" aria-label="食材"  placeholder="食材" maxlength="15"
                                 value="" name="ingredient"></label><label><input
                                 class="mdc-text-field__input" type="text" aria-label="份量" placeholder="份量" maxlength="10"
                                 value="" name="amount"></label><button
                         class="deleteingredient">刪除</button>
                                 </div></div>
                                 `
                 $('.ingredientsfield').append(content)
             })
             $('.ingredientsfield').on('click', 'button', function () {
            	 $(this).parent().parent().remove();
              
             })
<%--             <% List<Step> steps= (List<Step>)request.getAttribute("step"); %> --%>
            let i = ${fn:length(step)+1}
            $('.plus').click(function () {

                let content =
                    `<div class="style-module__recipeEditorStepItem___MuONW">

<section class="style-module__recipeEditorStepItemContent___1-QAn">
    <header class="style-module__recipeEditorStepItemContentHeader___1BQMR">
        <h4 class="style-module__recipeEditorStepItemContentHeaderTitle___RPJzS">`+ i + `.</h4>

    </header>
    <div class="style-module__recipeEditorTextArea___3FI8w"><label
            class="mdc-text-field mdc-text-field--outlined mdc-text-field--textarea mdc-text-field--no-label style-module__recipeEditorTextAreaDom___2LZQF"><textarea
                class="mdc-text-field__input" placeholder="輸入步驟說明 (最多 150 字)" rows="4" name="step"
                style="width: 350px; height: 150px;"></textarea></span><span
                class="mdc-notched-outline mdc-notched-outline--no-label"><span
                    class="mdc-notched-outline__leading"></span><span
                    class="mdc-notched-outline__trailing"></span></span></label>
    </div>
</section>
</div>
    `
                $('.steparea').append(content)
                i++
            })




        })
    </script>
   
<!-- ////////////////// 個人主文結束 //////////////////-->
		<!--////////////////// Footer(開始) //////////////////-->
		<%@include file="../includes/eFooter.jsp"%>
		<!-- ////////////////// Footer(結束) //////////////////-->

		</div>
		<!-- ////////////////// 中間主畫面(結束) ////////////////// -->
	</main>
	<!-- ////////////////// 主畫面框架(結束) //////////////////-->

	<!-- ////////////////// (右上設定鈕)Sidenav Type 調整樣式 ////////////////// -->
	<!-- ////////////////// Sidebar Backgrounds 開始 //////////////////-->
	<%@include file="../includes/eSidenavTypeSetting.jsp"%>
	<!-- ////////////////// Sidebar Backgrounds 結束 ////////////////// -->

	<!-- ////////////////// 框架Script url (開始)(不能少) ////////////////// -->
	<%@include file="../includes/eScriptForBody.jsp"%>
	<!-- ////////////////// 框架Script (結束) //////////////////-->

</body>

</html>