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
                      <h1>[${item.email}]님의 렌탈&구매 품목 조회</h1>
                      <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                      ></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="modal-title" id="exampleModalLabel">주문 상세 정보</h5>
                      <div class="search-container">
                        <table>
                          <tr>
                            <td>판매구분</td>
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
                              <button class="btn btn-primary" onclick="searchData()">
                                검색
                              </button>
                            </td>
                          </tr>
                        </table>
                      </div>
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
                              <button class="btn btn-primary">기사 배정</button>
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
