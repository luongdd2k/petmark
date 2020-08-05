$(document).ready(function() {
	
	var max_p = $('.product_mid_pay_available span').text()*1;
	$('#product_title_2 a').text($('#product_title_1').text().substring(0, $('#product_title_1').text().indexOf(" ")));
	$('#product_title_2 a').attr('href', 'SearchProduct?form_search='+$('#product_title_1').text().substring(0, $('#product_title_1').text().indexOf(" ")));
	$('#product_title_3 span').text(Math.round(10 + Math.random()*97) + ' đánh giá');
	$('#product_mid_pay_quantity').on('change keyup', function() {
	  	$(this).val($(this).val().replace(/[^0-9]/g, ''));
		if($(this).val()>max_p){
		  	$(this).val(max_p);
		}
	});
	$('#product_mid_pay button:eq(0)').click(function(event) {
		var quantity = $('#product_mid_pay_quantity').val();
		if(quantity==''){
			$('#product_mid_pay_quantity').val(1);
		} else if(quantity>1) $('#product_mid_pay_quantity').val(quantity*1-1);
		else if (quantity==0) $('#product_mid_pay_quantity').val(1);
	});
	$('#product_mid_pay button:eq(1)').click(function(event) {
		var quantity = $('#product_mid_pay_quantity').val();
		if(quantity==''){
			$('#product_mid_pay_quantity').val(1);
		} else if(quantity==max_p) $('#product_mid_pay_quantity').val(max_p);
		else if(quantity>=0) $('#product_mid_pay_quantity').val(quantity*1+1);
	});

	// $('._5n6h').text(Math.round(1+Math.random()*8)+','+Math.round(1+Math.random()*8)+'K');
	$('._2tga').attr('title', 'Thích ' + $('#product_title_1').text());
	var k; 
	var l_delay = true;
	var l = ('ph06760_java_5 __ '+$('#product_title_1').text());
	if($('#isLiked').text()=='true'){
		$('._2tga').addClass('active');
		k=true;
	}
	
        $('._2tga').click(function(event) {
        	if($('#login_user').val()!=""){
        		if(!k){
		        	$(this).addClass('active is_animating');
		        	setTimeout(function(){
			            $('._2tga').removeClass('is_animating');
			        }, 200);
			        $('._5n6h').text($('._5n6h').text()*1+1);
			        k=true;

		        } else {
		        	$(this).removeClass('active');
		        	$('._5n6h').text($('._5n6h').text()*1-1);
		        	k=false;
		        }

		        if(l_delay==true){
		        	l_delay=false;
		        	setTimeout(function(){
			        	var url_, logLike_;
			        	if(k){
			        		url_ = 'ViewProduct/addProductLike';
			        		logLike_ = '+1 Like';
			        	} else {
			        		url_ = 'ViewProduct/deleteProductLike';
			        		logLike_ = '-1 Like';
			        	}
						$.ajax({
							url: url_,
							type: 'POST',
							dataType: 'html',
							data: {
								"productID": $('#productID').val()
							},
						})
						.done(function(cart_resp) {
							console.log(logLike_);	
							console.log(cart_resp);	
						})
						.fail(function() {
							console.log("error");
						})
						.always(function() {
							console.log("complete");
							l_delay=true;
						});
					},1000);
		        }
        	} else {
        		$("body").toggleClass("sl_open");
				$('nav').toggleClass('nav_fix_open');
				$('.sl_overlay').toggleClass('visible');
				$('.sl_form').toggleClass('visible');
        	}
	        
	        
	    });
    

    function toggle_overlay () {
		$("body").toggleClass("sl_open");
		$('nav').toggleClass('nav_fix_open');
		$('.sl_overlay').toggleClass('visible');
		$('.sl_form').toggleClass('visible');
	}

    if($('#login_user').val()==""){
		$('#cart_count').text('0');
		$('#product_mid_pay_cart').click(function(event) {
			event.preventDefault();
			toggle_overlay();
			$("#sl_form_login")[0].reset();
			$("#sl_form_signup")[0].reset();

		});

	} 


	var isMsgShow = false;
	var timeOutMsg;
	function msg_hoang (msg_text) {
		clearTimeout(timeOutMsg);
		$('.msg_text').html(msg_text);
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
			clearTimeout(timeOutMsg);
			$('.msg_container').hide(400, function() {});
		});
		$('.msg_container').hover(function() {
			isMsgShow = true;
			clearTimeout(timeOutMsg);
		}, function() {
			timeOutMsg = setTimeout(function(){
				$('.msg_container').hide(400);
				isMsgShow = false;
			},5000);
		});
	}
	

	$.urlParam = function(name, param){
	    // var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
	    if (results==null) {
	       return null;
	    }
	    return decodeURI(results[1]) || 0;
	};


	$('#product_mid_pay_cart').click(function(event) {
		$.ajax({
			url: 'CartItem/AddToCart',
			type: 'POST',
			dataType: 'html',
			data: {
				"cart_product_id": $('#cart_hidden_id').val(),
				"cart_product_quantity": $('#product_mid_pay_quantity').val()
			},
		})
		.done(function(cart_resp) {

			$('#cart_product_id').val($.urlParam('cart_product_id', cart_resp));
			$('#cart_product_quantity').val($.urlParam('cart_product_quantity', cart_resp));
			$('#cart_count_total').val($.urlParam('totalQuantity', cart_resp));

			$('#cart_count').text($.urlParam('totalQuantity', cart_resp));
			// $('#cart_susscess').css('display', 'block');
			// $('#cart_susscess').text('Cập nhật giỏ hàng thành công! Số lượng: ' + $('#product_mid_pay_quantity').val());
			setTimeout(function(){
				$('#cart_susscess').css('display', 'none');
			},700);

			clearTimeout(timeOutMsg);
			msg_hoang('<span>Bạn đã chọn mua <b>'+$('#product_title_1').text()+'</b>, số lượng: <b>'+$('#product_mid_pay_quantity').val()+'</b></span>');

			console.log("success");	
			console.log(cart_resp);	
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
		
	});
	
	$('#f7_ny').css('background-image', 'none');
	
	if($('#login_user').val()==""){
		$('#commentProduct').after( "<div style='font-size: 110%; margin-bottom: 10px;'>Mời bạn <span id='loginToComment' style='text-decoration: underline; color: #450d72; cursor: pointer;'>Đăng nhập</span> để bình luận sản phảm</div>" );
		$('#loginToComment').click(function(event) {
			$("body").addClass("sl_open");
			$('nav').addClass('nav_fix_open');
			$('.sl_overlay').addClass('visible');
			$('.sl_form').addClass('visible');
		});
	}
	
	$(function() {
        // var saveComment = function(data) {
        //     // Convert pings to human readable format
        //     $(Object.keys(data.pings)).each(function(index, userId) {
        //         var fullname = data.pings[userId];
        //         var pingText = '@' + fullname;
        //         data.content = data.content.replace(new RegExp('@' + userId, 'g'), pingText);
        //     });

        //     return data;
        // };

        $('#comments-container').comments({ 
            profilePictureURL: $('#login_profilePictureURL').val(),
            textareaPlaceholderText: 'Mời bạn để lại bình luận',
            newestText: 'Gần đây',
            oldestText: 'Cũ nhất',
            popularText: 'Phổ biến nhất',
            sendText: 'Gửi bình luận',
            replyText: 'Trả lời',
            editText: 'Chỉnh sửa',
            editedText: 'Đã chỉnh sửa lúc',
            youText: 'Bạn',
            saveText: 'Cập nhật',
            deleteText: 'Xóa',
            viewAllRepliesText: 'Xem tất cả __replyCount__ bình luận',
            hideRepliesText: 'Ẩn bớt bình luận',
            noCommentsText: 'Chưa có bình luận nào, hãy là người đánh giá sản phẩm đầu tiên!',
            newText:'Quản trị viên',
            newTextVip: 'VIP',
            
            highlightColor: '#4700b3',
            enableEditing: true,
            enableDeleting: true,
            enableDeletingCommentWithReplies: false,
            enableAttachments: false,
            enableUpvoting: false,
            postCommentOnEnter: false,
            readOnly: $('#login_user').val()=="",
            currentFullname: $('#login_fullname').val(), //d
            currentUserIsAdmin: ($('#login_role').val()=="ROLE_ADMIN"||$('#login_role').val()=="ROLE_STAFF"), //
            currentUserId: 1, //
            roundProfilePictures: $('#login_user').val(),
            textareaRows: 2,
            enableHashtags: true,
            enablePinging: false,
            
            // searchUsers: function(term, success, error) {
            //     setTimeout(function() {
            //         success(usersArray.filter(function(user) {
            //             var containsSearchTerm = user.fullname.toLowerCase().indexOf(term.toLowerCase()) != -1;
            //             var isNotSelf = user.id != 1;
            //             return containsSearchTerm && isNotSelf;
            //         }));
            //     }, 500);
            // },
            getComments: function(success, error) {
			    $.ajax({
			            url: 'ViewProduct/getComments',
			            type: 'POST',
			            dataType: 'json',
			            data: {
			                "productID": $('#productID').val()
			            },
			        })
			        .done(function(commentsArray) {
			            console.log(commentsArray);
//			            var x = [{
//					   "id":1,
//					   "parent":null,
//					   "created":"2015-01-01",
//					   "modified":"2015-01-01",
//					   "content":"test",
//					   "profileURL":"/403",
//					   "profile_picture_url":"",
//					   "fullname":"Hoangnq",
//					   "created_by_admin":true,
//					   "is_new":true}];
//			            console.log(x);	
			            success(commentsArray);
			        })
			        .fail(function() {
			            console.log("error");
			        })
			        .always(function() {
			            console.log("complete");
			            l_delay = true;
			        });
			},
			timeFormatter: function(time) {
				if((time+"").includes("-")){
					var time2 = new Date(time);
//					console.log(time2.getTime());
					var millis = Date.now() - time2;
					var seconds = Math.floor(millis/1000);
					if(seconds >= 60) {
						var minutes = Math.floor(seconds/60);
						if(minutes >= 60){
							var hours = Math.floor(minutes/60);
							if(hours >= 24) {
								var days = Math.floor(hours/24);
								if(days >= 7){
									var weeks = Math.floor(days/7);
									if(weeks >= 4){
										return new Date(time2).toLocaleDateString();
									}
									return weeks + ' tuần trước';
								}
								return days + ' ngày trước';
							}
							return hours + ' giờ trước';
						}
				        return minutes + ' phút trước';
					} else if (seconds == 0){
						return 'Vừa xong';
					} else if (seconds < 0){
						return 0 + ' giây trước';
					}
					return seconds + ' giây trước';
//					return new Date(time).toLocaleDateString();
				} else{
					
					var millis = Date.now() - time;
					var seconds = Math.floor(millis/1000);
					if(seconds >= 60) {
						var minutes = Math.floor(seconds/60);
						if(minutes >= 60){
							var hours = Math.floor(minutes/60);
							if(hours >= 24) {
								var days = Math.floor(hours/24);
								if(days >= 7){
									var weeks = Math.floor(days/7);
									if(weeks >= 4){
										return new Date(time).toLocaleDateString();
									}
									return weeks + ' tuần trước';
								}
								return days + ' ngày trước';
							}
							return hours + ' giờ trước';
						}
				        return minutes + ' phút trước';
					} else if (seconds == 0){
						return 'Vừa xong';
					} else if (seconds < 0){
						return 0 + ' giây trước';
					}
					return seconds + ' giây trước';
					
				}
				
//				return new Date(time).toLocaleDateString();
		        
		    },
            postComment: function(data, success, error) {
                $.ajax({
					url: 'ViewProduct/postComment?productID='+$('#productID').val(),
					type: 'POST',
					contentType: "application/json",
					data: JSON.stringify(data)
				})
				.done(function(total_resp) {

					console.log(data);
                	success(data);
				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete posting comment");
				});
            },
            putComment: function(data, success, error) {
                $.ajax({
					url: 'ViewProduct/putComment?productID='+$('#productID').val(),
					type: 'POST',
					contentType: "application/json",
					data: JSON.stringify(data)
				})
				.done(function(total_resp) {

					console.log(data);
                	success(data);
				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete puting comment");
				});
            },
            deleteComment: function(data, success, error) {
                $.ajax({
					url: 'ViewProduct/deleteComment?productID='+$('#productID').val(),
					type: 'POST',
					contentType: "application/json",
					data: JSON.stringify(data)
				})
				.done(function(total_resp) {

					
                	success();
				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete delete comment");
				});





            },
            // upvoteComment: function(data, success, error) {
            //     setTimeout(function() {
            //         success(data);
            //     }, 500);
            // },
            // uploadAttachments: function(dataArray, success, error) {
            //     setTimeout(function() {
            //         success(dataArray);
            //     }, 500);
            // },
        });
    });

















});