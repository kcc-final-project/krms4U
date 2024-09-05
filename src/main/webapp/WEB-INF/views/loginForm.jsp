<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel ="stylesheet" href="resources/css/login.css">
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
                                <span class="material-icons"><img src="/resources/img/service/logo.svg" class="logo" alt="" /></span>
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