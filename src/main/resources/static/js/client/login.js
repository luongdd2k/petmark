$.urlParam = function(name, param){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(param);
    if (results==null) {
        return null;
    }
    return decodeURI(results[1]) || 0;
};

$('.btn')
    .click(
        function(event) {
            $('.sl_form_input span').text("");
            event.preventDefault();
            $
                .ajax({
                    url : 'isLoginFail',
                    type : 'POST',
                    dataType : 'html',
                    data : {
                        "username" : $('#username').val(),
                        "password" : $('#pass').val(),
                        "currentPath" : $('#urlPage').val()
                    },
                })
                .done(
                    function(login_resp) {
                        console.log(login_resp);
                        if ($.urlParam('isLoginFail',
                            login_resp) == "1") {
                            $('.abc')
                                .after(
                                    '<span class="msgForm" style="color: #ff4646; font-size: 115%; font-weight: 500;">Sai tên đăng nhập hoặc mật khẩu!!</span>');
                            event.preventDefault();
                        } else if ($.urlParam(
                            'isLoginFail', login_resp) == "0") {
                            $('.abc')
                                .after(
                                    '<span class="msgForm" style="color: #00e600; font-size: 115%;font-weight: 500;">Đăng nhập thành công!</span>');

                            setTimeout(function() {
                                $('#sl_form_login')
                                    .submit();
                            }, 700);
                        }

                    }).fail(function() {
                console.log("error");
            }).always(function() {
                console.log("complete");
            });

        });
