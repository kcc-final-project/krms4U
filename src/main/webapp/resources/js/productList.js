$(function () {
    $('.btn-anchor').on('click', function () {
        $('html').scrollTop(0);
    });

    $('.product-detail-id').on('click', function () {
        const id = $(this).data('productId');
        window.location.href = '/products/' + id;
    });
});