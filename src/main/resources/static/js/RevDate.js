/*
Using https://www.jqueryscript.net/demo/jQuery-Plugin-For-Date-Range-Selector-Range-Calendar/
*/
$( document ).ready(function() {
    //alert(new Date());
    var rc = $("#rcal").rangeCalendar({
        startDate: new Date(),
        startRangeWidth: 1
    });
});