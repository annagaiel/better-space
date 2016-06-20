$(document).ready(function() {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth() + 1;
  var yyyy = today.getFullYear();
  if(dd<10){
    dd='0'+dd;
  }
  if(mm<10){
    mm='0'+ mm;
  }
  var todayDate = yyyy + '-' + mm + '-' + dd;

  $.getJSON("/api/v1/your_bookings.json", function(result){
    var eventsArray = [];
    $.each(result, function(i, field){
      var bookingTitle = field.title;
      if (field.bookings.length > 0){
        var bookings = field.bookings;
        for (var i = 0; i < bookings.length; i++) {
          var eventHash = {};
          var arrBooking = bookings[i].move_in.replace(/\//g , "-").split('-');
          var newformat = arrBooking[2] + '-' + arrBooking[0] + '-' + arrBooking[1];
          eventHash["start"] = newformat;
          var arrBooking2 = bookings[i].move_out.replace(/\//g , "-").split('-');
          var nextformat = arrBooking2[2] + '-' + arrBooking2[0] + '-' + arrBooking2[1];
          eventHash["end"] = nextformat;
          eventsArray.push(eventHash);
          eventHash["title"] = bookingTitle + ' booked by ' + bookings[i].renter;
        }
      }
    });
    // start of calendar;
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,basicDay'
      },
      defaultDate: todayDate,
      editable: false,
      eventLimit: true, // allow "more" link when too many events
      events: eventsArray,
      eventColor: '#378006'
    });
    // end of calendar;
  });
});
