/*
New reservation:

http://lazy-coding.com/j-forms-advanced/forms/order_logic_date_range/index.html

https://coolors.co/app/011627-fdfffc-2ec4b6-e71d36-ff9f1c

*/

$(document).ready(function() {
    // init Isotope
    var $grid = $('#rooms-container').isotope({
        // options
        itemSelector: '.rc',
        layoutMode: 'fitRows'
    });

    // bind filter click
    $('#room-types-container').on('click', '.rc', function() {
        var filterValue = $(this).attr('data-filter');

        $grid.isotope({
            filter: filterValue
        });
        $("#rooms-container .rc" + filterValue + ":first").click();
    });
    $('#room-types-container .rc').click(function() {
        $(this).addClass('is-selected');
        $(this).siblings().removeClass('is-selected');
    });

    // Change is-selected for grid-item
    $('#rooms-container .rc').click(function() {
        $(this).addClass('is-selected');
        $(this).siblings().removeClass('is-selected');
        $(this).children("input[name='room-number']:radio").eq(0).prop('checked', true);

        var price = $(this).children("input[name='room-number']:radio").eq(0).data('room-price');
        $("#room-price").val(price);
    });
});