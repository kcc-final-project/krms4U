// 검색 용도
function searchData() {
  const productGroup = document.getElementById('productGroup').value;
  const productCode = document.getElementById('productCode').value;

  const searchResult = {
    data: [
      {
        id: 1,
        orderDate: '2024-01-01',
        customerName: '홍길동',
        deliveryStatus: '배송 중',
        price: 10000,
        installationDate: '2024-01-05',
        recipientZipCode: '12345',
        recipientAddress: '서울시',
        recipientName: '홍길동',
        recipientPhone: '01012345678',
        rentalItemCount: 1,
        paymentCompleted: true,
        productGroup: '렌탈',
        productCode: '제품1',
      },
      {
        id: 2,
        orderDate: '2024-01-01',
        customerName: '홍길동',
        deliveryStatus: '배송 중',
        price: 10000,
        installationDate: '2024-01-05',
        recipientZipCode: '12345',
        recipientAddress: '서울시',
        recipientName: '홍길동',
        recipientPhone: '01012345678',
        rentalItemCount: 1,
        paymentCompleted: false,
        productGroup: '구매',
        productCode: '제품2',
      },
    ],
  };

  const filteredData = searchResult.data.filter((item) => {
    return (
      item.productGroup === productGroup && item.productCode === productCode
    );
  });

  const resultDiv = document.getElementById('result');
  resultDiv.innerHTML = '';

  if (filteredData.length > 0) {
    const table = document.createElement('table');
    table.classList.add(
      'table',
      'table-striped',
      'table-bordered',
      'table-hover',
      'text-center'
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
            <td>${item.paymentCompleted ? '완료' : '미완료'}</td>
        </tr>
    `;
    });
    table.innerHTML = tableHTML;
    resultDiv.appendChild(table);
  } else {
    resultDiv.textContent = '검색 결과가 없습니다.';
  }
}

// 기사 배정
function engineer(buttonId) {
  document
    .querySelectorAll('.popup')
    .forEach((popup) => (popup.style.display = 'none'));
  document.getElementById('popup' + buttonId).style.display = 'block';
}

function selectEngineer(engineerName, buttonId) {
  document.getElementById(buttonId).innerText = engineerName;
  document.getElementById('popup' + buttonId).style.display = 'none';
}

function closePopup(popupId) {
  document.getElementById(popupId).style.display = 'none';
}
