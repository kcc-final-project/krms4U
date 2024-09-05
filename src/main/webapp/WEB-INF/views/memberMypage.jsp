<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="commonServiceLayout.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="resources/css/memberMypage.css">
</head>
<body>
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
                <span class="user-name-text"><span class="nickname">${name}</span>님 안녕하세요!</span>
                <div class="line"></div>
            </div>
            <div class="mypage-pay-list">

                <div class="mypage-pay-wrap">
                    <div class="order-details">
                        <h3>신청 내역</h3>
                        <div class="my-application-service-list">
                            <table class="order-table shadow-sm">
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
                                        <td><img src="/resources/img/service/water.jpg" class="product-imags"/></td>

                                        <td>${items.modelName}</td>
                                        <td>${items.name}</td>
                                        <td>${items.modelCode}</td>

                                        <td>2019/06/18 09:00</td>

                                        <td class="status">접수 완료</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <button type="button" class="btn btn-outline-primary" id="cancel-btn">
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
<script>

    $(function () {
        $('#cancel-btn').on('click', function () {
            const checkedEl = $('.form-check-input:checked');

            $(checkedEl).each(function (index, item) {
                $(item).closest('.check-parent').find('.status').text('승인 대기');
            });
        })
    })
    $(function () {
        $(".goToSignUpPage").on("click", function () {
            window.location.href = "/joinForm";
        });

        $(".goToSignInPage").on("click", function () {
            window.location.href = "/loginForm";
        });
    });

</script>
</body>
</html>
