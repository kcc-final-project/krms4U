<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
        #exampleInputId {
            height: 50px;
            width: 60%;
            margin: 0 auto;
            background-color: #f5f5f5;
        }
        #exampleInputPassword1 {
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

        .join-member-link-mapper {
            height: 40%;
            display: flex;
            justify-content: center;
        }
        .join-member-link {
            text-decoration-line: none;
            color: black;
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
<%--<form action="/login" method="post">--%>
<%--    <input type="text" name="username" placeholder="username"><br>--%>
<%--    <input type="password" name="password" placeholder="password"><br>--%>
<%--    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
<%--    <button>로그인뿌</button>--%>

<%--</form>--%>
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
                            <p>로그인</p>
                            <div>
                                <form action="/login" method="post">
                                    <div>
                                        <input
                                                type="email"
                                                class="form-control"
                                                id="exampleInputId"
                                                placeholder="이메일"
                                                name="username"
                                        />
                                    </div>
                                    <div>
                                        <input
                                                type="password"
                                                class="form-control"
                                                id="exampleInputPassword1"
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
                                        로그인
                                    </button>
                                </form>
                            </div>
                            <div class="line"></div>
                            <div class="join-member-link-mapper">
                                <label
                                        class="form-check-label"
                                        id="form-check-member"
                                >회원이 아니신가요? >
                                </label>
                                <a href="/joinForm" class="join-member-link">회원가입</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="/oauth2/authorization/google">구글 로그인</a>
<a href="/joinForm">회원가입</a>

</body>
</html>