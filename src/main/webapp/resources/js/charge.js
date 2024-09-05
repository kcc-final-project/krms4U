function generateNewRowData() {
  const today = new Date().toISOString().slice(0, 19).replace("T", " ");
  return {
    checkbox: document.createElement("input"),
    checkbox: {
      type: "checkbox",
      name: "checkbox_name",
      value: "checkbox_value",
    },
    orderId: 4,
    orderProductId: "OP-4",
    productId: "PRODUCT-4",
    modelName: "노블 정수기 RO",
    modelCode: "CP-8310L",
    chargeCount: "4회",
    remainingCount: "24회",
    chargeDate: today,
    chargeId: "Bill-08",
    bankName: "농협",
    cardNumber: "3245-2523-2525-2331",
    rentalFee: "1,440,000원",
    payDate: today,
    email: "user04@gmail.com",
  };
}

function addNewRow() {
  const tableBody = document.querySelector(".table tbody");
  const newRow = document.createElement("tr");
  const newData = generateNewRowData();

  const checkboxCell = document.createElement("td");
  const checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  checkbox.name = "checkbox_name";
  checkbox.value = "checkbox_value";
  checkboxCell.appendChild(checkbox);

  newRow.innerHTML = `
    <td>${newData.orderId}</td>
    <td>${newData.orderProductId}</td>
    <td>${newData.productId}</td>
    <td>${newData.modelName}</td>
    <td>${newData.modelCode}</td>
    <td>${newData.chargeCount}</td>
    <td>${newData.remainingCount}</td>
    <td>${newData.chargeDate}</td>
    <td>${newData.chargeId}</td>
    <td>${newData.bankName}</td>
    <td>${newData.cardNumber}</td>
    <td>${newData.rentalFee}</td>
    <td>${newData.payDate}</td>
    <td>${newData.email}</td>
  `;

  newRow.insertBefore(checkboxCell, newRow.firstChild);
  tableBody.appendChild(newRow);
}

setInterval(addNewRow, 30000);
