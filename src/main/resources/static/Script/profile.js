
$(document).ready(function() {

	$('#sl_edit_name').on('change keyup', function() {
		for(var i=0; i<=9; i++){
			$(this).val($(this).val().replace(i,""));
		}
	});


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
	
	if($('#edited').val()=="edited"){
		msg_hoang('Cập nhật thông tin thành công ✔');
		
	}

	
	var isUploadIMG = false;

	$('#uploadAvatar').click(function(event) {
		$('#add_img').click();
	});

	$('#add_img').change(function(event) {
		isUploadIMG = true;
		$('#form_edit_info').submit();
		$('#img_loading').css('visibility', 'visible');
		$('#addAvatarIMGtag').css('visibility', 'hidden');		
	});

	$.urlParam = function(name, param){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};

	
	$('#form_edit_info').submit(function(event) {
		if(isUploadIMG==true){
			console.log('isUploadIMG');
			event.preventDefault();
			
			console.log($('#add_img').val());			
			var form = $('#form_edit_info')[0];
			var data = new FormData(form);

			$.ajax({
				url: 'UploadAvatar',
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
					$('#addAvatarIMGtag').css('visibility', 'visible');	
					Confirm2('Thông báo','File không hợp lệ!<br>Vui lòng chọn file hình ảnh jpeg/png','Đồng ý','Quay lại');
				} else if (photo_name=='OVERSIZE'){
					console.log('fail OVERSIZE');
					$('#img_loading').css('visibility', 'hidden');
					$('#addAvatarIMGtag').css('visibility', 'visible');	
					Confirm2('Thông báo','Dung lượng ảnh không được lớn hơn 2MB!<br>Vui lòng chọn file hình ảnh khác','Đồng ý','Quay lại');
				} else {
					$('#addAvatarIMGtag').attr('src', photo_name);
			
					var srcIMG = $('#addAvatarIMGtag').attr('src');
					var statusIMG = false;
					var countIMG = 0;
					
					var refreshIntervalId =  setInterval(function(){ 
		 				console.log(countIMG);
						$('#addAvatarIMGtag').attr('src', srcIMG + '?' + new Date());
						
						$("<img/>")
					    .on('load', function() { statusIMG = true; })
					    .on('error', function() { statusIMG = false; })
					    .attr("src", $('#addAvatarIMGtag').attr("src"))
						;
						
						countIMG++;
						
						if(statusIMG==true || countIMG==50) {
							$('#img_loading').css('visibility', 'hidden');
							$('#img_fff').css('visibility', 'hidden');
							clearInterval(refreshIntervalId);
							$('#addAvatarIMGtag').css('opacity', '1');
							$('#addAvatarIMGtag').css('visibility', 'visible');	
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
	

	function ConfirmPw(title, msg, $true, $false) { 
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
	    $('.doAction').click(function() {
	    	
	    });
	}
	// $('.btn_add').click(function(event) {
	// 	event.preventDefault();
	// 	ConfirmPw('⚠️ Thông báo', 
	// 		    	"Xác nhận thêm sản phẩm mới?",
	// 		    	 				'Đồng ý', 'Quay lại');

	// });
	// 
	$.urlParam = function(name, param){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};


	$('#form_edit_pw').submit(function(event) {
		var checkRepw = true;
		var checkCurrentpw = true;
		event.preventDefault();
		if($('#sl_new_pw').val() != $('#sl_new_pw2').val()){
			ConfirmPw('⚠️ Thông báo', 
			    	"Mật khẩu nhập lại không khớp",
			    	 				'Đồng ý', 'Nhập lại');
			checkRepw = false;
		}
		if($('#sl_new_pw').val().trim().length<8){
			ConfirmPw('⚠️ Thông báo', 
			    	"Password phải từ 8 kí tự trở lên",
			    	 				'Đồng ý', 'Nhập lại');
			checkRepw = false;
		}

		if(checkRepw){
			$.ajax({
				url: 'CheckCurrentPw',
				type: 'POST',
				dataType: 'html',
				data: {
					"sl_current_pw": $('#sl_current_pw').val(),
					"sl_new_pw": $('#sl_new_pw').val(),
				},
			})
			.done(function(user_resp) {
				if($.urlParam('pw', user_resp)=="0"){
					ConfirmPw('⚠️ Thông báo', 
				    	"Mật khẩu cũ không chính xác",
				    	 				'Đồng ý', 'Nhập lại');
					checkCurrentpw = false;
				} else if($.urlParam('pw', user_resp)=="1"){
					$(location).attr('href', 'Profile');
				}



				
				
				console.log("success");	
				console.log(user_resp);	
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
				event.preventDefault();
			});
		}

		
	});













	







});








