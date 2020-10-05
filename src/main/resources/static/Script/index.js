
$(document).ready(function() {
	var lastScrollTop = $(window).scrollTop();
	var key_delay = true;

	if ($(window).scrollTop() > 50) {
	    $('nav').addClass('fixed');
	    $('#firstHeader').css('margin-bottom', '99px');
	} else {
	    $('nav').removeClass('fixed');
	    $('#firstHeader').css('margin-bottom', '0px');
	}
	if ($(window).scrollTop() > 610) {
	        $('nav').hide('slide', { direction: 'up', easing: 'swing' }, 1);
	}

	var footer_scale = 3.62;
	if(($('#footer_000').innerWidth()/$('#footer_000').innerHeight()).toFixed(1) != footer_scale.toFixed(1)){
		$('#footer_000').innerHeight($('#footer_000').innerWidth()/footer_scale);
	}
	$('nav').width($('body').width());
	
	$(window).resize(function(event) {
		if(($('#footer_000').innerWidth()/$('#footer_000').innerHeight()).toFixed(1) != footer_scale.toFixed(1)){
			$('#footer_000').innerHeight($('#footer_000').innerWidth()/footer_scale);
		}
		$('nav').width($('body').width());
		$(window).scrollLeft(99999);
		var sleft = $(window).scrollLeft();
		$(window).scrollLeft(sleft/2);
		if($('body').innerHeight()>4800){
			$('#footer_000').innerHeight('82vh');
			$('nav').width($('body').width());
		}
	});
		if($('body').innerHeight()>4800){
			$('#footer_000').innerHeight('82vh');
			$('nav').width($('body').width());
		}

	if(!window.navigator.onLine){
		$('#footer_maps iframe').css('visibility', 'hidden');
	}

	
	// alert(window.navigator.onLine);

	$(window).scroll(function(event) {
		var st = $(this).scrollTop();
		if(st>50){
			$('nav').addClass('fixed');
			$('#firstHeader').css('margin-bottom', '99px');
		} else {
			$('nav').removeClass('fixed');
			$('#firstHeader').css('margin-bottom', '0px');
		}

		if(st<150){
			$('nav').show('slide', { direction: 'up', easing: 'swing' }, 1);
		}
		
		if(key_delay==true){
			key_delay=false;
			setTimeout(function(){
				if (st>610 && st<lastScrollTop) {
				        $('nav').hide('slide', { direction: 'up', easing: 'swing' }, 300);
				}
				if (st<=610 && st>lastScrollTop) {
						$('nav').show('slide', { direction: 'up', easing: 'swing' }, 250);
				}
				key_delay=true;
			}, 300);	
		}
		lastScrollTop = st;

		if(st<50){
			$('#scrollTop').fadeOut();
		} else {
			$('#scrollTop').fadeIn();
		}
	});

	setInterval(function(){
		if ($(window).scrollTop() > 610) {
	        $('nav').hide('slide', { direction: 'up', easing: 'swing' }, 250);
		} else {
			$('nav').show('slide', { direction: 'up', easing: 'swing' }, 250);
		}

	}, 700);

	$('img').on('dragstart', function(event) { event.preventDefault(); });

	$('.icon-10').hover(function() {
	    $('.facebook svg').attr('viewBox', '-55 0 512 512');
	}, function() {
	    $('.facebook svg').attr('viewBox', '0 0 512 512');
	});


	$('.icon-15').hover(function() {
		$('#use15_1').attr('fill', 'url(#gradient1)');
		$('#use15_2').attr('fill', 'url(#gradient2)');
		$('#circle_1').attr({
			'r': '32',
			'stroke': '#fff',
			'stroke-width': '13'
		});
		$('#circle_2').attr({
			'cx': '140',
			'cy': '62',
			'r': '9',
			'fill': '#fff'
		});
	}, function() {
		$('#use15_1').attr('fill', 'url(#gradient11)');
		$('#use15_2').attr('fill', 'url(#gradient22)');
		$('#circle_1').attr({
			'r': '40',
			'stroke': '#623FA2',
			'stroke-width': '25'
		});
		$('#circle_2').attr({
			'cx': '155',
			'cy': '47',
			'r': '12',
			'fill': '#623FA2'
		});
	});
	
	$('#cbo_sort_product').change(function(event) {

		$(location).attr('href', 'changeSortValue?sortValue='+$(this).val());

	});
	try {
		$('#cbo_sort_product option[value='+$('#sortValue').text()+']').attr('selected','selected');
	} catch(e) {}
		
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

	if($('title').text()=="Hoangnq Shop"){
		$('#all_top_banner_x3 img:eq(0)').attr('src', 'Image/all_top_banner_x3/large/l' + Math.round(1 + Math.random() * 6) + '.jpg');
		$('#all_top_banner_x3 img:eq(1)').attr('src', 'Image/all_top_banner_x3/small/s' + Math.round(1 + Math.random() * 5) + '.jpg');
		$('#all_top_banner_x3 img:eq(2)').attr('src', 'Image/all_top_banner_x3/small/s' + Math.round(7 + Math.random() * 4) + '.jpg');

		var pageIndex = 1;
		var sortType = $('#cbo_sort_product').val();
		console.log('sortType val: ' + $('#cbo_sort_product').val());
		$('.more_text:eq(0)').click(function(event) {

	    	$.ajax({
	            url: 'getPageableProduct',
	            type: 'POST',
	            dataType: 'json',
	            // contentType : 'application/json',
	            data: {
	                'sortType': sortType,
	                'pageIndex': pageIndex
	            },
	        })
	        .done(function(cart_resp) {
	            pageIndex = pageIndex * 1 + 1;
	            console.log(cart_resp);
	            cart_resp.forEach(function(product, index) {
	                // console.log(product.id + ' - ' + product.name + ' - ' + product.priceSale + ' - ' + product.category.name);
	                $('.shop:eq(0)').append('<a href="ViewProduct/' + product.id + '" class="item_shop" style="display: none;">' +
	                    '<img src="' + product.imagePath + '" class="center">' +
	                    '<div class="item_title center">' + product.name + '</div>' +
	                    '<div class="price center">' +
	                    '<span class="p_sale">' + getDisplayPrice(product.priceSale) + '</span>' +
	                    '<span class="p_ori">' + getDisplayPrice(product.price) + '</span>' +
	                    '<span class="p_per">' + getPer(product.priceSale, product.price) + '</span>' +
	                    '</div></a>');
	                $('.item_shop').fadeIn(600);

	            });
	            if(cart_resp.length==0){
	            	$('.more_text:eq(0)').text('Cuối trang');
	            	$( '.more_text:eq(0)').unbind( "click" );
	            }
	        })
	        .fail(function() {
	            console.log("error");
	        })
	        .always(function() {
	            console.log("complete getPageableProduct");
	        });
		});
	}

	function getDisplayPrice (price) {
		var s0 = price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,').replace(/,/g, '.');
		var s1 = s0.substring(0, s0.length-3);

		return s1+' ₫';
	}

	function getPer (priceSale, price) {
		var per0 = (100-Math.round((priceSale/price)*100));
		if(per0<0) per0=0;
		else if(per0>100) per0=100;
		return '-'+per0+'%';
	}




		var bna_a  = ["_151a8f.png", "_E3001B.png", "_000000.png", "_378288.png"];
		var bna_r = Math.round(1 + Math.random() * 3);

		try {
	        while(bna_r==localStorage.getItem('currentR')) bna_r = Math.round(1+Math.random()*3);
	    } catch ( e ) {}

		$('#bna img').attr('src', 'Image/bna/bna_'+bna_r+bna_a[bna_r-1]);
		
		try {
			$("#bna").css("background", "#" + $('#bna img').attr('src').substring($('#bna img').attr('src').lastIndexOf("_")+1, $('#bna img').attr('src').lastIndexOf("_")+7));
		} catch ( e ) {}
		
		
		setTimeout(function () {
			$('#bna img').fadeOut(0);
			$('#bna img').removeClass('invisible');
			$('#bna img').fadeIn(330);
		}, 320);

		try {
	        localStorage.setItem('currentR',bna_r);
	    } catch ( e ) {}
	

	
	$('#scrollTop').click(function(event) {
		// window.scroll(0 ,500);
		$("html").animate({ scrollTop: 0 }, 470);
		//zzz
		// $(window).scrollTop(0);

	});

	// var urlPage = window.location.pathname;

	$('#urlPage').val(window.location.href);
	$('#urlPage2').val(window.location.href);

	// $('.ush').hide();
	if($('#login_user').val()!=""){
		console.log($('#login_user').val());
		console.log("login check");
		$('.right_span_1').removeClass('signup');
		$('.right_span_1 span').text('Xin chào ' + $('#login_fullname').val());
		$('.right_span_2').removeClass('login');
		$('.right_span_2').html('<a href="CheckLogout">Đăng xuất</a>');
		$('.right_span_1').addClass('user_menu');
		// $('.ush').addClass('user_menu_tab');
		$('.right_span_1').hover(function() {
			$('.user_menu_tab').css('display', 'block');
		}, function() {
			$('.user_menu_tab').css('display', 'none');
		});

	} else {
		$('#cart_count').text('0');
		$('#cart').attr('href', '#');
		$('#cart').click(function(event) {
			event.preventDefault();
			toggle_overlay();
			$("#sl_form_login")[0].reset();
			$("#sl_form_signup")[0].reset();
			$(".msgForm").remove();
		});
		// $('.ush').removeClass('user_menu_tab');
	}







	function toggle_overlay () {
		$("body").toggleClass("sl_open");
		$('nav').toggleClass('nav_fix_open');
		$('.sl_overlay').toggleClass('visible');
		$('.sl_form').toggleClass('visible');
	}

	$('.sl_back').click(function(event) {
		toggle_overlay();
	});

	
	$('.signup, .login, .sl_overlay').click(function(event) {
		toggle_overlay();
		$("#sl_form_login")[0].reset();
		$("#sl_form_signup")[0].reset();
		$(".msgForm").remove();
	});

	$('.login').click(function(event) {
		$('.sl_form').css('transition', 'none');
		open_login_form();
		$('#sl_form_login').css('display', 'block');
		$('#sl_form_signup').css('display', 'none');
	});


	$('.signup').click(function(event) {
		$('.sl_form').css('transition', 'none');
		open_signup_form();
		$('#sl_form_signup').css('display', 'block');
		$('#sl_form_login').css('display', 'none');
	});

	

	function open_login_form () {
		$('.sl_form').css('height', '350px');
		$('#sl_tab_login').css({
			'width': '70%',
			'background': '#fff',
			'box-shadow' : 'none',
			'font-size' : '140%',
			'color' : '#000'
		});
		$('#sl_tab_signup').css({
			'width': '30%',
			'background': '#f5f5f5',
			'box-shadow' : 'inset 3px -3px 4px -2px rgba(0,0,0,0.2)',
			'font-size' : '120%',
			'color' : '#0095ff'
		});
		$('#sl_note b').text('Đăng nhập');
	}

	function open_signup_form () {
		$('.sl_form').css('height', '577px');
		$('#sl_tab_signup').css({
			'width': '70%',
			'background': '#fff',
			'box-shadow' : 'none',
			'font-size' : '140%',
			'color' : '#000'
		});
		$('#sl_tab_login').css({
			'width': '30%',
			'background': '#f5f5f5',
			'box-shadow' : 'inset -3px -3px 4px -2px rgba(0,0,0,0.2)',
			'font-size' : '120%',
			'color' : '#0095ff'
		});
		$('#sl_note b').text('Đăng ký');
	}


	$('#sl_tab_login').click(function(event) {
		$('.sl_form').css('transition', 'height 0.4s');
		open_login_form();
		$('#sl_form_login').css('display', 'block');
		$('#sl_form_signup').css('display', 'none');
	});


	$('#sl_tab_signup').click(function(event) {
		$('.sl_form').css('transition', 'height 0.4s');
		open_signup_form();
		$('#sl_form_signup').css('display', 'block');
		$('#sl_form_login').css('display', 'none');
	});

	$('#sl_signup_gt').focus(function(event) {
		$('#gt_option').attr('disabled', '');
	});
	
	$('#sl_signup_gt').change(function(event) {
		if($(this).val()==0){
			$('.input_select').css('color', '#000');
			$('.slmf').attr('src', 'Image/sl_con/male-sign.svg');
			$('.slmf').removeClass('slp slg');
		}
		if($(this).val()==1){
			$('.input_select').css('color', '#000');
			$('.slmf').attr('src', 'Image/sl_con/female-sign.svg');
			$('.slmf').addClass('slp');
		}
	});

	$('#sl_login_username, #sl_signup_username, #sl_signup_email').on('change keyup', function() {
	  	$(this).val($(this).val().replace(/[ ]/g, ''));
	});

	
	$('#sl_signup_phone').on('change keyup', function() {
	  	$(this).val($(this).val().replace(/[^0-9]/g, ''));
	  	if ($(this).val().length>10) $(this).val($(this).val().substring(0,10));
	});


	$.urlParam = function(name, param){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};


	$('.sl_submit:eq(0)').click(function(event) {
		$('.sl_form_input span').text("");
		event.preventDefault();
		$.ajax({
			url: 'isLoginFail',
			type: 'POST',
			dataType: 'html',
			data: {
				"username": $('#username').val(),
				"password": $('#password').val(),
				"currentPath": $('#urlPage').val()
			},
		})
		.done(function(login_resp) {
			console.log(login_resp);
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

	$('#sl_signup_name').on('change keyup', function() {
		for(var i=0; i<=9; i++){
			$(this).val($(this).val().replace(i,""));
		}
	});


	$('.sl_submit:eq(1)').click(function(event) {
		var checkVld = true;
		var checkUSERNAME=true;
		$('.sl_form_input span').text("");

		$.ajax({
			url: 'CheckUser',
			type: 'POST',
			dataType: 'html',
			data: {
				"username_signup": $('#sl_signup_username').val(),
				"urlPage2": $('#urlPage2').val(),
			},
		})
		.done(function(user_resp) {

			if($.urlParam('isDuplicate', user_resp)=="false"){
				checkUSERNAME=true;
				checkVld = true;
			} else if($.urlParam('isDuplicate', user_resp)=="true") {
				checkUSERNAME=false;
				console.log("if isDuplicate==True; checkUSERNAME= "+checkUSERNAME);
				checkVld = false;
			}
				//
				if($('#sl_signup_username').val()==""){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(0)').after('<span class="msgForm">Không để trống Username</span>');

					checkVld = false;
				} else if(/[^A-Za-z0-9]/.test($('#sl_signup_username').val())==true){
					$(".msgForm").remove();	
					$('.sl_form_signup_row:eq(0)').after('<span class="msgForm">Tên Username không hợp lệ!</span>');
					
					checkVld = false;
				} else if(checkUSERNAME==false){
					$(".msgForm").remove();	
					$('.sl_form_signup_row:eq(0)').after('<span class="msgForm">Vui lòng chọn tên Username khác!</span>');
					
					checkVld = false;
				} else if($('#sl_signup_username').val().length>15){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(0)').after('<span class="msgForm">Username phải nhỏ hơn 16 ký tự</span>');
					
					checkVld = false;
				} else if($('#sl_signup_password').val().trim().length<8){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(1)').after('<span class="msgForm">Password phải từ 8 ký tự trở lên</span>');
					
					checkVld = false;
				} else if($('#sl_signup_password').val().trim().length>100){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(1)').after('<span class="msgForm">Password không được lớn hơn 100 ký tự</span>');
					
					checkVld = false;
				} else if ($('#sl_signup_re_password').val()!=$('#sl_signup_password').val()) {
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(2)').after('<span class="msgForm">Xác nhận Password không đúng</span>');
					
					checkVld = false;
				} else if ($('#sl_signup_name').val().trim()=="") {
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(3)').after('<span class="msgForm">Không để trống tên</span>');

					checkVld = false;
				} else if ($('#sl_signup_name').val().match(/\d+/g)!=null){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(3)').after('<span class="msgForm">Tên không hợp lệ</span>');
					
					checkVld = false;
				} else if($('#sl_signup_name').val().trim().length>50){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(3)').after('<span class="msgForm">Tên không được lớn hơn 50 ký tự</span>');
					
					checkVld = false;
				} else if ($('#sl_signup_gt').val()==null || $('#sl_signup_gt').val()<0) {
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(4)').after('<span class="msgForm">Chưa chọn giới tính</span>');

					checkVld = false;
				} else if (!$('#sl_signup_email').val().match(/\w{1,}@\w{1,}\.\w{1,}/)) {
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(5)').after('<span class="msgForm">Email không hợp lệ</span>');

					checkVld = false;
				} else if ($('#sl_signup_email').val().trim().length>50) {
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(5)').after('<span class="msgForm">Email không được lớn hơn 50 ký tự</span>');

					checkVld = false;
				} else if ($('#sl_signup_phone').val().length<8){
					$(".msgForm").remove();
					$('.sl_form_signup_row:eq(6)').after('<span class="msgForm">Số điện thoại không hợp lệ</span>');
					
					checkVld = false;
				} else if ($('#sl_signup_name').val().length>49) {
					$('#sl_signup_name').val($('#sl_signup_name').val().trim().substring(0,49));
				} else if ($('#sl_signup_email').val().length>49) {
					$('#sl_signup_email').val($('#sl_signup_email').val().trim().substring(0,49));
				}
				if(checkVld) {
					$('#sl_signup_gt2').val($('#sl_signup_gt').val());
					$('.sl_form_input span').text("");
					$('.sl_form_signup_row:eq(6)').after('<span class="msgForm" style="color: #00e600; font-size: 115%;">Đăng ký thành công!</span>');
					
					setTimeout(function(){
						$('#sl_form_signup').submit();
					}, 	0);
					
				} else event.preventDefault();






			
			
			console.log("success");	
			console.log(user_resp);	
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});

		console.log("check: "+ checkUSERNAME);
//		event.preventDefault();
//		
//		
		
			

		

		
	});



	$('#sl_note img').click(function(event) {
//		$('.sl_form_login_row:eq(0)').after('<span>Không hợp lệ</span>');
//		$('.sl_form_login_row:eq(1)').after('<span>Tên đăng nhập hoặc mật khẩu không đúng</span>');

		// $('.sl_form_signup_row:eq(0)').after('<span>Không hợp lệ</span>');
		// $('.sl_form_signup_row:eq(1)').after('<span>Không hợp lệ</span>');
		// $('.sl_form_signup_row:eq(2)').after('<span>Không hợp lệ</span>');
		// $('.sl_form_signup_row:eq(3)').after('<span>Không hợp lệ</span>');
		// $('.sl_form_signup_row:eq(4)').after('<span>Không hợp lệ</span>');
		// $('.sl_form_signup_row:eq(5)').after('<span>Không hợp lệ</span>');
		// $('.sl_form_signup_row:eq(6)').after('<span>Không hợp lệ</span>');

	});
	//func

	$('.sl_submit:eq(1)').click(function(event) {
		
	});


	if($('#login_role').val()!="ROLE_ADMIN" && $('#login_role').val()!="ROLE_STAFF"){
		$('#qlsp_admin').css('display', 'none');
		$('#qlsp_admin_2').css('display', 'none');
	} else if($('#login_role').val()!="ROLE_ADMIN"){
		$('#qlsp_admin_2').css('display', 'none');
	}


});



 
