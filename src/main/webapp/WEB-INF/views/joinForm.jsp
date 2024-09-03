<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
    />

    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/icon?family=Material+Icons"
    />
    <style>
        html,
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .main {
            height: 932px;
        }
        .body {
            height: 100%;
            margin: 0 auto;
            width: 30%;
        }
        .login-head {
            height: 10%;
        }
        .login-main {
            height: 80%;
        }
        .login-mapper {
            height: 90%;
        }
        .login-body {
            height: 69%;
        }
        .login-image-mapper {
            height: 35%;
        }
        .login-image-header {
            height: 50%;
        }
        .login-image {
            height: 50%;
            width: 24%;
            margin: 0 auto;
        }
        .material-icons {
            margin-right: 100px;
        }
        .login-title-mapper {
            height: 20%;
        }
        .login-title-mapper p {
            text-align: center;
            font-size: 30px;
            font-weight: 700;
        }
        .login-title-mapper form {
            text-align: center;
        }
        .login-title-mapper div {
            margin-top: 30px;
        }

        .form-control {
            height: 50px;
            width: 60%;
            margin: 0 auto;
            background-color: #f5f5f5;
        }

        #btn-primary-login {
            height: 50px;
            width: 60%;
            margin-top: 60px;
        }

        .line {
            height: 1%;
            width: 60%;
            background-color: #d7c4c4;
            margin: 0 auto;
        }

    </style>
</head>
<body>
<div class="main">
    <div class="body">
        <div class="login-head"></div>
        <div class="login-main card shadow rounded-5">
            <div class="login-mapper">
                <div class="login-body">
                    <div class="login-image-mapper">
                        <div class="login-image-header"></div>
                        <div class="login-image">
                            <span class="material-icons"><img src="logo.svg" /></span>
                        </div>
                        <div class="login-title"></div>
                    </div>
                    <div class="login-title-mapper">
                        <p>회원가입</p>
                        <div>
                            <form action="/join" method="post">
                                <div>
                                    <input
                                            type="text"
                                            class="form-control"
                                            placeholder="이름"
                                            name="name"
                                    />
                                </div>
                                <div>
                                    <input
                                            type="email"
                                            class="form-control"
                                            placeholder="이메일"
                                            name="email"
                                    />
                                </div>
                                <div>
                                    <input
                                            type="password"
                                            class="form-control"
                                            placeholder="비밀번호"
                                            name="password"
                                    />
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                                <button
                                        type="submit"
                                        class="btn btn-primary"
                                        id="btn-primary-login"
                                >
                                    회원가입
                                </button>
                            </form>
                        </div>
                        <div class="line"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"
></script>
</body>
</html>
