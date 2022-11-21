<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">

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

       <h1>建立食譜</h1>
    <form action="${pageContext.request.contextPath}/recipe" enctype="multipart/form-data" method="post" >
    <input type="hidden" name="userId" value="1001">
        <div><label><input
                     type="text" name="recipeName" placeholder="請填寫食譜標題" minlength="1"
                    required="" value="" style="width: 250px; height: 30px;"></label>

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
                         placeholder="輸入食譜描述 (最多 200 字)" name="recipeDescription" rows="5"
                        style="width: 516px; height: 302px;"></textarea></label>
            </div>
            <div class="descriptionvalidation"></div>
        </div>
        <div calss="howmany">

            <label for="" class="t1">份量:</label>
            <select name="howManyPeople" id="howmanypeople">
                <option value="null">未設定</option>
                <option value="1人份">1人份</option>
                <option value="2人份">2人份</option>
                <option value="3人份">3人份</option>
                <option value="4人份">4人份</option>
                <option value="5人份">5人份</option>
                <option value="6人份">6人份</option>
                <option value="7人份">7人份</option>
                <option value="8人份">8人份</option>
                <option value="9人份">9人份</option>
                <option value="10人份">10人份</option>
            </select>

        </div>
        <div calss="howlong">

            <label for="" class="t1">花費時間:</label>
            <select name="cookTime" id="time">
                <option value="null">未設定</option>
                <option value="5分鐘">5分鐘</option>
                <option value="10分鐘">10分鐘</option>
                <option value="15分鐘">15分鐘</option>
                <option value="20分鐘">20分鐘</option>
                <option value="25分鐘">25分鐘</option>
                <option value="30分鐘">30分鐘</option>
                <option value="35分鐘">35分鐘</option>
                <option value="40分鐘">40分鐘</option>
                <option value="45分鐘">45分鐘</option>
                <option value="50分鐘">50分鐘</option>
                <option value="55分鐘">55分鐘</option>
                <option value="60分鐘">60分鐘</option>
            </select>

        </div>

    <section id="ingredientsection">
        <h3>食材<span aria-label="食材敘述">食材 15 字以內，份量 10
                字以內</span></h3>

        <fieldset class="ingredientsfield">
            <div>
                <div data-disabled-sortable="false" aria-label="食材資訊" id="ingredient"><label><input type="text"
                            aria-label="食材" placeholder="食材" maxlength="15" value=""
                            name="ingredient"></label><label><input class="mdc-text-field__input" type="text"
                            aria-label="份量" placeholder="份量" maxlength="10" value="" name="amount"></label><button
                        class="deleteingredient">刪除</button>
                </div>
                <div class="error"><span>${descriptionError.defaultMessage }</span></div>
            </div>
            <div>
                <div data-disabled-sortable="false" aria-label="食材資訊" id="ingredient"><label><input type="text"
                            aria-label="食材" placeholder="食材" maxlength="15" value=""
                            name="ingredient"></label><label><input class="mdc-text-field__input" type="text"
                            aria-label="份量" placeholder="份量" maxlength="10" value="" name="amount"></label><button
                        class="deleteingredient">刪除</button>
                </div>
                <div class="ingredientvalidation"></div>
            </div>
        </fieldset><button data-color="blue" data-size="md" data-full-width="true" data-unfulfilled="false"
            data-pending="false" id="plusing" data-with-title="false" type="button"
            aria-label="新增食材"><span>加入食材</span></button>

    </section>
      <section id="step">
        <h3>步驟<span aria-label="步驟敘述"></span>
        </h3>
        <fieldset class="steparea" id="stepfieldset">


            <section class="stepsection" id="stepsection" data-index="1">
                <header>
                    <h4 class="steporder">1</h4>
                </header>
                <div><label><textarea placeholder="輸入步驟說明 (最多 150 字)" rows="4" name="step"
                            style="width: 350px; height: 150px;"></textarea></label>
                    <button class="deletestep">刪除</button>
                </div>
            </section>



            <section class="stepsection" id="stepsection" data-index="2">
                <header>
                    <h4 class="steporder">2</h4>

                </header>
                <div>
                    <label><textarea placeholder="輸入步驟說明 (最多 150 字)" rows="4" name="step"
                            style="width: 350px; height: 150px;"></textarea></label>
                    <button class="deletestep">刪除</button>
                </div>
            </section>


            <section class="stepsection" id="stepsection" data-index="3">
                <header>
                    <h4 class="steporder">3</h4>

                </header>
                <div>
                    <label><textarea placeholder="輸入步驟說明 (最多 150 字)" rows="4" name="step"
                            style="width: 350px; height: 150px;"></textarea></label>
                    <button class="deletestep">刪除</button>
                </div>
            </section>

        </fieldset>
        <label class="plus">增加步驟</label>
    </section>
    <div class="sub">
        <input type="submit" value="送出">
        <input type="reset" value="清除">
    </div>
    </form>
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
                                 </div><div class="ingredientvalidation"></div></div>
                                 `
                 $('.ingredientsfield').append(content)
             })
             $('.ingredientsfield').on('click', 'button', function () {
            	 $(this).parent().parent().remove();
              
             })
            
            
            
            let i = 3;

            $('#step').on('click', '.plus', function () {

                i++;
                let content =
                    `
<section class="stepsection" id="stepsection" data-index="`+ i + `">
    <header >
        <h4 class="steporder" >` + i + `</h4>

    </header>
    <div >
    	<label>
    		<textarea class="mdc-text-field__input" placeholder="輸入步驟說明 (最多 150 字)" rows="4" name="step"
                style="width: 350px; height: 150px;"></textarea>
        </label>
        <button class="deletestep">刪除</button>
    </div>
	</section>

    `
                $('.steparea').append(content)
            })

            $('.steparea').on('click', 'button', function () {
                let j = $(this).parent().parent().find('.steporder').text();
                let nextindex = $(this).parent().parent().next().find('.steporder');

                for (j; j < i; j++) {
                    console.log(j);
                    // console.log($(this).parent().parent().find('.steporder').text())
                    nextindex.text(j);
                    nextindex = nextindex.parent().parent().next().find('.steporder');
                }
                i = j;
                i--;
                $(this).parent().parent().remove();

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