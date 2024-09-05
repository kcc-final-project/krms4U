<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="commonServiceLayout.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/productList.css"/>
    <script src="/resources/js/productList.js"></script>

    <script>
        let lastPage = Math.ceil(parseInt(${pageDTO.total}) / 8);
        console.log(lastPage);
        $(document).ready(function () {
            let currentPage = 1;
            let isLoading = false;

            function loadMoreProducts() {
                if (currentPage > lastPage) return
                $.ajax({
                    url: "/products?page=" + (currentPage + 1),
                    type: "GET",
                    success: function (data) {
                        renderProducts(data);
                        currentPage++;
                        isLoading = false;
                    },
                    error: function () {
                        isLoading = false;
                    }
                });
            }

            // 스크롤이 90% 이하로 내려가면 새로운 제품을 로드
            $(window).scroll(function () {
                if ($(window).scrollTop() + $(window).height() > $(document).height() * 0.9) {
                    loadMoreProducts();
                }
            });

        });

        function renderProducts(products) {
            const container = $('.total-products');
            let html = '';
            products.forEach(product => {
                html +=
                    '<div class="product-item card shadow-sm product-detail-id" data-product-id="' + product.productId + '">' +
                    '<div class="product-item__image" style="background-image: url(\'' + product.folderPath + product.fileName + '\')"></div>' +
                    '<div class="product-item__content">' +
                    '<div class="product-item-title">' +
                    '<div class="product-item-title__code">' + product.modelCode + '</div>' +
                    '<div class="product-item-title__name">' + product.modelName + '</div>' +
                    '</div>' +
                    '<div class="product-line"></div>' +
                    '<div class="product-item-prices">' +
                    '<div class="best-product-item-prices">' +
                    '<div class="best-product-item-price">' +
                    '<div class="buy-title">구매</div>' +
                    '<div>' + product.orderFee.toLocaleString() + ' 원</div>' +
                    '</div>' +
                    '<div class="best-product-item-price">' +
                    '<div class="buy-title">렌탈</div>' +
                    '<div class="rental-price">월 ' +
                    (product.monthRentalFee ? product.monthRentalFee.toLocaleString() : '0') +
                    ' 원~</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>';
            });
            container.append(html);
        }
    </script>
</head>
<body>
<div class="common-main">
    <div class="main">
        <div class="main-container">
            <div class="best-products">
                <div class="best-products__title">
                    <div class="best-products__title-wrap" id="best">
                        <span>Water Care Best</span>
                        <h1>정수기 베스트</h1>
                    </div>
                </div>
                <div class="best-products__5">
                    <c:forEach var="productBest5" items="${productBest5}">
                        <div class="best-product-item card shadow-sm product-detail-id"
                             data-product-id="${productBest5.productId}">
                            <div class="best-product-item__image"
                                 style="background-image: url('${productBest5.folderPath}${productBest5.fileName}')"></div>
                            <div class="best-product-item__content">
                                <div class="best-product-item-title">${productBest5.modelName}</div>
                                <div class="best-product-item-prices">
                                    <div class="best-product-item-price">
                                        <div class="buy-title">구매</div>
                                        <div>
                                            <fmt:formatNumber value="${productBest5.orderFee}" type="number"
                                                              groupingUsed="true"/>
                                            <span> 원</span>&nbsp;&nbsp;
                                        </div>
                                    </div>
                                    <div class="best-product-item-price">
                                        <div class="buy-title">렌탈</div>
                                        <div class="rental-price">
                                            <span>월 </span>
                                            <fmt:formatNumber value="${productBest5.monthRentalFee}" type="number"
                                                              groupingUsed="true"/>
                                            <span> 원~</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="total-products__title">
                <div class="best-products__title-wrap">
                    <span>Total Products</span>
                    <h2>전체 상품</h2>
                </div>
            </div>
            <div class="total-products">
                <c:forEach var="product" items="${productList}">
                    <div class="product-item card shadow-sm product-detail-id" data-product-id="${product.productId}">
                        <div class="product-item__image"
                             style="background-image: url('${product.folderPath}${product.fileName}')"></div>
                        <div class="product-item__content">
                            <div class="product-item-title">
                                <div class="product-item-title__code">${product.modelCode}</div>
                                <div class="product-item-title__name">${product.modelName}</div>
                            </div>
                            <div class="product-line"></div>
                            <div class="product-item-prices">
                                <div class="best-product-item-prices">
                                    <div class="best-product-item-price">
                                        <div class="buy-title">구매</div>
                                        <div>
                                            <fmt:formatNumber value="${product.orderFee}" type="number"
                                                              groupingUsed="true"/>
                                            <span> 원</span>&nbsp;&nbsp;
                                        </div>
                                    </div>
                                    <div class="best-product-item-price">
                                        <div class="buy-title">렌탈</div>
                                        <div class="rental-price">
                                            <span>월 </span>
                                            <fmt:formatNumber value="${product.monthRentalFee}" type="number"
                                                              groupingUsed="true"/>
                                            <span> 원~</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="btn-anchor" data-target="#best">
                <span class="material-icons">north</span>
            </div>
        </div>
    </div>
</div>
</body>
</html>