$(function () {
    const originalPrice = parseInt(
        $('.original-price__value').text().replace(/,/g, '')
    );

    const rentalPrice = Math.round(originalPrice / parseInt($('#period-select').val()));
    $('.rental-price__value').text(rentalPrice.toLocaleString());

    $('#period-select').change(function () {
        const selectedPeriod = parseInt($(this).val());
        const rentalPrice = Math.round(originalPrice / selectedPeriod);
        $('.rental-price__value').text(rentalPrice.toLocaleString());
    });

});
