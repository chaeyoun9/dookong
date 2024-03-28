$(document).ready(function() {
    var calendarEl = $('#calendar');
    var calendar = new FullCalendar.Calendar(calendarEl[0], {
        initialView: 'dayGridMonth'
    });
    calendar.render();
});
