<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <link rel="stylesheet" href="/resources/css/common/commonAdminLayout.css" />
    <!-- Order CSS-->
    <link rel="stylesheet" href="/resources/css/ordermanage.css" />
    <!-- Order JS-->
    <script src="/resources/js/ordermanage.js"></script>
    <!-- jQuery 라이브러리-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Bootstrap5 Script -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="common-header">
      <div class="header-left">
        <img src="/resources/img/service/logo.svg" class="logo" alt="" />
      </div>
      <div class="header-right">
        <span>로그아웃</span>
      </div>
    </div>

    <div class="common-sidebar">
      <div class="sidebar-wrap">
        <div class="sidebar-wrap__1">
          <div class="sidebar-item">
            <div class="sidebar-item__wrap">
              <span class="material-icons sidebar-item__icon"
                >supervisor_account</span
              >
              <div class="sidebar-item__title">고객관리</div>
            </div>
          </div>
          <div class="sidebar-item">
            <div class="sidebar-item__wrap">
              <span class="material-icons sidebar-item__icon"
                >supervisor_account</span
              >
              <div class="sidebar-item__title">상품관리</div>
            </div>
          </div>
          <div class="sidebar-item sidebar-item__active">
            <div class="sidebar-item__wrap">
              <span class="material-icons sidebar-item__icon"
                >supervisor_account</span
              >
              <div class="sidebar-item__title">주문관리</div>
            </div>
          </div>
          <div class="sidebar-item">
            <div class="sidebar-item__wrap">
              <span class="material-icons sidebar-item__icon">payments</span>
              <div class="sidebar-item__title">청구관리</div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </body>
</html>
