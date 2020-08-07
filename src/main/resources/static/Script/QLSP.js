$(document).ready(function() {


	
	$('#btn_upload').click(function(event) {
		$('#add_img').click();
	});

	// $(window).on("beforeunload", function(e) {
	//   return confirm();
	// });
	
	$('.p_price').on('change keyup', function() {
	  	$(this).val($(this).val().replace(/[^0-9]/g, ''));
		if($(this).val()>100000000){
		  	$(this).val(100000000);
		}
	});

	function getPer (priceSale, price) {
		if(price==0) return '-100%';
 		var per0 = (100-Math.round((priceSale/price)*100));
		if(per0<0) per0=0;
		else if(per0>100) per0=100;
		return '-'+per0+'%';
	}

	$('.p_sale').on('change keyup', function() {
	  	var check_priceSale = $(this).val().replace(/[^0-9]/g, '');
	  	var check_Price = $(this).parent('.more_price_ori').siblings('.p_price').val().replace(/[^0-9]/g, '');
	  	if(check_priceSale*1 > check_Price*1){
	  		$(this).val(check_Price);
	  	}
	  	$(this).siblings('.get_per').text(getPer(check_priceSale, check_Price));
	});

	$('.p_sale').each(function() {
		if($(this).val() == $(this).parent('.more_price_ori').siblings('.p_price').val()){
			
		} else {
			$(this).parent('.more_price_ori').siblings('.more_price_caret').css({
				'color': 'orangered',
				'cursor': 'pointer'
			});
		}
	});

	$('.viewSaleInfo').each(function() {
		$(this).css('color', $(this).siblings('.more_price_caret').css('color'));
		if($(this).css('color')=='rgb(0, 77, 153)') $(this).text('Thêm KM');
	});

	$('.more_price_caret').hover(function() {
		if($(this).siblings('.more_price_ori').css('display')=='none'){
			$(this).siblings('.viewSaleInfo').show('slide', { direction: 'left', easing: 'swing' }, 100);
		}

	}, function() {
		$(this).siblings('.viewSaleInfo').hide('slide', { direction: 'left', easing: 'swing' }, 30);
	});

	$('.more_price_caret').click(function(event) {
		$(this).siblings('.viewSaleInfo').hide();
		if($(this).html().trim()=='<i class="fas fa-caret-down"></i>'){
			$(this).siblings('.more_price_ori').show(100, function() {});
			$(this).html('<i class="fas fa-caret-up"></i>');
			if($(this).siblings('.p_price').val() == $(this).siblings('.more_price_ori').children('.p_sale').val()){
				$(this).siblings('.more_price_ori').children('.add_sale').css('display', 'inline-block');
			} else {
				$(this).siblings('.more_price_ori').children('.p_sale').css('display', 'block');
				$(this).siblings('.more_price_ori').children('.cancel_sale').css('display', 'block');
				$(this).siblings('.more_price_ori').children('.get_per').show();
			}

		} else {
			$(this).siblings('.more_price_ori').hide(50, function() {});
			$(this).html('<i class="fas fa-caret-down"></i>');
			$(this).siblings('.more_price_ori').children('.p_sale').val($(this).siblings('.more_price_ori').children('.p_saleHidden').val());
			$(this).siblings('.more_price_ori').children('.p_sale').css('display', 'none');
			$(this).siblings('.more_price_ori').children('.get_per').css('display', 'none');
			$(this).siblings('.more_price_ori').children('.add_sale').css('display', 'none');
			$(this).siblings('.more_price_ori').children('.cancel_sale').css('display', 'none');
		}
	});

	$('.add_sale').click(function(event) {
		$(this).hide();
		var add_p_sale = $(this).siblings('.p_sale');
		add_p_sale.val('');
		add_p_sale.show(50, function() {});
		add_p_sale.siblings('.cancel_sale').css('display', 'block');
		add_p_sale.siblings('.get_per').show();
		add_p_sale.focus();
	});

	$('.cancel_sale').click(function(event) {
		$(this).hide();
		$(this).siblings('.p_sale').val($(this).parent('.more_price_ori').siblings('.p_price').val());
		var add_p_sale = $(this).siblings('.p_sale');
		add_p_sale.hide();
		add_p_sale.siblings('.add_sale').css('display', 'inline-block');
		add_p_sale.siblings('.get_per').hide();
	});

	$('.p_quantity').on('change keyup', function() {
	  	$(this).val($(this).val().replace(/[^0-9]/g, ''));
		if($(this).val()>1000){
		  	$(this).val(1000);	
		}
	});

	$('.p_price, .p_quantity:eq(0)').focus(function(event) {
		if($(this).val()==0 || $(this).val()==1 || $(this).val()=='0 ₫'){
			$(this).val("");
		}
	});

	$('.p_price').blur(function(event) {
		if($(this).val()=="") $(this).val(0);
	});

	$('.p_quantity').blur(function(event) {
		if($(this).val()=="") $(this).val(1);
	});

	function getDisplayPrice (price) {
		var s0 = price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,').replace(/,/g, '.');
		var s1 = s0.substring(0, s0.length-3);

		return s1+' ₫';
	}

	var isMsgShow = false;
	var timeOutMsg;
	function msg_hoang (msg_text) {
		clearTimeout(timeOutMsg);
		$('.msg_text').text(msg_text);
		if(isMsgShow){
			$('.msg_container').hide(100, function() {
				isMsgShow = false;
			});
		} else {
			isMsgShow = true;
		}
		$('.msg_container').show(200, function() {
			isMsgShow = true;
			clearTimeout(timeOutMsg);
			timeOutMsg = setTimeout(function(){
				$('.msg_container').hide(400);
				isMsgShow = false;
			},5000);
		});
		$('.msg_close').click(function(event) {
			$('.msg_container').hide(400, function() {});
		});
	}
	
	if($('#added').val()=="added"){
		$('.show_f:eq(0) tr').css('background-color', 'rgb(232, 255, 230)');
		msg_hoang('Thêm sản phẩm mới thành công ✔');
		
	}
	
	$('.btn_delete:eq(0)').click(function(event) {
		$('.p_id:eq(0)').val("1");
		$('.p_name:eq(0)').val("");
		$('.p_price:eq(0)').val(0);
		$('.p_quantity:eq(0)').val(1);
	});


	function Confirm2(title, msg, $true, $false) { /*change*/
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
						            "<button class='button button-default cancelAction' style='display:none;'>" + $false + "</button></a> " +
						        "</div>" +
						    "</div>" +
						"</div>";
	    $('body').prepend($content);
	    $('.doAction, .cancelAction, .dialog-ovelay').click(function() {
	        $('.dialog-ovelay, .dialog').fadeOut(500, function() {
	            $('.dialog-ovelay, .dialog').remove();
	        });
	    });
	}




	var isUploadIMG = false;

	$('#add_img').change(function(event) {
		isUploadIMG = true;
		$('#formAddProduct').submit();
		$('#img_loading').css('visibility', 'visible');
		// $('#img_fff').css('visibility', 'visible');
//		$('#addProDuctIMGtag').css('opacity', '0.7');
		$('#addProDuctIMGtag').css('visibility', 'hidden');		
	});

	$.urlParam = function(name, param){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};

	
	$('#formAddProduct').submit(function(event) {
		if(isUploadIMG==true){
			console.log('isUploadIMG');
			event.preventDefault();
			
			console.log($('#add_img').val());
//			var formData = new FormData($(this));
			
			var form = $('#formAddProduct')[0];
			var data = new FormData(form);

			$.ajax({
				url: 'admin/UploadIMG',
				type: 'POST',
				enctype: 'multipart/form-data',
				dataType: 'html',
				data: data,
	            cache: false,
	            contentType: false,
	            processData: false,
			})
			.done(function(img_resp) {
				console.log(img_resp);

				var photo_name = $.urlParam('photo_name', img_resp);
				if(photo_name=='FAIL'){
					console.log('fail type');
					$('#img_loading').css('visibility', 'hidden');
					$('#addProDuctIMGtag').css('visibility', 'visible');	
					Confirm2('Thông báo','File không hợp lệ!<br>Vui lòng chọn file hình ảnh jpeg/png','Đồng ý','Quay lại');
				} else if (photo_name=='OVERSIZE'){
					console.log('fail OVERSIZE');
					$('#img_loading').css('visibility', 'hidden');
					$('#addProDuctIMGtag').css('visibility', 'visible');	
					Confirm2('Thông báo','Dung lượng ảnh không được lớn hơn 2MB!<br>Vui lòng chọn file hình ảnh khác','Đồng ý','Quay lại');
				} else {
					$('#addProDuctIMGtag').attr('src', photo_name);
			
					var srcIMG = $('#addProDuctIMGtag').attr('src');
					var statusIMG = false;
					var countIMG = 0;
					
					var refreshIntervalId =  setInterval(function(){ 
		 				console.log(countIMG);
						$('#addProDuctIMGtag').attr('src', srcIMG + '?' + new Date());
						
						$("<img/>")
					    .on('load', function() { statusIMG = true; })
					    .on('error', function() { statusIMG = false; })
					    .attr("src", $('#addProDuctIMGtag').attr("src"))
						;
						
						countIMG++;
						
						if(statusIMG==true || countIMG==50) {
							$('#img_loading').css('visibility', 'hidden');
							$('#img_fff').css('visibility', 'hidden');
							clearInterval(refreshIntervalId);
							$('#addProDuctIMGtag').css('opacity', '1');
							$('#addProDuctIMGtag').css('visibility', 'visible');	
							$('#hiddenImgPath').val($.urlParam('photo_name', img_resp));
						}
					
					}, 500);
					
					console.log("success");
				}


				
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				isUploadIMG=false;
				console.log("complete");
			});
		}
	});
	



	
	
	///////////////////////////////////////////////////////////////////////////
	
	$('.btn_upload').click(function(event) {
		$(this).siblings('.fix_img').click();
	});

	var isUploadIMG2 = false;

	$('.fix_img').change(function(event) {
		var formIndex = $(this).parent().siblings('.t_name').children('.formIndex').val();
		console.log('formIndex: '+formIndex);
		isUploadIMG2 = true;
		$('.show_f:eq('+formIndex+')').submit();
		
//		$('.fix_img').parent().parent().parent().parent().parent('.show_f').submit();
		$('.img_loading2:eq('+formIndex+')').css('visibility', 'visible');
		// $('.img_fff2:eq('+formIndex+')').css('visibility', 'visible');
		$('.updateProDuctIMGtag:eq('+formIndex+')').css('visibility', 'hidden');
	});

	$.urlParam = function(name, param){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};

	
	$('.show_f').submit(function(event) {
		var formIndex = $(this).children('table').children('tbody').children('tr').children('.t_name').children('.formIndex').val();
		
		console.log('formIndexSubmit: '+formIndex);
		
		
		if(isUploadIMG2==true){
			console.log('isUploadIMG2');
			event.preventDefault();
			
			var form = $('.show_f')[formIndex];
			var data = new FormData(form);

			$.ajax({
				url: 'admin/UploadIMG',
				type: 'POST',
				enctype: 'multipart/form-data',
				dataType: 'html',
				data: data,
	            cache: false,
	            contentType: false,
	            processData: false,
			})
			.done(function(img_resp) {
				console.log(img_resp);
				var photo_name = $.urlParam('photo_name', img_resp);
				if(photo_name=='FAIL'){
					console.log('fail type');
					$('.img_loading2:eq('+formIndex+')').css('visibility', 'hidden');
					$('.updateProDuctIMGtag:eq('+formIndex+')').css('visibility', 'visible');
					Confirm2('Thông báo','File không hợp lệ!<br>Vui lòng chọn file hình ảnh jpeg/png','Đồng ý','Quay lại');
				} else if (photo_name=='OVERSIZE'){
					console.log('fail OVERSIZE');
					$('.img_loading2:eq('+formIndex+')').css('visibility', 'hidden');
					$('.updateProDuctIMGtag:eq('+formIndex+')').css('visibility', 'visible');
					Confirm2('Thông báo','Dung lượng ảnh không được lớn hơn 2MB!<br>Vui lòng chọn file hình ảnh khác','Đồng ý','Quay lại');
				} else {
					$('.updateProDuctIMGtag:eq('+formIndex+')').attr('src', photo_name);
		
					var srcIMG = $('.updateProDuctIMGtag:eq('+formIndex+')').attr('src');
					var statusIMG = false;
					var countIMG = 0;
					
					var refreshIntervalId =  setInterval(function(){ 
		 				console.log(countIMG);
						$('.updateProDuctIMGtag:eq('+formIndex+')').attr('src', srcIMG + '?' + new Date());
						
						$("<img/>")
					    .on('load', function() { statusIMG = true; })
					    .on('error', function() { statusIMG = false; })
					    .attr("src", $('.updateProDuctIMGtag:eq('+formIndex+')').attr("src"))
						;
						
						countIMG++;
						
						if(statusIMG==true || countIMG==50) {
							$('.img_loading2:eq('+formIndex+')').css('visibility', 'hidden');
							$('.img_fff2:eq('+formIndex+')').css('visibility', 'hidden');
							clearInterval(refreshIntervalId);
							$('.updateProDuctIMGtag:eq('+formIndex+')').css('opacity', '1');
							$('.updateProDuctIMGtag:eq('+formIndex+')').css('visibility', 'visible');
							$('.p_fix_image:eq('+formIndex+')').val($.urlParam('photo_name', img_resp)); //???????????????
						}
					
					}, 500);
					
					console.log("success");
				}
				
				
				
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				isUploadIMG2=false;
				console.log("complete");
			});
		}
		
	});
	
	function ConfirmUpdate(title, msg, $true, $false, index, productId) { /*change*/
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
			var form = $('.show_f')[index];
			var data = new FormData(form);
			$.ajax({
				url: 'admin/ProductManagement/UpdateProduct',
				type: 'POST',
				enctype: 'multipart/form-data',
				dataType: 'html',
				data: data,
				cache: false,
	            contentType: false,
	            processData: false,
			})
			.done(function(total_resp) {
				var u_priceSale = $('.more_price_ori:eq('+index+')').children('.p_sale').val();
				var u_price = $('.more_price_ori:eq('+index+')').siblings('.p_price').val();
				$('.more_price_ori:eq('+index+')').children('.p_saleHidden').val(u_priceSale);
				if(u_priceSale == u_price){
					$('.viewSaleInfo:eq('+index+')').css('color', '#004d99');
					$('.more_price_caret:eq('+index+')').css('color', '#004d99');
				} else {
					$('.viewSaleInfo:eq('+index+')').css('color', 'orangered');
					$('.more_price_caret:eq('+index+')').css('color', 'orangered');
				}
				
				$('.show_f:eq('+index+') tr').css('background-color', 'rgb(232, 255, 230)');

				msg_hoang("Cập nhật thành công ✔");
				console.log("Success Update Product!");
				console.log(total_resp);
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
	        
	    });
	        
	}
	$('.btn_save').click(function(event) {
		var formIndex = $(this).parent('.t_action_1').siblings('.t_name').children('.formIndex').val();

		
		
		var productName = $('.p_fix_name:eq('+formIndex+')').val();
		var productId = $('.p_fix_id:eq('+formIndex+')').val();

		
			ConfirmUpdate('⚠️ Thay đổi giá trị', 
			    	"Cập nhật giá trị mới cho sản phẩm này?<br>"+
			    	"Tên SP: <a  href='ViewProduct/"+productId+"' class='confirmD_nameProduct' target='_blank'>"+productName+" ➯</a><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, productId);
			
		
		

	});
	
	////////////////////////////////////////////////

	function ConfirmDiscontinue(title, msg, $true, $false, index, productId) { /*change*/
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
	        $.ajax({
				url: 'admin/ProductManagement/DisContinuedProduct',
				type: 'POST',
				dataType: 'html',
				data: {
					"productId": productId
				},
			})
			.done(function(total_resp) {
				$('.show_f:eq('+index+')').hide('slide', { direction: 'left', easing: 'swing' }, 700);
				
				msg_hoang("Ngừng kinh doanh sản phẩm thành công ✔");
				console.log("Success DisContinuedProduct!");
				console.log(total_resp);
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
	        
	    });
	}
	$('.btn_delete2').click(function(event) {
		var formIndex = $(this).parent('.t_action_3').siblings('.t_name').children('.formIndex').val();
		var productName = $('.p_fix_name:eq('+formIndex+')').val();
		var productId = $('.p_fix_id:eq('+formIndex+')').val();

		
			ConfirmDiscontinue('⚠️ Dừng bán sản phẩm', 
			    	"Sản phẩm sẽ được chuyển sang trạng thái <b>NGỪNG KINH DOANH</b><br>"+
			    	"Tên SP: <a  href='ViewProduct/"+productId+"' class='confirmD_nameProduct' target='_blank'>"+productName+" ➯</a><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, productId);
		
	});
	
	function ConfirmContinue(title, msg, $true, $false, index, productId) { /*change*/
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
	        $.ajax({
				url: 'admin/ProductManagement/ContinuedProduct',
				type: 'POST',
				dataType: 'html',
				data: {
					"productId": productId
				},
			})
			.done(function(total_resp) {
				$('.show_f:eq('+index+')').hide('slide', { direction: 'right', easing: 'swing' }, 700);
				
				msg_hoang("Đăng bán sản phẩm thành công ✔");
				console.log("Success ContinuedProduct!");
				console.log(total_resp);
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
	        
	    });
	}
	$('.cancel_discontinue').click(function(event) {
		var formIndex = $(this).parent('.t_action_2').siblings('.t_name').children('.formIndex').val();
		var productName = $('.p_fix_name:eq('+formIndex+')').val();
		var productId = $('.p_fix_id:eq('+formIndex+')').val();

		
			ConfirmContinue('⚠️ Đăng bán sản phẩm', 
			    	"Sản phẩm sẽ được đăng bán lại trên trang chủ<br>"+
			    	"Tên SP: <a  href='ViewProduct/"+productId+"' class='confirmD_nameProduct' target='_blank'>"+productName+" ➯</a><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, productId);
			
	});

	
	function ConfirmPermanentlyDeleted(title, msg, $true, $false, index, productId) {
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
	        $.ajax({
				url: 'admin/ProductManagement/PermanentlyDeleted',
				type: 'POST',
				dataType: 'html',
				data: {
					"productId": productId
				},
			})
			.done(function(total_resp) {
				$('.show_f:eq('+index+')').hide('slide', { direction: 'left', easing: 'swing' }, 700);
				
				msg_hoang("Xóa sản phẩm khỏi hệ thống thành công ✔");
				console.log("Success ContinuedProduct!");
				console.log(total_resp);
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
	        
	    });
	}
	$('.permanently_deleted').click(function(event) {
		var formIndex = $(this).parent('.t_action_3').siblings('.t_name').children('.formIndex').val();
		var productName = $('.p_fix_name:eq('+formIndex+')').val();
		var productId = $('.p_fix_id:eq('+formIndex+')').val();

		ConfirmPermanentlyDeleted('⚠️ Xóa sản phẩm', 
			    	"<b>Thông tin sản phẩm</b> và tất cả các <b>dữ liệu thống kê liên quan</b> sẽ bị <u><b>xóa vĩnh viễn</b></u> khỏi hệ thống và không thể hoàn tác<br>"+
			    	"Tên SP: <a  href='ViewProduct/"+productId+"' class='confirmD_nameProduct' target='_blank'>"+productName+" ➯</a><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, productId);
			
	});
	

	$('.show_f tr').click(function(event) {
		$('.show_f tr').each(function(index, el) {
			if($(this).css('background-color')=="rgba(0, 102, 255, 0.07)"){
				$(this).css('background-color', '#fff');
			} 
			if($(this).css('background-color')=="rgb(208, 255, 204)"){
				$(this).css('background-color', 'rgb(232, 255, 230)');
			} 
		});
		if($(this).css('background-color')!="rgb(232, 255, 230)"){
			$(this).css('background-color', 'rgba(0, 102, 255, 0.07)');

		} else {
			$(this).css('background-color', 'rgb(208, 255, 204)');
		}
		
		//select: rgba(0, 102, 255, 0.07) 
		//successs: #e8ffe6 || rgb(232, 255, 230)
	});


	$('#cbo_sort_product2').change(function(event) {

		$(location).attr('href', 'admin/changeSortValue?sortValue='+$(this).val());

	});
	try {
		$('#cbo_sort_product2 option[value='+$('#sortValue2').text()+']').attr('selected','selected');
	} catch(e) {}



	$('#qlsp_forward').click(function(event) {
		var targetPage = $('#qlsp_current_page').val()*1+1;
		if($('#qlsp_current_page').val()*1<$('#qlsp_total_page').text()*1){
			$(location).attr('href', 'admin/ProductManagement?targetPage='+ targetPage +
									'&sortValue='+$('#cbo_sort_product2').val());
		}
		
	});
	$('#qlsp_back').click(function(event) {
		var targetPage = $('#qlsp_current_page').val()*1-1;
		if($('#qlsp_current_page').val()*1>1){
			$(location).attr('href', 'admin/ProductManagement?targetPage='+ targetPage +
									'&sortValue='+$('#cbo_sort_product2').val());
		}
		
	});

	$('#qlsp_current_page').on('change keyup', function() {
	  	$(this).val($(this).val().replace(/[^0-9]/g, ''));
		if($(this).val()*1>$('#qlsp_total_page').text()*1){
		  	$(this).val($('#qlsp_total_page').text());
		}
	});
	$('#qlsp_current_page').blur(function(event) {
	  	if($(this).val()=="") $(this).val(1);
	});

	$('#qlsp_go').click(function(event) {
		var targetPage = $('#qlsp_current_page').val();
		if($('#qlsp_current_page').val()*1>=1 && $('#qlsp_current_page').val()*1<=$('#qlsp_total_page').text()*1){
			$(location).attr('href', 'admin/ProductManagement?targetPage='+ targetPage +
									'&sortValue='+$('#cbo_sort_product2').val());
		}
	});



	function ConfirmAddProduct(title, msg, $true, $false) { 
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
	    	$('#formAddProduct').submit();
	    });
	}
	$('.btn_add').click(function(event) {
		event.preventDefault();
		ConfirmAddProduct('⚠️ Thông báo', 
			    	"Xác nhận thêm sản phẩm mới?",
			    	 				'Đồng ý', 'Quay lại');

	});

	$('.p_price').click(function(event) {
		$(this).val($(this).val().replace(/[^0-9]/g, ''));
	});

	$('.p_price').blur(function(event) {
		$(this).val(getDisplayPrice($(this).val()*1));
	});


	






	// var sdelay = true;
	// $('#qlsp_search').on('change keyup', function() {
	// 	if(sdelay==true){
	// 		sdelay=false;
	// 		setTimeout(function(){
	// 			//later













	// 			sdelay=true;
	// 		}, 1000);	
	// 	}
	// });























});