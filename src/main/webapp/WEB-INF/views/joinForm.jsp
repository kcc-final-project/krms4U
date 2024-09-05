<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
    <link rel="stylesheet" href="resources/css/join.css">

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
                            <span class="material-icons"><img src="/resources/img/service/logo.svg" class="logo"
                                                              alt=""/></span>
                        </div>
                        <div class="login-title"></div>
                    </div>
                    <div class="login-title-mapper">
                        <p>회원가입</p>
                        <div>
                            <form:form action="/join" method="post" modelAttribute="user">

                                <div>
                                    <form:input
                                            type="text"
                                            class="form-control"
                                            placeholder="이름"
                                            name="name"
                                            path="name"
                                    />
                                    <form:errors path="name" cssClass="errorCss"></form:errors>
                                </div>

                                <div>
                                    <form:input
                                            type="text"
                                            class="form-control"
                                            placeholder="이메일"
                                            name="email"
                                            path="email"
                                    />
                                    <form:errors path="email" cssClass="errorCss"></form:errors>
                                </div>
                                <div>
                                    <form:input
                                            type="password"
                                            class="form-control"
                                            placeholder="비밀번호"
                                            name="password"
                                            path="password"
                                    />
                                    <div class="errors-wrap">
                                        <form:errors path="password" cssClass="errorCss"></form:errors>
                                    </div>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                                <button
                                        type="submit"
                                        class="btn btn-primary"
                                        id="btn-primary-login"
                                >
                                    회원가입
                                </button>
                            </form:form>
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
