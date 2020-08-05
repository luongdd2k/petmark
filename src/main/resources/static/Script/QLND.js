$(document).ready(function() {

	$('#cbo_role').change(function(event) {

		$(location).attr('href', 'admin/UserManagement/changeSortValue?sortValue='+$(this).val());

	});
	try {
		$('#cbo_role option[value='+$('#sortValue2').text()+']').attr('selected','selected');
	} catch(e) {}
	

	$('#qlsp_forward').click(function(event) {
		var targetPage = $('#qlsp_current_page').val()*1+1;
		if($('#qlsp_current_page').val()*1<$('#qlsp_total_page').text()*1){
			$(location).attr('href', 'admin/UserManagement?targetPage='+ targetPage +
									'&sortValue='+$('#cbo_role').val());
		}
		
	});
	$('#qlsp_back').click(function(event) {
		var targetPage = $('#qlsp_current_page').val()*1-1;
		if($('#qlsp_current_page').val()*1>1){
			$(location).attr('href', 'admin/UserManagement?targetPage='+ targetPage +
									'&sortValue='+$('#cbo_role').val());
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
			$(location).attr('href', 'admin/UserManagement?targetPage='+ targetPage +
									'&sortValue='+$('#cbo_role').val());
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

	$('.show_f tr').each(function(index, el) {
		if($(this).children('.t_role').children('.u_role').val()=='ROLE_ADMIN'){
			$(this).css('background-color', '#ffe6e6');
		} else if($(this).children('.t_role').children('.u_role').val()=='ROLE_STAFF'){
			$(this).css('background-color', '#e6eeff');
		}

		
	});


	function ConfirmUpdate(title, msg, $true, $false, index) { /*change*/
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
	    	var done_username = $('.u_username:eq('+index+')').text();
	    	var done_role = $('.u_role:eq('+index+')').val();

			$.ajax({
				url: 'admin/UserManagement/ChangeRole',
				type: 'POST',
				dataType: 'html',
				data: {
					"u_username": done_username,
					"u_role": done_role
				},
			})
			.done(function(total_resp) {
				
				if(done_role=='ROLE_ADMIN'){
					$('.show_f:eq('+index+') tr').css('background-color', '#ffe6e6');
				} else if(done_role=='ROLE_STAFF'){
					$('.show_f:eq('+index+') tr').css('background-color', '#e6eeff');
				} else if(done_role=='ROLE_MEMBER') {
					$('.show_f:eq('+index+') tr').css('background-color', '#fff');
				}




				
				// $('.show_f:eq('+index+') tr').css('background-color', 'rgb(232, 255, 230)');

				msg_hoang("Thay đổi thành công ✔");
				console.log("Success Update Role!");
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

		var u_fullname = $('.u_fullname:eq('+formIndex+')').text();

			ConfirmUpdate('⚠️ Thông báo', 
			    	"Thay đổi phân quyền mới cho người dùng này?<br>"+
			    	"Tên người dùng: <span class='alert_fullname'>"+u_fullname+"</span><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex);
			
		
		

	});


	function ConfirmDeactive(title, msg, $true, $false, index, username) { /*change*/
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
				url: 'admin/UserManagement/DeactiveAccount',
				type: 'POST',
				dataType: 'html',
				data: {
					"u_username": username
				},
			})
			.done(function(total_resp) {
				$('.show_f:eq('+index+')').hide('slide', { direction: 'left', easing: 'swing' }, 700);
				
				msg_hoang("Chặn người dùng thành công ✔");
				console.log("Success DeactiveAccount!");
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
	$('.btn_deactive').click(function(event) {
		var formIndex = $(this).parent('.t_action_3').siblings('.t_name').children('.formIndex').val();
		var u_fullname = $('.u_fullname:eq('+formIndex+')').text();
		var u_username = $('.u_username:eq('+formIndex+')').text();

		
			ConfirmDeactive('⚠️ Thông báo', 
			    	"Chặn người dùng này?<br>"+
			    	"Tên người dùng: <span class='alert_fullname'>"+u_fullname+"</span><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, u_username);
		
	});


	/////////////////////////////////////////////////////////////////////


	function ConfirmActive(title, msg, $true, $false, index, username) { /*change*/
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
				url: 'admin/UserManagement/ActiveAccount',
				type: 'POST',
				dataType: 'html',
				data: {
					"u_username": username
				},
			})
			.done(function(total_resp) {
				$('.show_f:eq('+index+')').hide('slide', { direction: 'right', easing: 'swing' }, 700);
				
				msg_hoang("Bỏ chặn người dùng thành công ✔");
				console.log("Success Active User!");
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
	$('.btn_active').click(function(event) {
		var formIndex = $(this).parent('.t_action_1').siblings('.t_name').children('.formIndex').val();
		var u_fullname = $('.u_fullname:eq('+formIndex+')').text();
		var u_username = $('.u_username:eq('+formIndex+')').text();

			ConfirmActive('⚠️ Thông báo', 
			    	"Bỏ chặn người dùng này?<br>"+
			    	"Tên người dùng: <span class='alert_fullname'>"+u_fullname+"</span><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, u_username);
			
	});


	function ConfirmPermanentlyDeleted(title, msg, $true, $false, index, username) {
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
				url: 'admin/UserManagement/PermanentlyDeleted',
				type: 'POST',
				dataType: 'html',
				data: {
					"u_username": username
				},
			})
			.done(function(total_resp) {
				$('.show_f:eq('+index+')').hide('slide', { direction: 'left', easing: 'swing' }, 700);
				
				msg_hoang("Xóa người dùng khỏi hệ thống thành công ✔");
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
		var u_fullname = $('.u_fullname:eq('+formIndex+')').text();
		var u_username = $('.u_username:eq('+formIndex+')').text();

		ConfirmPermanentlyDeleted('⚠️ Xóa người dùng', 
			    	"<b>Thông tin người dùng</b> và tất cả các <b>dữ liệu thống kê liên quan</b> sẽ bị <u><b>xóa vĩnh viễn</b></u> khỏi hệ thống và không thể hoàn tác<br>"+
			    	"Tên người dùng: <span class='alert_fullname'>"+u_fullname+"</span><br>"+
			    	"Xác nhận?",
			    	 				'Đồng ý', 'Quay lại', formIndex, u_username);
			
	});























});