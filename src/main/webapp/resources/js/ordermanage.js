$(function () {
  $(".order-detail").on("click", function () {
    const email = $(this).data("email-id");
    const memberId = $(this).data("memberId");
    $("#exampleModal .modal-content").empty();

    $.ajax({
      url: "/admin/orderPop/" + email,
      type: "GET",
      success: function (res) {
        $.each(res, function (index, item) {
          const totalOrders = res.totalOrders || res.length;
          const modalContent = `
                    <div class="modal-header">
                      <h1 class="m-title">[<span class="m-title-email">${item.email}</span>]님의 렌탈&구매 품목 조회</h1>
                      <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                      ></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="modal-title m-subtitle" id="exampleModalLabel">주문 상세 정보</h5>
                      <div class="search-container">
                        <table>
                          <tr class="me-wrap">
                            <td class="me">판매구분</td>
                            <td>
                              <select id="productGroup">
                                <option value="dafault">판매 구분</option>
                                <option value="렌탈">렌탈</option>
                                <option value="구매">구매</option>
                              </select>
                            </td>
                            <td>&nbsp;상품 명</td>
                            <td>
                              <input type="text" id="productCode" />
                            </td>
                            &nbsp;
                            <td colspan="2" style="text-align: center">
                              <button class="btn btn-outline-primary" onclick="searchData()">
                                검색
                              </button>
                            </td>
                          </tr>
                        </table>
                      </div>
                       <br>
    <div id="result"></div>
    <br />
                      <p>[Total: ${totalOrders}] | 회원님의 전체 주문 목록</p>
                      <table class="table table-striped table-bordered table-hover text-center">
                        <tbody>
                          <tr>
                            <th>주문상품번호</th>
                            <th>판매 구분</th>
                            <th>판매 유형</th>
                            <th>상품 번호</th>
                            <th>상품명</th>
                            <th>모델코드</th>
                            <th>렌탈금액</th>
                            <th>기사 배정</th>
                          </tr>
                          <tr>
                            <td>${item.orderProductId}</td>
                            <td>렌탈</td>
                            <td>일반 렌탈</td>
                            <td>ORDER-${item.productId}</td>
                            <td>${item.modelName}</td>
                            <td>${item.modelCode}</td>
                            <td>${item.rentalFee.toLocaleString()}원</td>
                                        <td>
              <button class="btn btn-outline-dark" onclick="engineer('1')" id="button1">기사 배정</button>
              <br />
              
              <div id="popup1" class="popup card">
                <h2>[배정 가능한 기사 목록]</h2>
                <ul id="engineerList">
                  <li class="lili" onclick="selectEngineer('이름 : 김기사, 직급 : 대리, 조직 : 설치 1팀', 'button1')">김기사</li>
                  <li class="lili" onclick="selectEngineer('이름 : 윤기사, 직급 : 대리, 조직 : 설치 1팀', 'button1')">윤기사</li>
                  <li class="lili" onclick="selectEngineer('이름 : 황기사, 직급 : 대리, 조직 : 설치 1팀', 'button1')">황기사</li>
                </ul>
                <button class="btn btn-dark" onclick="closePopup('popup1')">닫기</button> </div>
              </div>
            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                `;

          $("#exampleModal .modal-content").append(modalContent);
          $("#exampleModal").modal("show");
        });
      },

      error: function (xhr, status, error) {
        console.error("Error:", error);
        alert("데이터를 불러오는 중 오류가 발생했습니다.");
      },
    });
    $.ajax({
      url: "/admin/return/" + memberId,
      type: "GET",
      success: function (res) {
        $.each(res, function (index, item) {
          const totalOrders = res.totalOrders || res.length;
          const modalContent = `
                    <div class="modal-body">
                      <p>[Total: ${totalOrders}] | 회수 품목 목록</p>
                      <table class="table table-striped table-bordered table-hover text-center">
                        <tbody>
                          <tr>
                            <th>반납해지번호</th>
                            <th>주문상품번호</th>
                            <th>상품명</th>
                            <th>수거일자</th>
                            <th>반납상태</th>
                          </tr>
                          <tr>
                            <td>${item.returnId}</td>
                            <td>OP-${item.orderProductId}</td>
                            <td>${item.modelName}</td>
                            <td>${item.collectionDate}</td>
                            <td>${item.returnStatus}</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                `;
          console.log(modalContent);
          // 모달 생성 및 오픈
          $("#exampleModal .modal-content").append(modalContent);
          $("#exampleModal").modal("show");
        });
      },

      error: function (xhr, status, error) {
        console.error("Error:", error);
        alert("데이터를 불러오는 중 오류가 발생했습니다.");
      },
    });
  });
});

// 검색 용도
function searchData() {
  const productGroup = document.getElementById("productGroup").value;
  const productCode = document.getElementById("productCode").value;

  const searchResult = {
    data: [
      {
        id: 1,
        orderDate: "2024-09-04",
        customerName: "홍길동",
        deliveryStatus: "배송 중",
        price: "2,170,000원",
        installationDate: "2024-09-05",
        recipientZipCode: "우 03077",
        recipientAddress: "서울 종로구 창경궁로 254",
        recipientName: "홍길동",
        recipientPhone: "010-1234-5678",
        rentalItemCount: 1,
        paymentCompleted: true,
        productGroup: "렌탈",
        productCode: "제품1",
      },
      {
        id: 2,
        orderDate: "2024-09-05",
        customerName: "박길동",
        deliveryStatus: "배송 완료",
        price: "1,140,000원",
        installationDate: "2024-09-06",
        recipientZipCode: "우 12345",
        recipientAddress: "서울 종로구 창경궁로 255",
        recipientName: "박길동",
        recipientPhone: "010-1234-5678",
        rentalItemCount: 2,
        paymentCompleted: false,
        productGroup: "구매",
        productCode: "제품2",
      },
    ],
  };

  const filteredData = searchResult.data.filter((item) => {
    return (
      item.productGroup === productGroup && item.productCode === productCode
    );
  });

  const resultDiv = document.getElementById("result");
  resultDiv.innerHTML = "";

  if (filteredData.length > 0) {
    const table = document.createElement("table");
    table.classList.add(
      "table",
      "table-striped",
      "table-bordered",
      "table-hover",
      "text-center",
    );
    let tableHTML = `
    <tr>
        <th>ID</th>
        <th>주문일</th>
        <th>구매자 이름</th>
        <th>배송상태</th>
        <th>가격</th>
        <th>설치희망일</th>
        <th>수취인우편번호</th>
        <th>수취인주소</th>
        <th>수취인이름</th>
        <th>수취인전화번호</th>
        <th>판메 구분</th>
        <th>렌탈 상품 갯수</th>
        <th>결제 완료 여부</th>
    </tr>
`;

    filteredData.forEach((item) => {
      tableHTML += `
        <tr>
            <td>${item.id}</td>
            <td>${item.orderDate}</td>
            <td>${item.customerName}</td>
            <td>${item.deliveryStatus}</td>
            <td>${item.price}</td>
            <td>${item.installationDate}</td>
            <td>${item.recipientZipCode}</td>
            <td>${item.recipientAddress}</td>
            <td>${item.recipientName}</td>
            <td>${item.recipientPhone}</td>
            <td>${item.productGroup}</td>
            <td>${item.rentalItemCount}</td>
            <td>${item.paymentCompleted ? "완료" : "미완료"}</td>
        </tr>
    `;
    });
    table.innerHTML = tableHTML;
    resultDiv.appendChild(table);
  } else {
    resultDiv.textContent = "검색 결과가 없습니다.";
  }
}

// 기사 배정
function engineer(buttonId) {
  document
    .querySelectorAll(".popup")
    .forEach((popup) => (popup.style.display = "none"));
  document.getElementById("popup" + buttonId).style.display = "block";
}

function selectEngineer(engineerName, buttonId) {
  document.getElementById(buttonId).innerText = engineerName;
  document.getElementById("popup" + buttonId).style.display = "none";
}

function closePopup(popupId) {
  document.getElementById(popupId).style.display = "none";
}
