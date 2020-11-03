function showVNPay(){
    $("#form-vnpay").removeClass("hide");
    $("#btn-dat-vnpay").removeClass("hide");
    $("#btn-dat-tien").addClass("hide");
  }
  function amVNPay(){
    $("#form-vnpay").addClass("hide");
    $("#btn-dat-vnpay").addClass("hide");
    $("#btn-dat-tien").removeClass("hide");
  }
  
  
  $('#checkATM').click();
var isATM = true;
var isOff = false;

$('#checkATM').click(function(event) {
	
	if (isATM) {
		event.preventDefault();
	} else {
		if (isOff) {
			isOff = false;
		} else {
			isATM = true;
			isOff = true;
			$('#checkCOD').click();
		}
	}
});

$('#checkCOD').click(function(event) {
	if (!isATM) {
		event.preventDefault();
	} else {
		if (isOff) {
			isOff = false;
		} else {
			isATM = false;
			isOff = true;
			$('#checkATM').click();
		}
	}
});
  var checkoutUrl = '/checkout';
$('#submitCheckout').click(function(event) {
//	console.log('begin checkout');
	let paymentMethod = isATM ? 'ATM' : 'COD'
	let name = $('#name').val();
	let phone = $('#phone').val();
	let address = $('#address').val();

	if (!$('#checkout_info')[0].checkValidity()) {
		$('#checkout_info')[0].reportValidity();
	} else {
		$('#paymentMethod').val(paymentMethod);
		$('#checkout_info').submit();
	}

	// console.log(checkoutUrl+'?paymentMethod='+paymentMethod+'consignee'+name+'=&phone='+phone+'&address='+address);
});