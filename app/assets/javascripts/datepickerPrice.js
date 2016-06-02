$("#booking_move_in, #booking_move_out").datepicker().on('changeDate', function (e) {
  var move_in = $('#booking_move_in').val();
  var move_out = $('#booking_move_out').val();
  var first = parseDate(move_in);
  var second = parseDate(move_out);
  var diff = daydiff(first, second);
  var price = setPrice(diff);
  if (price || price > 1) {
    $('#booking_price').val(price);
  }
});

var setPrice = function(diff){
  var day = $('#day_rent').text();
  var month = $('#monthly_rent').text();
  if(diff < 31){
    return parseInt(day) * diff
  }
}

function parseDate(str) {
  var mdy = str.split('/');
  return new Date(mdy[2], mdy[0]-1, mdy[1]);
}

function daydiff(first, second) {
  return Math.round((second-first)/(1000*60*60*24));
}
