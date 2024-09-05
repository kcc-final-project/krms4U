<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="commonServiceLayout.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/productDetail.css"/>
    <script src="/resources/js/productDetail.js"></script>
</head>
<body>
<div class="common-main overflow-y-hidden">
    <div class="main">
        <div class="main-container">
            <div class="product-detail">
                <div class="product-detail__top">
                    <div
                            class="product-detail__image border border-2 rounded-4"
                            style="background-image: url('${productDetail.folderPath}${productDetail.fileName}')"
                    ></div>
                    <form id="detail-form" method="post" action="/products/additionalInfo"
                          class="product-detail__control border border-2 rounded-4 border-primary"
                    >
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="hidden" class="productId" name="productId" value="${productDetail.productId}"/>
                        <input type="hidden" class="orderFee" name="orderFee" value="${productDetail.orderFee}"/>
                        <div class="product-detail__title">
                            <span>${productDetail.modelName}</span>
                            <span>${productDetail.modelCode}</span>
                        </div>
                        <div class="product-detail-wrap">
                            <div class="product-detail__fee">
                                <div class="product-detail__fee-item">
                                    <div class="period">약정기간</div>
                                    <select
                                            id="period-select"
                                            class="form-select contractDeadline"
                                            aria-label="Default select example"
                                            name="contractDeadline"
                                    >
                                        <option value="12">12개월</option>
                                        <option value="24">24개월</option>
                                        <option value="36">36개월</option>
                                    </select>
                                </div>
                                <div
                                        class="product-detail__fee-item border border-2 rounded-4 p-10"
                                >
                                    <div class="original-price">
                                        <div class="price-title">제품가격</div>
                                        <span class="original-price__value orderFee"
                                              data-origin-pirce="${productDetail.orderFee}">
                                             <fmt:formatNumber value="${productDetail.orderFee}" type="number"
                                                               groupingUsed="true"/>
                                        </span>
                                        <span>원</span>
                                    </div>
                                    <div class="cal-rental-price">
                                        <div class="price-title">월 예상 렌탈료</div>
                                        <span class="font-point rental-price__value">
                           <fmt:formatNumber value="${productDetail.orderFee}" type="number"
                                             groupingUsed="true"/>
                        </span>
                                        <span>원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="control">
                                <button class="btn btn-primary rental-btn">
                                    렌탈하기
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="product-detail__bottom">
                    <span>스펙</span>
                    <div class="line"></div>
                    <div class="product-detail-spec">
                        <div class="product-detail-spec__item">
                            <div>
                                <div class="spec-name">모델명</div>
                                <div>${productDetail.modelCode}</div>
                            </div>
                            <div>
                                <div class="spec-name">크기(가로 x 세로 x 높이)</div>
                                <div>${productDetail.productSize}</div>
                            </div>
                            <div>
                                <div class="spec-name">관리주기</div>
                                <div>${productDetail.productPeriod}</div>
                            </div>
                            <div>
                                <div class="spec-name">탱크용량</div>
                                <div>${productDetail.productCapacity}</div>
                            </div>
                        </div>
                        <div class="product-detail-spec__item">
                            <div>
                                <div class="spec-name">소비전력</div>
                                <div>${productDetail.productPower}</div>
                            </div>
                            <div>
                                <div class="spec-name">출시년월</div>
                                <div>${productDetail.productRelease}</div>
                            </div>
                            <div>
                                <div class="spec-name">주요기능</div>
                                <div>
                                    ${productDetail.productFuntion}
                                </div>
                            </div>
                            <div>
                                <div class="spec-name">무게</div>
                                <div>${productDetail.productWeight}</div>
                            </div>
                        </div>
                        <div class="product-detail-spec__item">
                            <div>
                                <div class="spec-name">직수방식</div>
                                <div>${productDetail.productMethod}</div>
                            </div>
                            <div>
                                <div class="spec-name">설치형태</div>
                                <div>${productDetail.productInstall}</div>
                            </div>
                            <div>
                                <div class="spec-name">제조사</div>
                                <div>${productDetail.manufacturer}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>