<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<link rel="stylesheet" type="text/css"    href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

<div class="userpage-sidebar">
    <div class="div-left">
        <div class="user-page-brief">
            <a href="javascript:" class="user-page-brief__avatar">
                <div class="petmark-avatar">
                    <div class="petmark-avatar__placeholder">
                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-headshot">
                            <g>
                                <circle cx="7.5" cy="4.5" fill="none" r="3.8" stroke-miterlimit="10"></circle>
                                <path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none" stroke-linecap="round" stroke-miterlimit="10"></path>
                            </g>
                        </svg>
                    </div>
                    <img src="${account.getImagePath() }" alt="Ảnh thẻ" class="petmark-avatar__img" />
                </div>
            </a>
            <div class="user-page-brief__right">
                <div class="user-page-brief__username">${account.getUsername() }</div>
                <div>
                    <a href="" class="user-page-brief__edit">
                        <svg width="12" height="12" viewBox="0 0 12 12" xmlns="http://www.w3.org/2000/svg" style="margin-right: 4px;">
                            <path d="M8.54 0L6.987 1.56l3.46 3.48L12 3.48M0 8.52l.073 3.428L3.46 12l6.21-6.18-3.46-3.48" fill="#9B9B9B" fill-rule="evenodd"></path>
                        </svg> Sửa hồ sơ
                    </a>
                </div>
            </div>
        </div>
        <div class="userpage-sidebar-menu">
            <div class="stardust-dropdown stardust-dropdown--open">
                <div class="stardust-dropdown__item-header">
                    <a href="show-account" class="userpage-sidebar-menu-entry">
                        <div class="userpage-sidebar-menu-entry__icon" style="background-color: rgb(255, 193, 7);">
                            <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon user-page-sidebar-icon icon-headshot">
                                <g>
                                    <circle cx="7.5" cy="4.5" fill="none" r="3.8" stroke-miterlimit="10"></circle>
                                    <path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none" stroke-linecap="round" stroke-miterlimit="10"></path>
                                </g>
                            </svg>
                        </div>
                        <div class="userpage-sidebar-menu-entry__text">Tài khoản của tôi</div>
                    </a>
                </div>
                <div class="stardust-dropdown__item-body stardust-dropdown__item-body--open" id="acount-hide" style="opacity: 1;">
                    <div class="userpage-sideber-menu__subsection">
                        <a href="show-account" class="_17BcjA _1EUbVp">
                            <span class="_2ilxaJ" id="ho-so">Hồ sơ</span>
                        </a>
                        <a href="show-change-pass" class="_17BcjA">
                            <span class="_2ilxaJ" id="change-pass">Đổi mật khẩu</span>
                        </a>
                    </div>
                </div>
            </div>
            <a href="show-all-order" class="userpage-sidebar-menu-entry">
                <div class="userpage-sidebar-menu-entry__icon" style="background-color: rgb(68, 181, 255);">
                    <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon user-page-sidebar-icon " style="fill: rgb(255, 255, 255);">
                        <g>
                            <rect fill="none" height="10" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" width="8" x="4.5" y="1.5"></rect>
                            <polyline fill="none" points="2.5 1.5 2.5 13.5 12.5 13.5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"></polyline>
                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="6.5" x2="10.5" y1="4" y2="4"></line>
                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="6.5" x2="10.5" y1="6.5" y2="6.5"></line>
                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="6.5" x2="10.5" y1="9" y2="9"></line>
                        </g>
                    </svg>
                </div>
                <div class="userpage-sidebar-menu-entry__text">Đơn Hàng</div>
            </a>
            <div class="stardust-dropdown__item-body stardust-dropdown__item-body--open" id="order-hide" style="opacity: 1;">
                <div class="userpage-sideber-menu__subsection">
                    <a href="show-all-order" class="_17BcjA _1EUbVp">
                        <span class="_2ilxaJ" id="all-order">Tất cả đơn hàng</span>
                    </a>
                    <a href="show-waiting-order" class="_17BcjA">
                        <span class="_2ilxaJ" id="waiting">Chờ xác nhận</span>
                    </a>
                    <a href="show-waiting-delevery" class="_17BcjA">
                        <span class="_2ilxaJ" id="wait-delevery">Chờ giao hàng</span>
                    </a>
                    <a href="show-delevering" class="_17BcjA">
                        <span class="_2ilxaJ" id="delevering-order">Đang giao hàng</span>
                    </a>
                    <a href="show-delivered" class="_17BcjA">
                        <span class="_2ilxaJ" id="done-order">Đã giao</span>
                    </a>
                    <a href="show-cancel-order" class="_17BcjA">
                        <span class="_2ilxaJ" id="cancel-order">Đã hủy</span>
                    </a>
                </div>
            </div>
            <a href="show-deposit" class="userpage-sidebar-menu-entry">
                <div class="userpage-sidebar-menu-entry__icon" style="background-color: rgb(255, 68, 155);">
                    <svg class="svg-icon shopee-svg-icon user-page-sidebar-icon " viewBox="0 0 20 20">
                        <path fill="none" d="M5.109,8.392H4.249c-0.238,0-0.43,0.193-0.43,0.431c0,0.238,0.192,0.431,0.43,0.431h0.861c0.238,0,0.43-0.193,0.43-0.431C5.54,8.585,5.347,8.392,5.109,8.392 M4.249,4.088h11.19c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H4.249c-0.238,0-0.43,0.192-0.43,0.431C3.818,3.896,4.011,4.088,4.249,4.088 M2.527,5.81H17.16c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H2.527c-0.238,0-0.43,0.192-0.43,0.431C2.097,5.617,2.289,5.81,2.527,5.81 M18.452,6.67H1.236c-0.476,0-0.861,0.385-0.861,0.861v8.608c0,0.475,0.385,0.86,0.861,0.86h17.216c0.475,0,0.86-0.386,0.86-0.86V7.531C19.312,7.056,18.927,6.67,18.452,6.67 M1.666,7.531c0.238,0,0.431,0.192,0.431,0.431c0,0.238-0.192,0.43-0.431,0.43c-0.238,0-0.43-0.192-0.43-0.43C1.236,7.724,1.428,7.531,1.666,7.531 M1.666,16.14c-0.238,0-0.43-0.192-0.43-0.431c0-0.237,0.192-0.431,0.43-0.431c0.238,0,0.431,0.193,0.431,0.431C2.097,15.947,1.904,16.14,1.666,16.14 M18.021,16.14c-0.238,0-0.431-0.192-0.431-0.431c0-0.237,0.192-0.431,0.431-0.431s0.431,0.193,0.431,0.431C18.452,15.947,18.26,16.14,18.021,16.14 M18.452,14.496c-0.136-0.048-0.279-0.078-0.431-0.078c-0.714,0-1.291,0.578-1.291,1.291c0,0.151,0.03,0.295,0.078,0.431H2.878c0.048-0.136,0.079-0.279,0.079-0.431c0-0.713-0.579-1.291-1.292-1.291c-0.151,0-0.295,0.03-0.43,0.078V9.174c0.135,0.048,0.279,0.079,0.43,0.079c0.713,0,1.292-0.578,1.292-1.291c0-0.152-0.031-0.295-0.079-0.431h13.93C16.761,7.667,16.73,7.81,16.73,7.962c0,0.713,0.577,1.291,1.291,1.291c0.151,0,0.295-0.031,0.431-0.079V14.496z M18.021,8.392c-0.238,0-0.431-0.192-0.431-0.43c0-0.238,0.192-0.431,0.431-0.431s0.431,0.192,0.431,0.431C18.452,8.2,18.26,8.392,18.021,8.392 M15.438,14.418h-0.86c-0.238,0-0.431,0.192-0.431,0.43c0,0.238,0.192,0.431,0.431,0.431h0.86c0.238,0,0.431-0.192,0.431-0.431C15.869,14.61,15.677,14.418,15.438,14.418 M9.844,8.392c-1.901,0-3.443,1.542-3.443,3.443s1.542,3.443,3.443,3.443s3.443-1.542,3.443-3.443S11.745,8.392,9.844,8.392 M11.233,13.271c-0.071,0.162-0.169,0.297-0.292,0.403c-0.124,0.108-0.268,0.189-0.434,0.246c-0.166,0.058-0.295,0.089-0.488,0.097v0.4H9.673v-0.4c-0.208-0.004-0.35-0.037-0.522-0.099c-0.174-0.063-0.322-0.151-0.445-0.267s-0.219-0.257-0.286-0.424c-0.067-0.168-0.099-0.361-0.095-0.579h0.659c-0.003,0.256,0.052,0.459,0.168,0.608c0.115,0.147,0.257,0.226,0.522,0.233v-1.417c-0.158-0.042-0.265-0.094-0.422-0.154c-0.156-0.061-0.297-0.139-0.422-0.234c-0.125-0.095-0.226-0.215-0.303-0.36c-0.077-0.144-0.115-0.323-0.115-0.538c0-0.187,0.035-0.352,0.106-0.494c0.072-0.143,0.168-0.261,0.289-0.357c0.121-0.096,0.261-0.168,0.419-0.22C9.383,9.665,9.5,9.64,9.673,9.64V9.256h0.348V9.64c0.173,0,0.287,0.023,0.441,0.07c0.154,0.047,0.288,0.117,0.401,0.211c0.114,0.093,0.204,0.212,0.272,0.356c0.067,0.145,0.101,0.312,0.101,0.503h-0.659c-0.008-0.199-0.059-0.351-0.153-0.457c-0.095-0.105-0.197-0.158-0.404-0.158V11.4c0.173,0.048,0.293,0.103,0.459,0.165c0.166,0.062,0.312,0.142,0.439,0.239c0.127,0.098,0.229,0.219,0.306,0.363c0.077,0.144,0.116,0.321,0.116,0.532C11.341,12.919,11.305,13.109,11.233,13.271M10.458,12.332c-0.067-0.051-0.143-0.092-0.228-0.123c-0.085-0.031-0.123-0.06-0.21-0.082v1.363c0.208-0.016,0.329-0.076,0.462-0.185c0.133-0.107,0.199-0.277,0.199-0.512c0-0.109-0.02-0.2-0.061-0.275C10.581,12.444,10.526,12.383,10.458,12.332 M9.069,10.74c0,0.094,0.019,0.174,0.058,0.241c0.039,0.066,0.087,0.122,0.148,0.169c0.06,0.047,0.128,0.085,0.208,0.114s0.109,0.054,0.19,0.073v-1.171c-0.208,0-0.32,0.044-0.434,0.132C9.126,10.386,9.069,10.533,9.069,10.74"></path>
                    </svg>
                </div>
                <div class="userpage-sidebar-menu-entry__text">Đặt cọc</div>
            </a>
            <div class="stardust-dropdown__item-body stardust-dropdown__item-body--open" id="depost-hide" style="opacity: 1;">
                <div class="userpage-sideber-menu__subsection">
                    <a href="javascript:" class="_17BcjA _1EUbVp">
                        <span class="_2ilxaJ" id="all-depost">Tất cả đơn đặt cọc</span>
                    </a>
                    <a href="show-cancel-deposit" class="_17BcjA">
                        <span class="_2ilxaJ" id="cancel-depost">Đã hủy cọc</span>
                    </a>
                    </a>
                </div>
            </div>
            <a href="show-blog" class="userpage-sidebar-menu-entry">
                <div class="userpage-sidebar-menu-entry__icon" style="background-color: rgb(52, 223, 75);">
                    <svg class="svg-icon shopee-svg-icon user-page-sidebar-icon " viewBox="0 0 20 20">
                    <path fill="none" d="M5.109,8.392H4.249c-0.238,0-0.43,0.193-0.43,0.431c0,0.238,0.192,0.431,0.43,0.431h0.861c0.238,0,0.43-0.193,0.43-0.431C5.54,8.585,5.347,8.392,5.109,8.392 M4.249,4.088h11.19c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H4.249c-0.238,0-0.43,0.192-0.43,0.431C3.818,3.896,4.011,4.088,4.249,4.088 M2.527,5.81H17.16c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H2.527c-0.238,0-0.43,0.192-0.43,0.431C2.097,5.617,2.289,5.81,2.527,5.81 M18.452,6.67H1.236c-0.476,0-0.861,0.385-0.861,0.861v8.608c0,0.475,0.385,0.86,0.861,0.86h17.216c0.475,0,0.86-0.386,0.86-0.86V7.531C19.312,7.056,18.927,6.67,18.452,6.67 M1.666,7.531c0.238,0,0.431,0.192,0.431,0.431c0,0.238-0.192,0.43-0.431,0.43c-0.238,0-0.43-0.192-0.43-0.43C1.236,7.724,1.428,7.531,1.666,7.531 M1.666,16.14c-0.238,0-0.43-0.192-0.43-0.431c0-0.237,0.192-0.431,0.43-0.431c0.238,0,0.431,0.193,0.431,0.431C2.097,15.947,1.904,16.14,1.666,16.14 M18.021,16.14c-0.238,0-0.431-0.192-0.431-0.431c0-0.237,0.192-0.431,0.431-0.431s0.431,0.193,0.431,0.431C18.452,15.947,18.26,16.14,18.021,16.14 M18.452,14.496c-0.136-0.048-0.279-0.078-0.431-0.078c-0.714,0-1.291,0.578-1.291,1.291c0,0.151,0.03,0.295,0.078,0.431H2.878c0.048-0.136,0.079-0.279,0.079-0.431c0-0.713-0.579-1.291-1.292-1.291c-0.151,0-0.295,0.03-0.43,0.078V9.174c0.135,0.048,0.279,0.079,0.43,0.079c0.713,0,1.292-0.578,1.292-1.291c0-0.152-0.031-0.295-0.079-0.431h13.93C16.761,7.667,16.73,7.81,16.73,7.962c0,0.713,0.577,1.291,1.291,1.291c0.151,0,0.295-0.031,0.431-0.079V14.496z M18.021,8.392c-0.238,0-0.431-0.192-0.431-0.43c0-0.238,0.192-0.431,0.431-0.431s0.431,0.192,0.431,0.431C18.452,8.2,18.26,8.392,18.021,8.392 M15.438,14.418h-0.86c-0.238,0-0.431,0.192-0.431,0.43c0,0.238,0.192,0.431,0.431,0.431h0.86c0.238,0,0.431-0.192,0.431-0.431C15.869,14.61,15.677,14.418,15.438,14.418 M9.844,8.392c-1.901,0-3.443,1.542-3.443,3.443s1.542,3.443,3.443,3.443s3.443-1.542,3.443-3.443S11.745,8.392,9.844,8.392 M11.233,13.271c-0.071,0.162-0.169,0.297-0.292,0.403c-0.124,0.108-0.268,0.189-0.434,0.246c-0.166,0.058-0.295,0.089-0.488,0.097v0.4H9.673v-0.4c-0.208-0.004-0.35-0.037-0.522-0.099c-0.174-0.063-0.322-0.151-0.445-0.267s-0.219-0.257-0.286-0.424c-0.067-0.168-0.099-0.361-0.095-0.579h0.659c-0.003,0.256,0.052,0.459,0.168,0.608c0.115,0.147,0.257,0.226,0.522,0.233v-1.417c-0.158-0.042-0.265-0.094-0.422-0.154c-0.156-0.061-0.297-0.139-0.422-0.234c-0.125-0.095-0.226-0.215-0.303-0.36c-0.077-0.144-0.115-0.323-0.115-0.538c0-0.187,0.035-0.352,0.106-0.494c0.072-0.143,0.168-0.261,0.289-0.357c0.121-0.096,0.261-0.168,0.419-0.22C9.383,9.665,9.5,9.64,9.673,9.64V9.256h0.348V9.64c0.173,0,0.287,0.023,0.441,0.07c0.154,0.047,0.288,0.117,0.401,0.211c0.114,0.093,0.204,0.212,0.272,0.356c0.067,0.145,0.101,0.312,0.101,0.503h-0.659c-0.008-0.199-0.059-0.351-0.153-0.457c-0.095-0.105-0.197-0.158-0.404-0.158V11.4c0.173,0.048,0.293,0.103,0.459,0.165c0.166,0.062,0.312,0.142,0.439,0.239c0.127,0.098,0.229,0.219,0.306,0.363c0.077,0.144,0.116,0.321,0.116,0.532C11.341,12.919,11.305,13.109,11.233,13.271M10.458,12.332c-0.067-0.051-0.143-0.092-0.228-0.123c-0.085-0.031-0.123-0.06-0.21-0.082v1.363c0.208-0.016,0.329-0.076,0.462-0.185c0.133-0.107,0.199-0.277,0.199-0.512c0-0.109-0.02-0.2-0.061-0.275C10.581,12.444,10.526,12.383,10.458,12.332 M9.069,10.74c0,0.094,0.019,0.174,0.058,0.241c0.039,0.066,0.087,0.122,0.148,0.169c0.06,0.047,0.128,0.085,0.208,0.114s0.109,0.054,0.19,0.073v-1.171c-0.208,0-0.32,0.044-0.434,0.132C9.126,10.386,9.069,10.533,9.069,10.74"></path>
                </svg>
                </div>
                <div class="userpage-sidebar-menu-entry__text">Blog</div>
            </a>
            <div class="stardust-dropdown__item-body stardust-dropdown__item-body--open" id="blog-hide" style="opacity: 1;">
                <div class="userpage-sideber-menu__subsection">
                    <a href="show-blog" class="_17BcjA _1EUbVp">
                        <span class="_2ilxaJ" id="all-blog">Danh sách Blog</span>
                    </a>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
