<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="commonAdminLayout.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Order CSS-->
    <link rel="stylesheet" href="/resources/css/charge.css"/>
    <!-- Order JS-->
    <script src="/resources/js/charge.js"></script>
</head>
<body>
<div class="common-main">
    <div class="main">
        <div class="admin-order-title">
            <span class="material-icons">home</span>
            <span class="material-icons">arrow_forward_ios</span>
            <span><b>개인 주문 청구 관리</b></span>
        </div>
        <div class="admin-order-section5">
            <h3>날짜 범위로 목록 검색</h3>
        </div>

        <div class="admin-order-section4">
            <label for="start-date">시작 날짜:</label>&nbsp;&nbsp;
            <input type="date" id="start-date" value="2023-08-01"/>
            &nbsp;&nbsp;&nbsp;
            <label for="end-date">종료 날짜:</label>&nbsp;&nbsp;
            <input type="date" id="end-date" value="2023-08-31"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button class="btn btn-outline-primary c-btn" onclick="filterList()">검색</button>
        </div>

        <div class="admin-order-section1 scrollable-list">
            <table
                    class="table table-striped table-bordered table-hover text-center shadow-sm"
            >
                <thead>
                <tr>
                    <td>
                        <input
                                type="checkbox"
                                name="checkbox_name"
                                value="checkbox_value"
                        />
                    </td>
                    <td>No</td>
                    <td>주문상품번호</td>
                    <td>상품번호</td>
                    <td>상품명</td>
                    <td>모델코드</td>
                    <td>회차</td>
                    <td>청구 회차</td>
                    <td>청구 일자</td>
                    <td>청구번호</td>
                    <td>은행명</td>
                    <td>카드번호</td>
                    <td>렌탈금액</td>
                    <td>결제일</td>
                    <td>고객 이메일</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="charge" items="${charges}" varStatus="status">
                    <tr id="row-${status.index}" data-date="${charge.orderDate}">
                        <td>
                            <input
                                    type="checkbox"
                                    name="checkbox_name"
                                    value="checkbox_value"
                            />
                        </td>
                            <%--                <td><c:out value="${charge.memberId}" /></td>--%>
                            <%--                <td><c:out value="${charge.email}" /></td>--%>
                        <td>

                            <c:out value="${charge.orderId}"/>

                        </td>


                        <td>OP-${charge.orderProductId}</td>
                        <td>PRODUCT-<c:out value="${charge.productId}"/></td>
                        <td><c:out value="${charge.modelName}"/></td>
                        <td><c:out value="${charge.modelCode}"/></td>
                        <td><c:out value="${charge.memberId}"/>회</td>
                        <td><c:out value="${charge.memberId}"/>회</td>
                        <td><c:out value="${charge.chargeDate}"/></td>
                        <td>Bill-0<c:out value="${charge.chargeId}"/></td>
                        <td><c:out value="${charge.bankName}"/></td>
                        <td><c:out value="${charge.cardNumber}"/></td>
                        <td><c:out value="${charge.rentalFee}"/>원</td>
                        <td class="c-f"><c:out value="${charge.payDate}"/></td>
                        <td><c:out value="${charge.email}"/></td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>
</div>
<script>
    function filterList() {
        const startDate = new Date(document.getElementById('start-date').value);
        const endDate = new Date(document.getElementById('end-date').value);
        const rows = document.querySelectorAll('tbody tr');

        rows.forEach((row) => {
            const rowDate = new Date(row.dataset.date);
            if (rowDate >= startDate && rowDate <= endDate) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    }
</script>
</body>
</html>
