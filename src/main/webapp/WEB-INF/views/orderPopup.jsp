<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
  <title>판매 유형별 품목 요금 조회</title>
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
  <!-- OrderPopup CSS-->
  <link rel="stylesheet" href="/resources/css/orderpopup.css" />
  <!-- OrderPopup JS-->
  <script src="/resources/js/orderpopup.js"></script>
</head>
<body>
<h1>[hong@gmail.com]님의 렌탈&구매 품목 조회</h1>
<br />
<div class="search-container">
  <table>
    <td>판매구분</td>
    <td>
      <select id="productGroup">
        <option value="dafault">판매 구분</option>
        <option value="렌탈">렌탈</option>
        <option value="구매">구매</option>
      </select>
    </td>
    <td>품목</td>
    <td>
      <input type="text" id="productCode" />
    </td>
    <td>
      &nbsp;
    <td colspan="2" style="text-align: center;"><button onclick="searchData()">검색</button></td>
    </td>
    </tr>
  </table>
</div>
<br>
<div id="result"></div>
<br />
<div class="admin-order-section5">
  <h5>[Total: 0] | 회원님의 전체 주문 목록</h5>
</div>
<div class="admin-order-section6 scrollable-list">
  <table class="table table-striped table-bordered table-hover text-center">
    <thead>
    <tr>
      <td>No</td>
      <td>판매 구분</td>
      <td>판매 유형</td>
      <td>상품번호</td>
      <td>모델명</td>
      <td>렌탈 요금</td>
      <td>기사 배정</td>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>1</td>
      <td>렌탈</td>
      <td>일반 렌탈</td>
      <td>P1120000001</td>
      <td>CPI-7400N</td>
      <td>월 23,650원</td>
      <td>
        <button onclick="engineer('1')" id="button1">기사 배정</button>
        <br />
        <div id="popup1" class="popup">
          <h2>[배정 가능한 기사 목록]</h2>
          <ul id="engineerList1">
            <li onclick="selectEngineer('이름 : 김기사, 직급 : 대리, 조직 : 설치 1팀', 'button1')">김기사</li>
            <li onclick="selectEngineer('이름 : 윤기사, 직급 : 대리, 조직 : 설치 1팀', 'button1')">윤기사</li>
            <li onclick="selectEngineer('이름 : 황기사, 직급 : 대리, 조직 : 설치 1팀', 'button1')">황기사</li>
          </ul>
          <button onclick="closePopup('popup1')">닫기</button>
        </div>
</td>
</tr>
<tr>
  <td>2</td>
  <td>구매</td>
  <td>일반 구매</td>
  <td>P1120000002</td>
  <td>CPI-7401N</td>
  <td>월 23,700원</td>
  <td>
    <button onclick="engineer('2')" id="button2">기사 배정</button>
    <br />
    <div id="popup2" class="popup">
      <h2>[배정 가능한 기사 목록]</h2>
      <ul id="engineerList2">
        <li onclick="selectEngineer('이름 : 김기사, 직급 : 대리, 조직 : 설치 1팀', 'button2')">김기사</li>
        <li onclick="selectEngineer('이름 : 윤기사, 직급 : 대리, 조직 : 설치 1팀', 'button2')">윤기사</li>
        <li onclick="selectEngineer('이름 : 황기사, 직급 : 대리, 조직 : 설치 1팀', 'button2')">황기사</li>
      </ul>
      <button onclick="closePopup('popup2')">닫기</button>
    </div>
  </td>
</tr>
<tr>
  <td>3</td>
  <td>렌탈</td>
  <td>일반 렌탈</td>
  <td>P1120000003</td>
  <td>CPI-7402SN</td>
  <td>월 33,750원</td>
  <td>
    <button onclick="engineer('3')" id="button3">기사 배정</button>
    <br />
    <div id="popup3" class="popup">
      <h2>[배정 가능한 기사 목록]</h2>
      <ul id="engineerList">
        <li onclick="selectEngineer('이름 : 김기사, 직급 : 대리, 조직 : 설치 1팀', 'button3')">김기사</li>
        <li onclick="selectEngineer('이름 : 윤기사, 직급 : 대리, 조직 : 설치 1팀', 'button3')">윤기사</li>
        <li onclick="selectEngineer('이름 : 황기사, 직급 : 대리, 조직 : 설치 1팀', 'button3')">황기사</li>
      </ul>
      <button onclick="closePopup('popup3')">닫기</button>
    </div>
  </td>
</tr>
</tbody>
</table>
</div>
<br />
<div class="admin-order-section5">
  <h5>[Total: 0] | 회수 품목 목록</h5>
</div>
<div class="admin-order-section6 scrollable-list">
  <table class="table table-striped table-bordered table-hover text-center">
    <thead>
    <tr>
      <td>return_id</td>
      <td>order_product_id</td>
      <td>상품명</td>
      <td>회수 날짜</td>
      <td>회수 시간</td>
      <td>회수 상태</td>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>1</td>
      <td>1</td>
      <td>아이콘 얼음정수기</td>
      <td>2024-09-02</td>
      <td>오후 7시 50분</td>
      <td>회수 조치 완료</td>
    </tr>
    <tr>
      <td>2</td>
      <td>2</td>
      <td>아이콘 얼음정수기2</td>
      <td>2024-09-03</td>
      <td>오후 7시 50분</td>
      <td>회수 조치 대기</td>
    </tr>
    </tbody>
  </table>
</div>

</body>
</html>