<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>建立食譜</h1>
    <form action="${pageContext.request.contextPath}/addByBinding" enctype="multipart/form-data"  method="post" >
    <input type="hidden" name="userId" value="1001">
        <div><label><input
                     type="text" name="recipeName" placeholder="請填寫食譜標題" minlength="1"
                     value="" style="width: 250px; height: 30px;"></label>

        </div>
        <div class="error"><span>${nameError.defaultMessage }</span></div>
        <div id="description">
            <h3 >簡介</h3>
        
            <div ><label><textarea
                         placeholder="輸入食譜描述 (最多 200 字)" name="recipeDescription" rows="5"
                        style="width: 516px; height: 302px;"></textarea></label>
            </div>
            <div class="error"><span>${descriptionError.defaultMessage }</span></div>
        </div>
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
        <div calss="howmany">

            <label for="" class="t1">份量:</label>
            <select name="howManyPeople" id="howManyPeople">
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
            <select name="cookTime" id="cookTime">
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
        <div class="sub">
            <input type="submit" value="送出" class="submit">
            <input type="reset" value="清除">
        </div>
        </form>
</body>
</html>