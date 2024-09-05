$(function () {
  var token = $("meta[name='_csrf']").attr("content");
  var header = $("meta[name='_csrf_header']").attr("content");
  $(function () {
    $(document).ajaxSend(function (e, xhr, options) {
      xhr.setRequestHeader(header, token);
    });
  });
  $(".delivery0").on("click", function (event) {
    const orderProductId = $(this).data("orderProductId");
    const newOrderState = $(this).data("orderProductId");

    $.ajax({
      url: "/admin/orderproducts/" + orderProductId,
      type: "PUT",
      contentType: "application/json; charset=utf-8",
      data: JSON.stringify({
        orderState: newOrderState,
        orderProductId: orderProductId,
      }),
    }).always(function () {
      location.reload();
    });
  });

  $(".delivery1").click(function () {
    $(this).closest(".parent").find(".orderState").text("배송완료");
  });
});
