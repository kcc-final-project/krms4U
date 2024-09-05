<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="orderManage.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="_csrf" content="${_csrf.token}"/>
  <meta name="_csrf_header" content="${_csrf.headerName}"/>
</head>
<body>
<div class="common-main">
  <div class="main">
    <div class="admin-order-title">
      <span class="material-icons">home</span>
      <span class="material-icons">arrow_forward_ios</span>
      <span><b>개인 주문 관리</b></span>
    </div>
    <div class="admin-order-section5">
      <h3>주문 품목 목록</h3>
      &nbsp;
      <h5>
        고객 이메일을 누르면 '고객님이 렌탈한 물품'의 상세정보가 표기
        됩니다.
      </h5>
    </div>
    <div class="admin-order-section6 scrollable-list">

      <!-- Modal -->
      <div class="modal fade modal-xl" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-body">
              ...
            </div>
          </div>
        </div>
      </div>


      <table
              class="table table-striped table-bordered table-hover text-center center"
      >
        <thead>
        <tr>
          <td>No</td>
          <td>고객 이메일</td>
          <td>주문상품번호</td>
          <td>주문번호</td>
          <td>상품번호</td>
          <td>배송상태</td>
          <td>설치희망일</td>
          <td>설치우편번호</td>
          <td>설치주소</td>
          <td>수취인</td>
          <td>수취인연락처</td>
          <td>렌탈계약기간</td>
          <td>상품명</td>
          <td>모델코드</td>
          <td>자동이체일</td>
          <td>주문 생성일</td>
          <td>배송 상태 수정</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="orderproduct" items="${orderproducts}" varStatus="status">
          <tr class="parent">
            <td><c:out value="${orderproduct.memberId}" /></td>
            <td>
              <a href="" class="order-detail" data-member-id="${orderproduct.memberId}" data-email-id="${orderproduct.email}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <c:out value="${orderproduct.email}" />
              </a>
            </td>
            <td>
              OP-<c:out value="${orderproduct.orderId}" />
            </td>


            <td>ORDER-${orderproduct.orderProductId}</td>
            <td>PRODUCT-<c:out value="${orderproduct.productId}" /></td>
            <td class="orderState"><c:out value="${orderproduct.orderState}" /></td>
            <td><c:out value="${orderproduct.wishDate}" /></td>
            <td>우 <c:out value="${orderproduct.postcode}" /></td>
            <td><c:out value="${orderproduct.address}" /></td>
            <td><c:out value="${orderproduct.recipientName}" /></td>
            <td><c:out value="${orderproduct.recipientPhoneno}" /></td>
            <td><c:out value="${orderproduct.contractDeadline}" />개월</td>
            <td><c:out value="${orderproduct.modelName}" /></td>
            <td><c:out value="${orderproduct.modelCode}" /></td>
            <td>매월<c:out value="${orderproduct.automaticTransferDate}" />일</td>
            <td><c:out value="${orderproduct.orderDate}" /></td>
            <td>
              <button type="button" class="btn btn-primary delivery1" data-order-product-id="${orderproduct.orderProductId}">배송 변경</button>
            </td>

          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</div>
<script src="/resources/js/ordermanage.js"></script>
<script src="/resources/js/delivery.js"></script>
</body>
</html>