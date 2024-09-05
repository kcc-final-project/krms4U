$(function () {
  $(".delivery").on("click", function () {
    const email = $(this).data("email-id");
    const memberId = $(this).data("memberId");
    const orderProductId = $(this).data("orderProductId");
    $("#exampleModal .modal-content").empty();

    $.ajax({
      url: "/admin/orderproducts/" + orderProductId,
      type: "GET",
      success: function (res) {
        $.each(res, function (index, item) {
          const modalContent = `
                    <div class="modal-header">
                      <h1>[${item.orderProductId}]주문상품에 대한 배송 상태 수정</h1>
                      <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                      ></button>
                    </div>
                    <div class="modal-body">
                      <h5 class="modal-title" id="exampleModalLabel">주문 상세 정보</h5>
                      <br />
                      <table class="table table-striped table-bordered table-hover text-center">
                        <tbody>
                          <tr>
                            <th>주문상품번호</th>
                            <th>주문번호</th>
                            <th>상품번호</th>
                            <th>약정기한</th>
                            <th>수취인명</th>
                            <th>수취인연락처</th>
                            <th>우편번호</th>
                            <th>주소</th>
                            <th>설치희망일</th>
                            <th>주문상태</th>
                            <th>자동이체일</th>
                          </tr>
                          <tr>
                            <td>${item.orderProductId}</td>
                            <td>${item.orderId}</td>
                            <td>${item.productId}</td>
                            <td>${item.contractDeadline}</td>
                            <td>${item.recipientName}</td>
                            <td>${item.recipientPhoneno}</td>
                            <td>${item.postcode}</td>
                            <td>${item.address}</td>
                            <td>${item.wishDate}</td>
                            <td>${item.orderState}</td>
                            <td>${item.automaticTransferDate}</td>
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
  });
});
