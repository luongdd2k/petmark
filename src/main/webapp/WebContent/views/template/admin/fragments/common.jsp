<!-- begin :: Glogbal CSS -->
<head th:fragment="global_css">
	<base th:href="@{/admin/}">
	<meta charset="utf-8" />
	<meta name="description" content="TopShoe Admin">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!--begin::Fonts -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Roboto:300,400,500,600,700">

	<!--end::Fonts -->

	<!--begin::Global Theme Styles(used by all pages) -->
	<link href="admin/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
	<link href="admin/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

	<!--end::Global Theme Styles -->

	<!--begin::Layout Skins(used by all pages) -->
	<link href="admin/assets/css/skins/header/base/light.css" rel="stylesheet" type="text/css" />
	<link href="admin/assets/css/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
	<link href="admin/assets/css/skins/brand/dark.css" rel="stylesheet" type="text/css" />
	<link href="admin/assets/css/skins/aside/dark.css" rel="stylesheet" type="text/css" />

	<!--end::Layout Skins -->
	<link rel="shortcut icon" href="admin/assets/media/logos/favicon.ico" />
</head>
<!-- end :: Glogbal CSS -->

<!-- begin :: Glogbal Script -->
<th:block th:fragment="global_script">

	<!-- begin::Global Config(global config for global JS sciprts) -->
	<script type="text/javascript">
		var KTAppOptions = {
			"colors": {
				"state": {
					"brand": "#5d78ff",
					"dark": "#282a3c",
					"light": "#ffffff",
					"primary": "#5867dd",
					"success": "#34bfa3",
					"info": "#36a3f7",
					"warning": "#ffb822",
					"danger": "#fd3995"
				},
				"base": {
					"label": [
						"#c5cbe3",
						"#a1a8c3",
						"#3d4465",
						"#3e4466"
					],
					"shape": [
						"#f0f3ff",
						"#d9dffa",
						"#afb4d4",
						"#646c9a"
					]
				}
			}
		};
	</script>
	<!-- end::Global Config -->

	<script src="assets/js/template/base.js" type="text/javascript"></script>

	<!--begin::Global Theme Bundle(used by all pages) -->
	<script src="admin/assets/plugins/global/plugins.bundle.js" type="text/javascript"></script>
	<script src="admin/assets/js/scripts.bundle.js" type="text/javascript"></script>

	<!--end::Global Theme Bundle -->

	<!--begin::Page Scripts(used by this page) -->
	<script src="admin/assets/js/pages/dashboard.js" type="text/javascript"></script>

	<!--end::Page Scripts -->
</th:block>
<!-- end :: Glogbal Script -->
