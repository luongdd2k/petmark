$(document).ready(function() {
	var scrollTop;
	var cc_h = $('#cart_container').innerHeight();
	$(window).scroll(function(event) {
		scrollTop = $(window).scrollTop();

		if (scrollTop>50) {
			if(scrollTop<(50+(cc_h-324))){
				$('#total_box').css('margin-top', (scrollTop-30) + 'px');
			}
		} else {
		    $('#total_box').css('margin-top', '20px');
		}
	});


	$('#f7_ny').css('background-image', 'none');
	
	$(window).resize(function(event) {
		if($('body').innerHeight()>1760){
			$('#footer_000').innerHeight('79vh');
			$('nav').width($('body').width());
		}
		if($('body').innerHeight()>4800){
			$('#footer_000').innerHeight('91vh');
			$('nav').width($('body').width());
		}
	});

		if($('body').innerHeight()>1760){
			$('#footer_000').innerHeight('79vh');
			$('nav').width($('body').width());
		}
		if($('body').innerHeight()>4800){
			$('#footer_000').innerHeight('91vh');
			$('nav').width($('body').width());
		}


	$.urlParam = function(name, param){
	    // var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};



	$('.cart_item_row_info_delete').click(function(event) {
		// 
		
		$.ajax({
			url: 'CartItem/DeleteCart',
			type: 'POST',
			dataType: 'html',
			data: {
				"cartID": $(this).children('input').val()
			},
		})
		.done(function(total_resp) {
			
			$('#cart_count').text($.urlParam('totalQuantity', total_resp));
			$('.total_box_right span').text($.urlParam('totalQuantity', total_resp));
			var tbp = $.urlParam('totalMoney', total_resp);
			$('.total_box_price span').text(tbp.substring(0, tbp.length-1)+'₫');
			console.log("success");
			console.log(total_resp);
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
		$(this).parent().parent().css('display', 'none');
	});


	function ConfirmPay(title, msg, $true, $false) { /*change*/
		var $content =  "<div class='dialog-ovelay'></div>" +
						"<div class='dialog'>" +
						    "<header class='headerConfirm'>" +
						        "<h3 class='h3Confirm'> " + title + " </h3> " +
						        "<i class='fa fa-close'></i>" +
						    "</header>" +
						    "<div class='dialog-msg'>" +
						        "<p class='pConfirm'> " + msg + " </p> " +
						    "</div>" +
						    "<div class='footerConfirm'>" +
						        "<div class='controls'>" +
						            "<button class='button button-danger doAction'>" + $true + "</button> " +
						            "<button class='button button-default cancelAction'>" + $false + "</button></a> " +
						        "</div>" +
						    "</div>" +
						"</div>";
	    $('body').prepend($content);
	    $('.doAction, .cancelAction, .dialog-ovelay').click(function() {
	        $('.dialog-ovelay, .dialog').fadeOut(500, function() {
	            $('.dialog-ovelay, .dialog').remove();
	        });
	    });
	    $('.doAction').click(function() {
	        if($('#okpay').is(":checked")){
	        	$(location).attr('href', 'CartItem/Paying');
	        }
	        
	    });
	}
	$('#total_box_paying').click(function(event) {
		event.preventDefault();
		if($('.cart_item_row').css('display')=='none' || $('.cart_item_row').css('display')==undefined){
			ConfirmPay('⚠️ Thông báo', 
			    	"Bạn chưa thêm sản phẩm vào giỏ hàng!<br>",
			    	 				'Đồng ý', 'Quay lại');
		} else {
			ConfirmPay('⚠️ Thông báo', 
			    	"Xác nhận thanh toán các sản phẩm trong giỏ hàng<br>"+
			    	"<input type='checkbox' id='okpay'> "+
			    	" Tôi đồng ý với các <span id='dkmh'>điều khoản mua hàng</span>",
			    	 				'Đồng ý', 'Quay lại');
		}


			
			
	});







});