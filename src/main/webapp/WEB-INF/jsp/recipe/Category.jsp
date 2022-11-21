<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Epicer Admin System</title>

<!-- eLindHead (開始) -->
<%@include file="../includes/eLinkHead.jsp" %>
<!-- eLindHead (結束) -->
<style>
	span {
position:relative;
overflow:hidden;
white-space: nowrap;  
overflow: hidden;  
text-overflow: ellipsis; 
max-width:600px;
display:inline-block;
}
</style>
</head>

<body class="g-sidenav-show   bg-gray-100">

	<!-- ////////////////// 介面最外層框架 //////////////////-->
	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<!-- ////////////////// Side Navber (開始) //////////////////-->
	<%@include file="../includes/eSidenavUser.jsp"%>
	<!-- ////////////////// Side Navber (結束) //////////////////-->
	<!-- //////////////////主畫面框架(開始) ////////////////// -->
	<main class="main-content position-relative border-radius-lg ">
		<!-- ////////////////// (Header)Start 上方 Navbar 上方  (要加裝在個人頁面)(從includes/eHead.jsp要拉一個檔案到自己資料夾改)////////////////// -->
		<%@include file="../includes/eHead.jsp"%>
		<!-- ////////////////// End 上方 Navbar //////////////////-->
<!-- ////////////////// 個人主文開始 //////////////////-->
<input type="hidden" id="userId" value="1001" >
<input type="hidden" id="categoryId" value="2" >
<div id="description"></div>
<div class="card">
  <div class="recipetable">
<table class="table align-items-center mb-0"   width="100%">
    <colgroup>
			<col width="16%">
			<col width="60%">
			<col width="12%">
			<col width="12%">
		</colgroup>
      <thead>
        <tr>
          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">食譜名稱</th>
          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">食譜簡介</th>
          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">烹調時間</th>
          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">幾人份</th>
        </tr>
      </thead>
<tbody id="table">

</tbody>
    </table>
  </div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

      <script>
        $(document).ready(function () {
            let categoryId = Number($('#categoryId').val());
            $.ajax({
                type: 'get',
                url: `categories/` + categoryId,
                dataType: 'json',
                complete: function (data) {
                	
                	
                    console.log(JSON.stringify(data))
                    let description =`<h3>`+data.responseJSON[1].categoryName+`</h3><div>`+data.responseJSON[1].categoryDescriptionString+`</div>`
                    $("#description").append(description);
                    for (var x = 0; x < data.responseJSON[0].length; x++) {
                      let content=  `
                    	  <tr>
                          <form name="Form" action="/recipe/`+ data.responseJSON[0][x].recipeId + `" method="POST">
                           <input type="hidden" name="_method" value="DELETE" >
                            <td>
                              <div class="d-flex px-2 py-1">
                                <div>
                                  <img src="data.responseJSON[0][x].recipeImage" class="avatar avatar-sm me-3">
                                </div>
                                <div class="d-flex flex-column justify-content-center">
                                  <h6 class="mb-0 text-xs"><a href="${pageContext.request.contextPath}/reciperesult/` + data.responseJSON[0][x].recipeId + `">` + data.responseJSON[0][x].recipeName + `</h6>
                                </div>
                              </div>
                            </td>
                            <td>
                              <span class="badge badge-sm badge-success" style="color: blue">`+ data.responseJSON[0][x].recipeDescription + `</span>
                            </td>
                            <td class="align-middle text-center text-sm">
                              <span class="badge badge-sm badge-success" style="color: blue">`+ data.responseJSON[0][x].cookTime + `</span>
                            </td>
                            <td class="align-middle text-center">
                              <span class="text-secondary text-xs font-weight-bold">`+ data.responseJSON[0][x].howManyPeople + `</span>
                            </td>
                              
                              </form>
                            </tr> `

                          $("#table").append(content)
                    }
                }

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