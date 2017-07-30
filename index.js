
<!--Load data using RESTFUL service-->
function loadBoatData() {
  $.get('/rest/app/restService/' + $('#ddlBoat').val(), function(data) {
    $("#priceWeekend").val(data.PRICEWEEKEND);
    $('#priceWeek').val(data.PRICEWEEK);
    $('#discount').val(data.DISCOUNTRATE);
    $('#discountAfter').val(data.DISCOUNTAFTER);
  });
}
<!--Save data using RESTFUL service-->
function saveBoatTypeData() {
  var data = {};
  data.BoatTypeId = $('#ddlBoat').val();
  data.PriceWeek = $('#priceWeek').val();
  data.PriceWeekend = $("#priceWeekend").val();
  data.DiscountRate = $('#discount').val();
  data.DiscountAfter = $('#discountAfter').val();

  $.ajax({
    url: '/rest/app/restService',
    data: JSON.stringify(data),
    contentType: 'application/json',
    type: 'PUT',
    success: function(data) {
      alert('Data has been updated!');
    }
  });
}
<!--Validate form and submit the data if validation pass-->
function calculateRent(){

  var differeceInMilliseconds = new Date($('#txtRentTo').val()) - new Date($('#txtRentFrom').val());
  if(differeceInMilliseconds < 3540000 || differeceInMilliseconds > 2419200000){
    $('#error').show();
    $('#btnSaveCalculation').attr('disabled', true);
  }
  else{
    $('#error').hide();
    $('#btnSaveCalculation').attr('disabled', false);
    $('#form').submit();
  }
}

function saveCalculation() {
  var differeceInMilliseconds = new Date($('#txtRentTo').val()) - new Date($('#txtRentFrom').val());
  if(differeceInMilliseconds < 3540000 || differeceInMilliseconds > 2419200000){
    $('#error').show();
    return;
  }

  var data = {};
  data.BoatId = $('#ddlBoat').val();
  data.DateFrom = $('#txtRentFrom').val();
  data.DateTo = $('#txtRentTo').val();
  data.UserId = $('#userId').val();
  data.saveCalculation = $('#chkSaveCalculation').val();

  $.post('/rest/app/restService', JSON.stringify(data), function(){
    $('#btnSaveCalculation').attr('disabled', true);
  });
}

$(document).ready(function() {
  $('#txtRentFrom, #txtRentTo').on('change', function() {
    $('#btnSaveCalculation').attr('disabled', true);
  });
});
