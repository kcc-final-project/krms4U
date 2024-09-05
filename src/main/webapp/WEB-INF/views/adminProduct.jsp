<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%> <%@ include file="commonAdminLayout.jsp" %> <%@ taglib
		prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/resources/css/adminProduct.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="common-main">
	<div class="main">
		<div class="main-product-header">
			<span class="material-icons material-symbols-outlined"> home </span>
			<h6>> 상품관리</h6>
		</div>
		<div class="main-product-name">
			<div class="product-list-register">
				<h3>상품 목록</h3>
				<button
						class="btn btn-primary btn-lg d-block w-30"
						onclick="window.location.href='/admin/adminProductRegister';"
				>
					상품 등록
				</button>
			</div>
			<div class="search">
				<form class="d-flex" id="searchForm">
					<select id="searchFilter" class="form-select me-2">
						<option value="3">상품명</option>
						<option value="2">모델명</option>
						<option value="7">주요기능</option>
						<option value="9">직수방식</option>
						<option value="10">설치형태</option>
						<option value="11">제조사</option>
					</select>
					<input
							class="form-control me-2"
							type="search"
							placeholder="검색어를 입력해주세요"
							aria-label="Search"
					/>
					<button class="btn btn-outline-dark" type="submit">검색</button>
				</form>
			</div>
		</div>
		<div class="line"></div>
		<div class="product-title">
			<div class="all-product-counts">
				<span>전체 </span><span>${productSize}</span><span> 건</span>
			</div>
		</div>
		<div class="main-product-list">
			<div class="product-table shadow-sm">
				<table
						class="table table-striped table-hover table-box"
						id="payroll-table"
				>
					<thead>
					<tr>
						<th scope="col" class="w-10">
							<input
									class="form-check-input"
									type="checkbox"
									value=""
									id="allcheck-input"
							/>
						</th>
						<th scope="col" class="number-column">번호</th>
						<th scope="col">모델명</th>
						<th scope="col">상품명</th>
						<th scope="col" class="price-column">금액</th>
						<th scope="col">크기</th>
						<th scope="col">출시년월</th>
						<th scope="col">주요기능</th>
						<th scope="col">무게</th>
						<th scope="col">직수방식</th>
						<th scope="col">설치형태</th>
						<th scope="col">제조사</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="product" items="${products}" varStatus="status">
						<tr>
							<td class="number-column">
								<input
										class="form-check-input"
										type="checkbox"
										value="${product.product_id}"
								/>
							</td>
							<td class="number-column">${product.product_id}</td>
							<td>${product.model_code}</td>
							<td>${product.model_name}</td>
							<td class="price-column">${product.order_fee}</td>
							<td>${product.product_size}</td>
							<td>${product.product_release}</td>
							<td>${product.product_funtion}</td>
							<td>${product.product_weight}</td>
							<td>${product.product_method}</td>
							<td>${product.product_install}</td>
							<td>${product.manufacturer}</td>
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
		$('#searchForm').on('submit', function (e) {
			e.preventDefault();
			var searchValue = $('input[type="search"]').val();
			var filterIndex = $('#searchFilter').val(); // 선택된 필터의 열 인덱스 가져오기
			var rows = $('#payroll-table tbody tr');
			rows.each(function () {
				// 선택된 열의 값 가져오기
				var cellValue = $(this)
						.find('td:eq(' + filterIndex + ')')
						.text();
				// 포함되면 true -> 행 표시, 아니면 숨기기
				$(this).toggle(cellValue.includes(searchValue));
			});
		});
	});
</script>
</body>
</html>
