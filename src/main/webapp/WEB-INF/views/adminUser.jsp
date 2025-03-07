<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> <%@ include file="commonAdminLayout.jsp" %> <%@ taglib
        prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
  <meta name="_csrf" content="${_csrf.token}"/>
  <meta name="_csrf_header" content="${_csrf.headerName}"/>
  <link rel="stylesheet" href="/resources/css/adminUser.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="common-main">
  <div class="main">
    <div class="main-member-header">
      <span class="material-icons material-symbols-outlined"> home </span>
      <h6>> 고객관리</h6>
    </div>
    <div class="main-member-name">
      <div class="name">
        <h3>고객 목록</h3>
      </div>
      <div class="search">
        <form class="d-flex" id="searchForm">
          <input
                  class="form-control me-2 hhh-input"
                  type="search"
                  placeholder="고객명을 입력해주세요"
                  aria-label="Search"
          />
          <button class="btn btn-outline-primary ccc-btn" type="submit">검색</button>
        </form>
      </div>
    </div>
    <div class="line"></div>
    <div class="all-member-counts">
      <span>전체 </span><span>${usersize}</span><span> 건</span>
    </div>
    <div class="main-member-list">
      <div class="member-table card shadow-sm">
        <table
                class="table table-striped table-hover table-box"
                id="payroll-table"
        >
          <thead>
          <tr>
            <th scope="col">번호</th>
            <th scope="col">권한</th>
            <th scope="col">고객명</th>
            <th scope="col">이메일</th>
            <th scope="col">생성일</th>
            <th scope="col">수정일</th>
            <th scope="col">메일 보내기</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="user" items="${users}" varStatus="status">
            <tr>
              <td>${user.member_id}</td>
              <td>${user.roles}</td>
              <td>${user.name}</td>
              <td>${user.email}</td>
              <td>${user.created_at}</td>
              <td>${user.updated_at}</td>
              <td>
                <button
                        type="button"
                        class="btn btn-outline-primary cxx-btn"
                        onclick="sendMail('${user.email}','${user.name}' )"
                >
                  메일 보내기
                </button>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function () {
    const csrfToken = $("meta[name='_csrf']").attr('content');
    const csrfHeader = $("meta[name='_csrf_header']").attr('content');

    $.ajaxSetup({
      beforeSend: function (xhr) {
        xhr.setRequestHeader(csrfHeader, csrfToken);
      }
    });
    $('#searchForm').on('submit', function (e) {
      e.preventDefault();
      var searchValue = $('input[type="search"]').val();
      var rows = $('#payroll-table tbody tr');
      rows.each(function () {
        // 세번째 열의 값 가져오기
        var name = $(this).find('td:eq(2)').text();
        // 포함되면 true -> 행 표시, 아니면 숨기기
        $(this).toggle(name.includes(searchValue));
      });
    });
  });

  function sendMail(email, name) {
    $.ajax({
      url: '/send-email',
      method: 'POST',
      data: 'email=' + email,
      success: function (response) {
        alert(name + '님에게 메일을 전송하였습니다!');
      },
      error: function (error) {
        console.error('Error fetching user data:', error);
        alert(name + '님에게 메일 전송을 실패하였습니다!');
      },
    });
  }
</script>
</body>
</html>
