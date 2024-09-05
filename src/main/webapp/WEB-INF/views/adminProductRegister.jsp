<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> <%@ include file="commonAdminLayout.jsp" %> <%@ taglib
        prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/adminProductRegister.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="common-main">
    <div class="main">
        <script>
            $(document).ready(function () {
                // Datepicker 설정
                $('#datepicker').datepicker({
                    format: 'yyyy-mm',
                    autoclose: true,
                    todayHighlight: true,
                    language: 'ko',
                    orientation: 'bottom auto',
                });

                // 사진 추가 버튼 클릭 이벤트
                $('#uploadButton').on('click', function () {
                    $('#imageUpload').click();
                });

                // 파일이 선택되었을 때 미리보기 이미지로 표시
                $('#imageUpload').on('change', function () {
                    var file = this.files[0];
                    if (file) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $('#previewImage').attr('src', e.target.result);
                        };
                        reader.readAsDataURL(file);
                    }
                });

                // 폼 제출 이벤트
                $('#productForm').on('submit', function (event) {
                    event.preventDefault(); // 폼이 바로 제출되지 않도록 중단 (디버깅용)

                    // 선택된 체크박스 값들을 배열로 저장
                    var selectedFunctions = [];
                    var checkboxes = document.querySelectorAll(
                        'input[name="product_function_com"]:checked'
                    );

                    // 체크된 항목을 배열에 저장
                    checkboxes.forEach(function (checkbox) {
                        selectedFunctions.push(checkbox.value); // 체크된 값 추출
                    });

                    // 결합된 값을 숨겨진 input 필드에 저장
                    $('#product_funtion').val(selectedFunctions.join(', '));

                    this.submit();
                });
            });
        </script>

        <div class="main-product-header">
            <span class="material-icons material-symbols-outlined"> home </span>
            <h6>> 상품등록</h6>
        </div>

        <div class="main-product-name">
            <div class="product-list-register">
                <h3>상품 등록</h3>
            </div>
        </div>

        <div class="line"></div>
        <form
                action="/admin/adminProductRegister"
                method="post"
                id="productForm"
                enctype="multipart/form-data"
        >
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div class="register-main">
                <div class="register-image">
                    <img
                            id="previewImage"
                            src="/resources/img/service/noImage.png"
                            class="logo"
                            alt="Preview Image"
                            style="width: 300px; height: 500px; object-fit: cover"
                    />
                    <input
                            type="file"
                            id="imageUpload"
                            name="file"
                            style="display: none"
                            accept="image/*"
                    />
                    <button
                            class="btn btn-outline-dark"
                            type="button"
                            id="uploadButton"
                    >
                        사진을 추가해주세요
                        <div>+</div>
                    </button>
                </div>

                <div class="register-option">
                    <div class="row mb-3">
                        <!-- 상품명 -->
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-3 d-flex align-items-center">
                                    <label for="model_name" class="form-label">상품명</label>
                                </div>
                                <div class="col-9">
                                    <input
                                            type="text"
                                            class="form-control"
                                            id="model_name"
                                            name="model_name"
                                    />
                                </div>
                            </div>
                        </div>

                        <!-- 모델코드 -->
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-3 d-flex align-items-center">
                                    <label for="model_code" class="form-label"
                                    >모델코드</label
                                    >
                                </div>
                                <div class="col-9">
                                    <input
                                            type="text"
                                            class="form-control"
                                            id="model_code"
                                            name="model_code"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 두 번째 줄: 가격, 크기 -->
                    <div class="row mb-3">
                        <!-- 가격 -->
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-3 d-flex align-items-center">
                                    <label for="order_fee" class="form-label">가격</label>
                                </div>
                                <div class="col-9">
                                    <input
                                            type="text"
                                            class="form-control"
                                            id="order_fee"
                                            name="order_fee"
                                    />
                                </div>
                            </div>
                        </div>

                        <!-- 크기 -->
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-3 d-flex align-items-center">
                                    <label for="product_size" class="form-label">크기</label>
                                </div>
                                <div class="col-9">
                                    <input
                                            type="text"
                                            class="form-control"
                                            id="product_size"
                                            name="product_size"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 관리주기 -->
                    <div class="mb-3">
                        <label for="product_period" class="form-label">관리주기</label>
                        <select
                                class="form-select"
                                id="product_period"
                                name="product_period"
                        >
                            <option selected>관리주기</option>
                            <option value="1회/2개월">1회/2개월</option>
                            <option value="1회/4개월">1회/4개월</option>
                            <option value="1회/6개월">1회/6개월</option>
                        </select>
                    </div>

                    <!-- 출시년월 -->
                    <div class="mb-3">
                        <label for="product_capacity" class="form-label"
                        >출시년월</label
                        >
                        <input
                                type="text"
                                class="form-control"
                                id="datepicker"
                                name="product_release"
                                value="2024-09"
                                style="cursor: pointer"
                        />
                    </div>

                    <!-- 주요기능 체크박스 -->
                    <div class="mb-3">
                        <label for="product_function_com" class="form-label"
                        >주요기능</label
                        >
                        <div class="row ms-4">
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="스마트 필터 모니터링"
                                />
                                스마트 필터 모니터링
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="MY 용량/온도 기능"
                                />
                                MY 용량/온도 기능
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="UV 파우셋 살균"
                                />
                                UV 파우셋 살균
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="파우셋 원터치 교체"
                                />
                                파우셋 원터치 교체
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="자동 컵감지 센서"
                                />
                                자동 컵감지 센서
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="듀얼 냉각 기능"
                                />
                                듀얼 냉각 기능
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="맞춤 추출"
                                />
                                맞춤 추출
                            </div>
                            <div class="col-md-6">
                                <input
                                        type="checkbox"
                                        name="product_function_com"
                                        value="연속 추출"
                                />
                                연속 추출
                            </div>
                        </div>
                    </div>

                    <!-- 숨겨진 input 필드 (결합된 기능 값) -->
                    <input
                            type="hidden"
                            id="product_funtion"
                            name="product_funtion"
                    />

                    <!-- 탱크용량 -->
                    <div class="mb-3">
                        <label for="product_capacity" class="form-label"
                        >탱크용량</label
                        >
                        <select
                                class="form-select"
                                id="product_capacity"
                                name="product_capacity"
                        >
                            <option selected>탱크용량</option>
                            <option value="냉수 6.0 L, 온수 3.5 L, 정수 6.5 L">
                                냉수 6.0 L, 온수 3.5 L, 정수 6.5 L
                            </option>
                            <option value="냉수 7.1L, 온수 3.6L, 정수 10.4L">
                                냉수 7.1L, 온수 3.6L, 정수 10.4L
                            </option>
                        </select>
                    </div>

                    <!-- 무게 -->
                    <div class="mb-3">
                        <label for="product_weight" class="form-label">무게</label>
                        <input
                                type="text"
                                class="form-control"
                                id="product_weight"
                                name="product_weight"
                        />
                    </div>

                    <!-- 소비전력 -->
                    <div class="mb-3">
                        <label for="product_power" class="form-label">소비전력</label>
                        <select
                                class="form-select"
                                id="product_power"
                                name="product_power"
                        >
                            <option selected>소비전력</option>
                            <option value="냉수 0.6A">냉수 0.6A</option>
                            <option value="온수 1.6S">온수 1.6S</option>
                        </select>
                    </div>

                    <!-- 제조사 -->
                    <div class="mb-3">
                        <label for="manufacturer" class="form-label">제조사</label>
                        <select
                                class="form-select"
                                id="manufacturer"
                                name="manufacturer"
                        >
                            <option selected>제조사</option>
                            <option value="kcc정보통신">kcc정보통신</option>
                            <option value="코웨이">코웨이</option>
                        </select>
                    </div>

                    <!-- 직수방식 -->
                    <div class="mb-3">
                        <label for="product_method" class="form-label">직수방식</label>
                        <select
                                class="form-select"
                                id="product_method"
                                name="product_method"
                        >
                            <option selected>약정기간</option>
                            <option value="정수(직수식)">정수(직수식)</option>
                            <option value="탱크형">탱크형</option>
                        </select>
                    </div>

                    <!-- 설치형태 -->
                    <div class="mb-3">
                        <label for="product_install" class="form-label">설치형태</label>
                        <select
                                class="form-select"
                                id="product_install"
                                name="product_install"
                        >
                            <option selected>설치형태</option>
                            <option value="데스크탑형">데스크탑형</option>
                            <option value="스탠드형">스탠드형</option>
                            <option value="언더싱크">언더싱크</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary">상품 등록</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap5 Script -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"
></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js"></script>
</body>
</html>
