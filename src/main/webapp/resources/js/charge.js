function generateNewRowData() {
  return {
    checkbox: document.createElement("input"),
    checkbox: {
      type: "checkbox",
      name: "checkbox_name",
      value: "checkbox_value",
    },
    memberId: "newMemberId",
    email: "newEmail@example.com",
    orderId: "newOrderId",
    orderProductId: "newOrderProductId",
    productId: "newProductId",
    modelName: "newModelName",
    modelCode: "newModelCode",
    wishDate: "newWishDate",
    postcode: "newPostcode",
    address: "newAddress",
    recipientName: "newRecipientName",
    recipientPhoneno: "newRecipientPhoneno",
    contractDeadline: "newContractDeadline",
    automaticTransferDate: "newAutomaticTransferDate",
  };
}

function addNewRow() {
  const tableBody = document.querySelector(".table tbody");
  const newRow = document.createElement("tr");
  const newData = generateNewRowData();

  newRow.innerHTML = `
    <td>${newData.memberId}</td>
    <td>${newData.email}</td>
    <td>${newData.orderId}</td>
    <td>${newData.orderProductId}</td>
    <td>${newData.productId}</td>
    <td>${newData.modelName}</td>
    <td>${newData.modelCode}</td>
    <td>${newData.wishDate}</td>
    <td>${newData.postcode}</td>
    <td>${newData.address}</td>
    <td>${newData.recipientName}</td>
    <td>${newData.recipientPhoneno}</td>
    <td>${newData.contractDeadline}</td>
    <td>${newData.automaticTransferDate}</td>
  `;

  tableBody.appendChild(newRow);
}

setInterval(addNewRow, 120000);

function deleteOrderProduct(orderProductId) {
  fetch(`/orderproduct/${orderProductId}`, {
    method: "DELETE",
  })
    .then((response) => {
      if (response.ok) {
        // Remove the row from the table
        document.getElementById(`row-${orderProductId}`).remove();
      } else {
        console.error("Failed to delete the order product");
      }
    })
    .catch((error) => console.error("Error:", error));
}
