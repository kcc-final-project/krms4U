window.onload = () => {
    // 현재 날짜 설정
    function getCurrentDate() {
        const today = new Date();
        const year = today.getFullYear();
        const month = String(today.getMonth() + 1).padStart(2, '0');
        const day = String(today.getDate()).padStart(2, '0');
        return `${year}-${month}-${day}`;
    }

    document.querySelector('.wishDate').value = getCurrentDate();
    document.querySelector('.wishDate').setAttribute('min', getCurrentDate());
};

// 모달 관련 Start
var modal = document.getElementById('myModal');
var btn = document.getElementById('openModalBtn');
var span = document.getElementsByClassName('close')[0];

btn.onclick = function () {
    modal.style.display = 'block';
};

// 모달 닫기
span.onclick = function () {
    modal.style.display = 'none';
};

// 모달 창 밖을 클릭했을 때 닫기
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = 'none';
    }
};
// 모달 관련 End

// 주소 검색 창(카카오 우편번호) Start
const title_hidden = document.querySelector('.title-hideen');
const elZonecode = document.querySelector('#zonecode');
const elRoadAddress = document.querySelector('#roadAddress');
const elRoadAddressDetail = document.querySelector('#roadAddressDetail');
const elResults = document.querySelectorAll('.el_result');

const onClickSearch = () => {
    console.log(1);
    new daum.Postcode({
        oncomplete: function (data) {
            console.log(data);
            elZonecode.setAttribute('value', data.zonecode);
            elRoadAddress.setAttribute('value', data.address);
        },
    }).open();
};

const register = () => {
    console.log(`우편번호: ${elZonecode.getAttribute('value')}`);
    console.log(`주소: ${elRoadAddress.getAttribute('value')}`);
    console.log(`상세주소: ${elRoadAddressDetail.getAttribute('value')}`);
    elResults[0].innerHTML = elZonecode.getAttribute('value');
    elResults[1].innerHTML = elRoadAddress.getAttribute('value');
    elResults[2].innerHTML = elRoadAddressDetail.getAttribute('value');
};

// 이벤트 추가
document.querySelector('#search-btn').addEventListener('click', () => {
    onClickSearch();
});

document.querySelector('#register-btn').addEventListener('click', () => {
    register();
});

elRoadAddressDetail.addEventListener('change', (e) => {
    elRoadAddressDetail.setAttribute('value', e.target.value);
});

document.querySelector('.result-button').addEventListener('click', () => {
    const title = elRoadAddress.getAttribute('value');
    title_hidden.innerHTML = title;
    alert('주소 등록완료');
    modal.style.display = 'none';
});
// 주소 검색 창(카카오 우편번호) End

// AJAX
$(function () {

    let deliveryData = {};

    $('#delivery-btn').on('click', function (event) {
        event.preventDefault();

        const productId = parseInt($('.productId').val());
        const contractDeadline = $('.contractDeadline').val();
        const orderFee = parseInt($('.orderFee').val());
        const recipientName = $('.recipientName').val();
        const recipientPhoneno = $('.recipientPhoneno').val();
        const postcode = $('.postcode').text();
        const address = $('.address').text() + " " + $('.detail-address').text();

        deliveryData = {
            productId,
            contractDeadline,
            orderFee,
            recipientName,
            recipientPhoneno,
            postcode,
            address
        };

    });

    const csrfToken = $("meta[name='_csrf']").attr('content');
    const csrfHeader = $("meta[name='_csrf_header']").attr('content');

    $.ajaxSetup({
        beforeSend: function (xhr) {
            xhr.setRequestHeader(csrfHeader, csrfToken);
        }
    });

    $('#pay-btn').on('click', function (event) {
        event.preventDefault();

        const wishDate = $('.wishDate').val();
        const bankName = $('.bankName').val();
        const cardNumber = $('.cardNumber').val();
        const automaticTransferDate = parseInt($('.automaticTransferDate:checked').val());

        const data = {
            ...deliveryData,
            wishDate,
            bankName,
            cardNumber,
            automaticTransferDate
        };

        $.ajax({
            url: "/products/order",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            success: function (res) {
                console.log('성공!');
                console.log(res);
            },
            error: function (xhr, status, error) {
                console.error("AJAX 요청 실패: " + status, error);
            }
        });
    });
});