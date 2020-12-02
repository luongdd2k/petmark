<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
	
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" data-widget="pushmenu" href="javascript:" role="button">
					<i class="fas fa-bars"></i>
				</a>
			</li>
			<li class="nav-item d-none d-sm-inline-block">
				<a href="index.html" class="nav-link">Trang chủ</a>
			</li>
		</ul>
		
		<!-- SEARCH FORM -->
		<form class="form-inline ml-3">
			<div class="input-group input-group-sm">
				<input class="form-control form-control-navbar" type="search" laceholder="Tìm kiếm ..." aria-label="Search">
				<div class="input-group-append">
					<button class="btn btn-navbar" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
			
			<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
		<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown">
				<a class="nav-link" data-toggle="dropdown" href="javascript:"> 
					<i class="far fa-bell"></i> 
					<span class="badge badge-warning navbar-badge">15</span>
				</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">15 Thông báo</span>
					<div class="dropdown-divider"></div>
						<a href="javascript:" class="dropdown-item"> 
							<i class="fas fa-envelope mr-2"></i>4 tin nhắn mới 
							<span class="float-right text-muted text-sm">3 phút</span>
						</a>
						<div class="dropdown-divider"></div>
						<div class="dropdown-divider"></div>
						<a href="javascript:" class="dropdown-item"> 
							<i class="fas fa-file mr-2"></i>3 báo cáo mới 
							<span class="float-right text-muted text-sm">2 ngày</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="javascript:" class="dropdown-item dropdown-footer">Xem tất cả thông báo</a>
				</div>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="log-out"> 
					<i class="fas fa-sign-out-alt"></i>
				</a>
			</li>
		</ul>
	</nav>
	<!-- /.navbar -->
