<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>        
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>정숙케어</title>
    
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
    <link rel="stylesheet" href="/resources/css/common/commonLayout.css" />
  	
  	<!-- Jquery -->
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
      integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <!-- Bootstrap5 Script -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
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
   	<script>
   		$(function() {
   			$(".goToSignUpPage").on("click", function() {
   				window.location.href="/joinForm";
   			});

   			$(".goToSignInPage").on("click", function() {
   				window.location.href="/loginForm";
   			});
   		});
   	</script>
  </body>
</html>