$('.sl_submit:eq(0)').click(function(event) {
		$('.sl_form_input span').text("");
		event.preventDefault();
		$.ajax({
			url: 'isLoginFail',
			type: 'POST',
			dataType: 'html',
			data: {
				"username": $('#username').val(),
				"password": $('#pass').val(),
				"currentPath": $('#urlPage').val()
			},
		})
		.done(function(login_resp) {
			console.log(login_resp);
			console.log($.urlParam('isLoginFail'));
			if($.urlParam('isLoginFail', login_resp)=="1"){
				$('.abc:eq(1)').after('<span class="msgForm">Đăng nhập thất bại!</span>');
				event.preventDefault();
			} else if($.urlParam('isLoginFail', login_resp)=="0"){
				$('.abc:eq(1)').after('<span class="msgForm" style="color: #00e600; font-size: 115%;">Đăng nhập thành công!</span>');
				
				setTimeout(function(){
					$('#sl_form_login').submit();
				},700);
			}
			
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});


	});




 
