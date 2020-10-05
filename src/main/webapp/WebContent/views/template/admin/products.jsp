<!-- begin :: Page CSS -->
<th:block th:fragment="page_css"></th:block>
<!-- end :: Page CSS -->

<!-- begin :: Content -->
<th:block th:fragment="content">
	<div class="kt-portlet kt-portlet--mobile">
		<div class="kt-portlet__head kt-portlet__head--lg">
			<div class="kt-portlet__head-label">
				<span class="kt-portlet__head-icon">
					<i class="kt-font-brand flaticon2-line-chart"></i>
				</span>
				<h3 class="kt-portlet__head-title">
					Danh Sách Phụ Kiện
				</h3>
			</div>
			<div class="kt-portlet__head-toolbar">
				<div class="kt-portlet__head-wrapper">
					<a href="#" class="btn btn-clean btn-icon-sm">
						<i class="la la-long-arrow-left"></i>
						Quay Lại
					</a>
					&nbsp;
					<div class="dropdown dropdown-inline">
						<button type="button" class="btn btn-brand btn-icon-sm">
							<i class="flaticon2-plus"></i> Thêm Mới
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="kt-portlet__body">

			<!--begin: Search Form -->
			<div class="kt-form kt-form--label-right kt-margin-t-20 kt-margin-b-10">
				<div class="row align-items-center">
					<div class="col-xl-8 order-2 order-xl-1">
						<div class="row align-items-center">
							<div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
								<div class="kt-input-icon kt-input-icon--left">
									<input type="text" class="form-control" placeholder="Tìm kiếm..." id="generalSearch">
									<span class="kt-input-icon__icon kt-input-icon__icon--left">
										<span><i class="la la-search"></i></span>
									</span>
								</div>
							</div>
							<div class="col-md-4 kt-margin-b-20-tablet-and-mobile d-none">
								<div class="kt-form__group kt-form__group--inline">
									<div class="kt-form__label">
										<label>Trạng thái:</label>
									</div>
									<div class="kt-form__control">
										<select class="form-control bootstrap-select" id="kt_form_status">
											<option value="">Tất cả</option>
											<option value="1">Đang bán</option>
											<option value="2">Ngưng bán</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4 kt-margin-b-20-tablet-and-mobile d-none">
								<div class="kt-form__group kt-form__group--inline">
									<div class="kt-form__label">
										<label>Chương trình:</label>
									</div>
									<div class="kt-form__control">
										<select class="form-control bootstrap-select" id="kt_form_type">
											<option value="">Tất cả</option>
											<option value="1">Giảm giá</option>
											<option value="2">Không giảm giá</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4 order-1 order-xl-2 kt-align-right">
						<a href="#" class="btn btn-default kt-hidden">
							<i class="la la-cart-plus"></i> New Order
						</a>
						<div class="kt-separator kt-separator--border-dashed kt-separator--space-lg d-xl-none"></div>
					</div>
				</div>
			</div>

			<!--end: Search Form -->
		</div>
		<div class="kt-portlet__body kt-portlet__body--fit">

			<!--begin: Datatable -->
			<div class="kt-datatable" id="ajax_data"></div>

			<!--end: Datatable -->
		</div>
	</div>
</th:block>
<!-- end :: Content -->

<!--begin :: Page Script (used by this page) -->
<th:block th:fragment="page_script">
	<script src="assets/js/template/products.js" type="text/javascript"></script>
	<script src="assets/js/pages/crud/metronic-datatable/base/data-ajax.js" type="text/javascript"></script>
</th:block>
<!--end :: Page Script -->
