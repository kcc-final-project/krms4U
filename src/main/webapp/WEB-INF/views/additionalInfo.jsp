<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="commonServiceLayout.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <link rel="stylesheet" href="/resources/css/additionalInfo.css"/>
</head>
<body>
<div class="common-main">
    <div class="main">
        <div class="buy-wrap">
            <div class="buy-area-2">
                <div class="buy-area-2-header">
                    <div class="buy-area-2-test-area">
                        <h3>추가정보입력</h3>
                    </div>
                </div>

                <div class="sub-title">배송 정보 입력</div>

                <div class="product-list-container">
                    <div class="list-infomation"></div>
                    <div class="card-container">
                        <div class="card-1 shadow-sm">
                            <div class="card-content">
                                <span class="material-icons">apartment</span>
                                <div class="text-content">
                                    <p class="title">설치/배송주소</p>
                                </div>
                                <div class="title-hideen"></div>
                            </div>
                            <button
                                    class="register-button btn btn-dark btn-sm"
                                    id="openModalBtn"
                            >
                                등록
                            </button>
                        </div>

                        <!-- 모달 -->
                        <div id="myModal" class="modal">
                            <div class="modal-content card shadow">
                                <span class="close">&times;</span>
                                <div class="madal-contents-wrap">
                                    <input type="hidden" class="productId" name="productId" value="${productId}"/>
                                    <input type="hidden" class="contractDeadline" name="contractDeadline"
                                           value="${contractDeadline}"/>
                                    <input type="hidden" class="orderFee" name="orderFee" value="${orderFee}"/>
                                    <div class="section-one">
                                        <div>수취인명</div>
                                        <input
                                                type="text"
                                                name="recipientName"
                                                class="username-area recipientName"
                                                placeholder="홍길동"
                                        />
                                        <div>수취인 연락처</div>
                                        <input
                                                type="tel"
                                                name="recipientPhoneno"
                                                class="userphone-area recipientPhoneno"
                                                placeholder="010-0000-0000"
                                        />
                                    </div>
                                    <div class="bl_stack form">
                                        <div class="el_ttl">주소</div>
                                        <div class="bl_stack bl_stack--row">
                                            <input
                                                    type="text"
                                                    class="el_input hp_txt-center"
                                                    placeholder=""
                                                    disabled
                                                    id="zonecode"
                                            />
                                            <button
                                                    class="el_btn el_btn--outline hp_shrink-0"
                                                    id="search-btn"
                                            >
                                                우편번호 찾기
                                            </button>
                                        </div>
                                        <input
                                                type="text"
                                                class="el_input"
                                                placeholder=""
                                                disabled
                                                id="roadAddress"
                                        />
                                        <input
                                                type="text"
                                                class="el_input"
                                                placeholder="상세주소를 입력해주세요."
                                                id="roadAddressDetail"
                                        />
                                        <button class="el_btn" id="register-btn">
                                            주소 등록하기
                                        </button>
                                    </div>
                                    <br/>
                                    <div class="bl_stack">
                                        <div class="line"></div>
                                        <div class="el_ttl">우편번호</div>
                                        <div class="el_result postcode"></div>
                                        <div class="el_ttl">주소</div>
                                        <div class="el_result address"></div>
                                        <div class="el_ttl">상세주소</div>
                                        <div class="el_result detail-address"></div>
                                    </div>
                                    <button class="result-button" id="delivery-btn">등록</button>
                                </div>
                            </div>
                        </div>

                        <div class="hope-date-wrap">
                            <div class="sub-title mt-4">설치 희망일 입력</div>
                            <div class="hope-date-container shadow-sm card">
                                <input type="date" class="datepicker wishDate" name="wishDate" value="2024-09-03"/>
                            </div>
                        </div>

                        <div class="pay-info-wrap">
                            <div class="sub-title">결제 정보 입력</div>

                            <div class="payment-container shadow-sm card">
                                <form class="payment-form">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <div class="form-group">
                                        <label for="bank-name">은행명</label>
                                        <select
                                                id="back-name"
                                                class="form-select bankName"
                                                aria-label="Default select example"
                                                name="bankName"
                                        >
                                            <option value="국민">국민</option>
                                            <option value="농협">농협</option>
                                            <option value="신한">신한</option>
                                            <option value="우리">우리</option>
                                            <option value="하나">하나</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="cardholder-name">카드번호</label>
                                        <input
                                                type="text"
                                                id="card-number"
                                                placeholder=""
                                                required
                                                name="cardNumber"
                                                class="cardNumber"
                                        />
                                    </div>
                                    <div
                                            class="form-group d-flex justify-content-between align-items-center"
                                    >
                                        <div class="form-group">
                                            <label>자동이체일</label>
                                            <div class="date-wrap">
                                                <input
                                                        type="radio"
                                                        class="btn-check automaticTransferDate"
                                                        name="automaticTransferDate"
                                                        id="option1"
                                                        value="10"
                                                        autocomplete="off"
                                                        checked
                                                />
                                                <label
                                                        class="btn btn-outline-primary btn-sm"
                                                        for="option1"
                                                >10일</label
                                                >

                                                <input
                                                        type="radio"
                                                        class="btn-check automaticTransferDate"
                                                        name="automaticTransferDate"
                                                        id="option2"
                                                        value="20"
                                                        autocomplete="off"
                                                />
                                                <label
                                                        class="btn btn-outline-primary btn-sm"
                                                        for="option2"
                                                >20일</label
                                                >
                                            </div>
                                        </div>
                                        <div class="pay-btn-wrap">
                                            <button class="btn btn-primary" id="pay-btn">
                                                결제하기
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/resources/js/additionalInfo.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>