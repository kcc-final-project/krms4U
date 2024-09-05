<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <!-- Bootstrap5 -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
    />
    <!-- Google Material Icons -->
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/icon?family=Material+Icons"
    />
    <!-- Common-layout CSS-->
    <link rel="stylesheet" href="/resources/css/common/commonLayout.css"/>
    <link rel="stylesheet" href="/common-layout.css"/>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
    />
    <link rel="stylesheet" href="resources/css/memberMypage.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script>

        $(function () {
            $('#cancel-btn').on('click', function () {
                const checkedEl = $('.form-check-input:checked');

                $(checkedEl).each(function(index, item) {
                    $(item).closest('.check-parent').find('.status').text('승인 대기');
                });
            })
        })
        $(function() {
            $(".goToSignUpPage").on("click", function() {
                window.location.href="/joinForm";
            });

            $(".goToSignInPage").on("click", function() {
                window.location.href="/loginForm";
            });
        });

    </script>
</head>
<body>
<div class="common-header">
    <div class="ctm-wrap">
        <div class="header-left">
            <div class="header-left__1">
                <img src="/resources/img/service/logo.svg" class="logo" alt="" />
            </div>
            <div class="header-left__2">
                <div>제품</div>
            </div>
        </div>
        <div class="header-right">
            <sec:authorize access="isAnonymous()">
                <span class="goToSignUpPage">회원가입</span>
                <span class="goToSignInPage">로그인</span>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <form method="POST" action="/logout">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <button type="submit" class="logout-btn">로그아웃</button>
                </form>
            </sec:authorize>
        </div>
    </div>
</div>


<div class="common-main">
    <div class="main">
        <div class="container">
            <div class="container-header"></div>
            <div class="main-mypage-header">
                <div class="mypage-logo-wrap">
              <span class="material-icons material-symbols-outlined">
                home
              </span>
                    <h6>> 마이페이지</h6>
                </div>
            </div>
            <div class="mypage-user-name">
<%--                <span class="user-name">${user.name}</span>--%>
                <span class="user-name-text">님 안녕하세요!</span>
            </div>
            <div class="mypage-pay-list">

                <div class="mypage-pay-wrap">
                    <div class="order-details">
                        <h3>신청 내역</h3>
                        <div class="my-application-service-list">
                            <table class="order-table shadow">
                                <thead>
                                <tr>
                                    <th>
                                        <div class="form-check">
                                            <input
                                                    class="form-check-input"
                                                    type="checkbox"
                                                    value=""
                                                    id="flexCheckDefault"
                                            />
                                            <label
                                                    class="form-check-label"
                                                    for="flexCheckDefault"
                                            >
                                            </label>
                                        </div>
                                    </th>

                                    <th>주문번호</th>
                                    <th>상품</th>
                                    <th>상품명</th>
                                    <th>회원명</th>
                                    <th>모델코드</th>

                                    <th>주문날짜</th>

                                    <th>상태</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="items" items="${user}">
                                    <tr class="check-parent">
                                        <td>
                                            <div class="form-check">
                                                <input
                                                        class="form-check-input"
                                                        type="checkbox"
                                                        value=""
                                                        id="flexCheckDefault"
                                                />
                                                <label
                                                        class="form-check-label"
                                                        for="flexCheckDefault"

                                                >
                                                </label>
                                            </div>
                                        </td>
                                        <td>${items.orderProductId}</td>
                                        <td><img src="water.png" class="product-imags"/></td>

                                        <td>${items.modelName}</td>
                                        <td>${items.name}</td>
                                        <td>${items.modelCode}</td>

                                        <td>2019/06/18 09:00</td>

                                        <td class="status">접수 완료</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input
                                                    class="form-check-input"
                                                    type="checkbox"
                                                    value=""
                                                    id="flexCheckDefault"
                                            />
                                            <label
                                                    class="form-check-label"
                                                    for="flexCheckDefault"
                                            >
                                            </label>
                                        </div>
                                    </td>
                                    <td>3</td>
                                    <td><img src="water.png" class="product-imags"/></td>
                                    <td>아이콘 정수기 2</td>
                                    <td>김상학</td>
                                    <td>-</td>

                                    <td>2019/06/18 09:00</td>

                                    <td>-</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input
                                                    class="form-check-input"
                                                    type="checkbox"
                                                    value=""
                                                    id="flexCheckDefault"
                                            />
                                            <label
                                                    class="form-check-label"
                                                    for="flexCheckDefault"
                                            >
                                            </label>
                                        </div>
                                    </td>
                                    <td>2</td>
                                    <td><img src="water.png" class="product-imags"/></td>
                                    <td>아이콘 정수기 2</td>
                                    <td>김상학</td>
                                    <td>-</td>

                                    <td>2019/06/04 10:21</td>

                                    <td>-</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input
                                                    class="form-check-input"
                                                    type="checkbox"
                                                    value=""
                                                    id="flexCheckDefault"
                                            />
                                            <label
                                                    class="form-check-label"
                                                    for="flexCheckDefault"
                                            >
                                            </label>
                                        </div>
                                    </td>
                                    <td>1</td>
                                    <td><img src="water.png" class="product-imags"/></td>
                                    <td>아이콘 정수기 2</td>
                                    <td>김상학</td>
                                    <td>-</td>

                                    <td>2019/06/03 09:00</td>

                                    <td>-</td>
                                </tr>
                                </tbody>
                            </table>
                            <button type="button" class="btn btn-secondary shadow" id="cancel-btn">
                                신청 취소
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap5 Script -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"
></script>
</body>
</html>
