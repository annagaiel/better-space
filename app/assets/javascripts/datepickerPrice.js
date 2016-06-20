function parseDate(str) {
  var mdy = str.split('/');
  return new Date(mdy[2], mdy[0]-1, mdy[1]);
}

function daydiff(first, second) {
  return Math.round((second-first)/(1000*60*60*24));
}

$("#move_in").datepicker({
    format: 'mm/dd/yyyy',
    startDate: '+0d'
}).on('changeDate', function(e) {
    var tomorrow = new Date($(this).val());
    tomorrow.setDate(tomorrow.getDate() + 1);
    $('#move_out').datepicker('setStartDate', tomorrow);
    $('#move_out').datepicker('update');
});

$('#move_in').datepicker('setDate', new Date());

$("#move_in, #move_out").datepicker().on('changeDate', function (e) {
  var move_in = $('#move_in').val();
  var move_out = $('#move_out').val();
  var first = parseDate(move_in);
  var second = parseDate(move_out);
  var diff = daydiff(first, second);
  var day = $('#day_rent').val();
  var total =  parseInt(day) * diff;
  console.log(parseInt(day) * diff);
  if (move_in !== "" && move_out !== ""){
    $('#price').val(total);
  }
});
