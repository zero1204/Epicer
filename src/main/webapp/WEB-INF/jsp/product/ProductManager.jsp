<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link data-turbolinks-track="true"
            href="http://static.oswd.org/assets/application-6d2a4562b1f5d344541d91ef6d0c8e9a.css" media="all"
            rel="stylesheet">
<style>
#nav {

            text-align: center;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            z-index: 10000;
            cursor: default;
            height: 4em;
            line-height: 3.5em;
            background-color: white;
        }

        #nav ul {
            margin-bottom: 0;
            list-style: none;
            padding-left: 0;
        }

        #nav li {
            display: inline-block;
            padding-left: 0;
        }

        #nav a {
            -moz-transition: background-color .2s ease-in-out;
            -webkit-transition: background-color .2s ease-in-out;
            -ms-transition: background-color .2s ease-in-out;
            transition: background-color .2s ease-in-out;
            position: relative;
            display: block;
            text-decoration: none;
            outline: 0;
            font-weight: 600;
            border-radius: 8px;
            color: black;
            height: 2.5em;
            line-height: 2.5em;
            padding: 0 1.25em;
        }

        #nav a:hover {
            color: #fff !important;
            background: #7f987e;
        }

        #nav a.active {
            background: #484848;
        }

        #nav a.active:before {
            content: '';
            display: block;
            position: absolute;
            bottom: -0.6em;
            left: 50%;
            margin-left: -0.75em;
            border-left: solid 0.75em transparent;
            border-right: solid 0.75em transparent;
            border-top: solid 0.6em #282828;
        }
        
        fieldset {
            width: 500px;
            border: 1px solid wheat;
            border-radius: 15px;
            margin: 15px auto;
            background-color: rgb(230, 230, 255);
        }

        legend {
            color: blue;
            text-align: center;
        }

        .st1 {
            width: 470px;
            
            margin: 20px;
            padding-bottom: 10px;
        }

        .button {
            width: 450px;
            margin: 20px;
            text-align: center;
        }

        .t1 {
            width: 120px;
            float: left;
            text-align: right;
        }
        
        
				</style>
</head>
<body>
<nav id="nav">
        <ul class="container">
            
            <li><a href="productlist">????????????</a></li>
        </ul>
    </nav>
      <br><br><br>
<form action="insertProductAction" method="post">

    <fieldset >
<h1 ALIGN=CENTER>????????????</H1>
        <div class="st1">
            <label for="name" class="t1">????????????:</label>
            <input type="text" name="name" placeholder=????????????????????? required>
                    
        
        
        
        
<!--             <input type="submit" value="??????" name="search" > -->
<!--             <input type="submit" value="??????" name="update" > -->
<!--             <input type="submit" value="??????" name="delete" > -->
        </div>
        <div class="st1">
            <label for="description" class="t1">????????????:</label>
            <textarea name="description" cols="25" rows="5" placeholder=?????????????????????></textarea>
        </div>
        <div class="st1">
            <label for="category" class="t1">????????????:</label>
            <select name="category" >
            <option value="">???????????????</option>
                <option value="1" name="???????????????" >???????????????</option>
                <option value="2" name="??????">??????</option>
                <option value="3" name="???????????????">???????????????</option>
                <option value="4" name="?????????">?????????</option>
                <option value="5" name="?????????">?????????</option>
                <option value="6" name="????????????????????????">????????????????????????</option>
                <option value="7" name="????????????">????????????</option>
            </select>
        </div>
        <div class="st1">
            <label for="unit" class="t1">??????:</label>
            <input type="text" name="unit" placeholder=?????????????????????>
        </div>
        <div class="st1">
            <label for="price" class="t1">??????:</label>
            <input type="text" name="price" placeholder=?????????????????????>
        </div>
        <div class="st1">
            <label for="origin" class="t1" >??????:</label>
            <input type="text" name="origin" placeholder=?????????????????????>
        </div>
        <div class="button">
       
            <input type="hidden" name="action" value="insert" >
            <input type="submit" value="??????" name="insert" >
        
        </div>
    </fieldset>
    </form>
    
    
</body>
</html>