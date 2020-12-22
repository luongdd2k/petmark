<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<base href="${pageContext.servletContext.contextPath}/">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap"
	rel="stylesheet" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<!-- Carousel -->
<link rel="stylesheet" type="text/css"   
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"   
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet" type="text/css"   
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@next/dist/aos.css" />
<title>Pet Mart | Cửa hàng thú cưng và phụ kiện cho thú cưng</title>

	<!-- Custom StyleSheet -->
<link rel="stylesheet" type="text/css" href="css/styles.css" />
	<style>
		/*
======================
Reset
======================
*/
		:root {
			--primaryColor: #f1f1f1;
			--black: #222;
			--black2: #555;
			--black3: #252525;
			--black4: #000;
			--black5: #212529;
			--orange: #eb0028;
			--white: #fff;
			--grey: #959595;
			--grey2: #666;
			--grey3: #ccc;
			--grey4: rgb(238, 236, 236);
			--secondaryColor: #2b1f4d;
			--yellow: #ffcc00;
			--green: #59b210;
			--blue: rgb(56, 10, 223);
			--blue1: #8cf1d8;
			--blue2: #2ff1c1;
			--banner1:#dbe5ee;
		}

		* {
			margin: 0;
			padding: 0;
			box-sizing: inherit;
		}

		html {
			font-size: 62.5%;
			box-sizing: border-box;
			scroll-behavior: smooth;
		}

		body,
		input {
			font-size: 1.6rem;
			font-weight: 400;
			font-family: "Archivo", sans-serif;
			color: var(--black);
		}

		a {
			text-decoration: none;
		}
		a:hover{
			text-decoration: none;
		}

		ul {
			list-style: none;
		}

		img {
			max-width: 100%;
		}

		h3,
		h4 {
			font-weight: 500;
		}
		.pt-20{
			padding-top: 20px;
		}
		.pb-20{
			padding-bottom: 20px;
		}
		.pt-10{
			padding-top: 10px;
		}
		.pb-10{
			padding-bottom: 20px;
		}

		.hide{
			display: none;
		}

		#location{
			margin-right: 1rem;
		}

		.search-form{
			padding-right: 50px;
			border-radius: 30px;
			height: 3rem;
			font-size: 14px;
		}

		.form-control{
			font-size: 14px;
		}

		.edit-adress{
			padding-top: 10px;
			margin: 0 auto;
			max-width: 80%;
		}

		/*
        ======================
        Header
        ======================
        */

		.header {
			position: relative;
		}

		.container {
			max-width: 140rem;
			margin: 0 auto;
			padding: 0 1.6rem;
		}

		/*
        ======================
        Navigation
        ======================
        */

		.navigation {
			position: relative;
			height: 10rem;
			box-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.1);
		}

		.nav {
			margin-top: 1.25rem;
			display: flex;
			align-items: center;
			justify-content: space-between;
			height: 100%;

			padding: 0 1rem;
		}

		.fix__nav {
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			background-color: var(--white);
			z-index: 1200;
		}

		.nav__logo a {
			font-size: 2.5rem;
			color: var(--black);
			padding: 1.6rem;
			font-weight: 700;
		}

		.nav__hamburger {
			display: none;
			cursor: pointer;
		}

		.nav__hamburger svg {
			height: 2.3rem;
			width: 2.3rem;
		}

		.menu__top {
			display: none;
		}

		.nav__menu {
			width: 54%;
		}

		.nav__list {
			display: flex;
			align-items: center;
			height: 100%;
			width: 90%;
			margin-bottom: 0;
		}

		.nav__item:not(:last-child) {
			margin-right: 1.6rem;
		}

		.nav__list .nav__link:link,
		.nav__list .nav__link:visited {
			display: inline-block;
			font-size: 1.4rem;
			text-transform: uppercase;
			color: var(--black);
			transition: color 0.3s ease-in-out;
		}

		.nav__list .nav__link:hover {
			color: var(--blue2);
		}

		.nav__icons {
			display: flex;
			position: relative;
		}
		.nav__icons button{
			margin-right: 10px;
			background: white;
		}

		.nav__icons .icon__item svg {
			width: 1.6rem;
			height: 1.6rem;
		}

		.nav__icons .icon__item {
			display: flex;
			justify-content: center;
			align-items: center;
			padding: 0.7rem;
			border: 1px solid var(--black);
			border-radius: 50%;
			transition: background-color 0.3s ease-in-out;
		}

		.nav__icons .icon__item:link,
		.nav__icons .icon__item:visited {
			color: var(--black);
		}

		.nav__icons .icon__item:hover {
			background-color: var(--blue1);
			border: 1px solid var(--black);
		}

		.nav__icons .icon__item:not(:last-child) {
			margin-right: 1rem;
		}

		.nav__icons #cart__total {
			font-size: 1rem;
			position: absolute;
			top: 2px;
			right: -6px;
			background-color: var(--blue1);
			padding: 0.2rem 0.4rem;
			border-radius: 100%;
			color: var(--primaryColor);
		}

		.page__title-area {
			background-color: var(--primaryColor);
		}
		.page__title-area ul{
			margin-bottom: 0;;
		}

		.page__title-container {
			padding: 1rem;
			padding-top: 1rem;
		}

		.page__titles {
			display: flex;
			align-items: center;
			font-size: 1.7rem;
			color: var(--grey2);
		}

		.page__titles a {
			margin-right: 2rem;
		}

		.page__titles a svg {
			width: 1.8rem;
			height: 1.8rem;
			fill: var(--grey2);
		}

		.page__title {
			position: relative;
		}

		.page__title::before {
			position: absolute;
			content: "/";
			top: 0;
			left: -1rem;
		}

		/*
        ======================
        Navigation Media Query
        ======================
        */
		@media only screen and (max-width: 768px) {
			.nav__menu {
				position: fixed;
				top: 0;
				left: -30rem;
				width: 0;
				background-color: var(--white);
				z-index: 9990;
				height: 100%;
				transition: all 0.5s;
			}

			.nav__menu.open {
				left: 30rem;
				width: 30rem;
			}

			.nav__logo {
				width: 50%;
			}

			.nav__hamburger {
				display: block;
			}

			.menu__top {
				display: flex;
				align-items: center;
				justify-content: space-between;
				background-color: var(--blue1);
				padding: 1.8rem 1rem;
			}

			.menu__top svg {
				height: 1.6rem;
				width: 1.6rem;
				fill: var(--primaryColor);
			}

			.nav__category {
				color: var(--white);
				font-size: 2.3rem;
				font-weight: 700;
			}

			.nav__list {
				flex-direction: column;
				align-items: start;
				padding: 1.6rem 1rem;
			}

			.nav__item:not(:last-child) {
				margin-right: 0;
			}

			.nav__item {
				width: 100%;
			}

			.nav__list .nav__link:link,
			.nav__list .nav__link:visited {
				padding: 1.6rem 0;
				width: 100%;
				color: var(--grey2);
			}

			body.active::before {
				content: "";
				position: fixed;
				top: 0;
				left: 0;
				width: 100%;
				height: 110%;
				background: var(--black) none no-repeat 0 0;
				opacity: 0.7;
				z-index: 999;
				transition: 0.8s;
			}
		}

		@media only screen and (max-width: 568px) {
			.nav__icons .icon__item svg {
				width: 1.4rem;
				height: 1.4rem;
			}

			.nav__icons .icon__item {
				padding: 0.4rem;
			}
		}

		/*
        ======================
        Hero Area
        ======================
        */

		.hero,
		.hero .glide__slides {
			background-color: var(--banner1);
			position: relative;
			width: 100%;
			height: 80vh;
		}



		.hero .glide__bullet {
			background-color: #222;
			width: 1.2rem;
			height: 1.2rem;
		}


		.glide__arrow{
			padding: 5px 8px;
		}

		.hero .glide__arrow {
			padding: 1.5rem 1.7rem;
			opacity: 0;
			border: none;
			background-color: var(--grey);
			transition: all 0.5s ease-in-out 0.2s;
		}

		.glide__arrow:hover {
			background-color: var(--black);
		}

		.glide__arrow--left {
			left: 3rem;
		}

		.glide__arrow--right {
			position: absolute;
			right: 3rem;
		}

		.hero:hover .glide__arrow {
			opacity: 1;
		}

		.hero:hover .glide__arrow--left {
			left: 10rem;
		}

		.hero:hover .glide__arrow--right {
			right: 10rem;
		}

		.hero .glide__arrow svg {
			height: 1.8rem;
			width: 1.8rem;
			fill: var(--primaryColor);
		}

		.hero .glide__arrow {
			border-radius: 50%;
		}

		.hero__center {
			display: flex;
			align-items: center;
			justify-content: center;
			position: relative;
			max-width: 115rem;
			margin: 0 auto;
			height: 100%;
			padding-top: 3rem;
		}

		.hero__left {
			padding: 0 3rem;
			flex: 0 0 50%;
		}

		.hero__btn {
			display: inline-block;
			font-weight: 700;
			font-size: 1.4rem;
			background-color: var(--black);
			color: var(--primaryColor);
			cursor: pointer;
			margin-top: 1rem;
			padding: 1.5rem 4rem;
			border: 1px solid var(--black);
			transition: all 0.3s ease-in-out;
			border-radius: 40%;
		}

		.hero__btn:focus {
			outline: none;
		}

		.hero__left .hero__btn:hover {
			font-weight: 700;
			background-color: transparent;
			color: var(--black);
		}

		.hero__left h1 {
			margin: 1rem 0;
		}

		.hero__left p {
			margin-bottom: 1rem;
		}

		.hero__right {
			flex: 0 0 50%;
			position: relative;
			text-align: center;
		}

		.hero__right img.banner_03 {
			width: 70%;
		}

		/*
        ======================
        Hero Media Query
        ======================
        */
		@media only screen and (max-width: 999px) {
			.hero__center {
				flex-direction: column;
				text-align: center;
			}

			.hero__right {
				top: 50%;
				position: absolute;
			}

			.hero__left {
				position: absolute;
				padding: 0 1rem;
				top: 20%;
			}

			.hero__right img {
				width: 55%;
			}

			.hero__btn {
				padding: 1.1rem 2.8rem;
			}

			.hero .glide__arrows {
				display: none;
			}
		}

		@media only screen and (max-width: 567px) {

			.hero,
			.hero .glide__slides {
				height: 60vh;
			}

			.hero__right {
				display: none;
			}
		}

		/*
        ======================
        Collection
        ======================
        */

		.section {
			padding: 1.5rem 0;
		}

		.collection {
			margin: 3rem 0;
		}

		.collection__container {
			width: 100%;
			padding: 0 1.6rem;
			display: flex;
			height: 100%;
			align-items: center;
			justify-content: space-between;
		}

		.collection__box {
			display: flex;
			justify-content: space-around;
			align-items: center;
			padding: 1rem;
			flex: 0 0 48%;
			height: 30rem;
			background-color: var(--primaryColor);
		}

		.collection__box:not(:last-child) {
			margin-right: 1.6rem;
		}

		.img__container {
			width: 25rem;
			text-align: center;
		}

		.collection__box img.collection_01 {
			width: 60%;
		}

		.collection__box img.collection_02 {
			width: 75%;
		}

		.collection__content {
			flex: 0 0 50%;
			height: 100%;
			display: flex;
			align-items: center;
			justify-content: center;
		}

		.collection__content span {
			color: var(--black);
		}

		.collection__content h1 {
			margin-top: 0.5rem;
		}

		.collection__content a:link,
		.collection__content a:visited {
			font-weight: 700;
			display: inline-block;
			padding: 1rem 1.4rem;
			margin-top: 1.3rem;
			border-radius: 3rem;
			border: 2px solid var(--secondaryColor);
			color: var(--primaryColor);
			background-color: var(--secondaryColor);
			transition: all 0.3s ease-in-out;
		}

		.collection__content a:hover {
			background-color: transparent;
			color: var(--secondaryColor);
		}

		/*
        ======================
        Collection Media Query
        ======================
        */
		@media only screen and (max-width: 999px) {
			.collection__container {
				width: 80%;
				margin: 0 auto;
				flex-direction: column;
				height: 65rem;
			}

			.collection__box {
				width: 100%;
				margin: 0 auto;
			}

			.collection__box:not(:last-child) {
				margin: 0 0 1.6rem;
			}
		}

		@media only screen and (max-width: 568px) {
			.collection {
				margin: 0;
				position: relative;
			}

			.collection__container {
				width: 100%;
				height: 50rem;
				text-align: center;
				flex-direction: column;
				justify-content: space-around;
			}

			.collection__box {
				justify-content: space-around;
				height: 15rem;
			}

			.collection__content {
				flex: 0 0 30%;
			}

			.collection__data span {
				font-size: 1.2rem;
			}

			.collection__data h1 {
				font-size: 2rem;
			}
		}

		/*
        ======================
        Latest Products
        ======================
        */

		.title__container {
			display: flex;
			align-items: center;
			justify-content: center;
			margin: 0 auto 4.5rem;
			padding: 1rem 0;
			background-color: var(--primaryColor);
		}

		.section__titles:not(:last-child) {
			margin-right: 1.5rem;
		}

		.section__title {
			display: inline-flex;
			align-items: center;
			justify-content: center;
			cursor: pointer;
		}

		.section__title h1 {
			font-size: 1.9rem;
			font-weight: inherit;
		}

		.section__title:hover .primary__title,
		.section__title:hover span.dot,
		.section__title:hover span.dot::before {
			opacity: 1;
		}

		.section__title .primary__title {
			opacity: 0.6;
			padding-left: 0.5rem;
			transition: opacity 0.3s ease-in-out;
		}

		span.dot {
			opacity: 0.6;
			padding: 0.45rem;
			position: relative;
			border: 1px solid var(--black);
			cursor: pointer;
			transition: opacity 0.3s ease-in-out;
		}

		span.dot::before {
			content: "";
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			border: 1px solid var(--black);
			background-color: var(--black);
			margin: 1px;
			opacity: 0.6;
		}

		.section__title.active span.dot {
			opacity: 1;
		}

		.section__title.active span.dot::before {
			opacity: 1;
		}

		.section__title.active .primary__title {
			opacity: 1;
		}

		.product {
			position: relative;
			text-align: center;
		}

		.product ul svg {
			width: 1.7rem;
			height: 1.7rem;
			fill: var(--white);
		}

		.product ul {
			position: absolute;
			display: flex;
			align-items: center;
			justify-content: center;
			top: 35%;
			left: 50%;
			width: 12rem;
			height: 5rem;
			background-color: rgba(255, 255, 255, 0.5);
			opacity: 0;
			visibility: hidden;
			transform: translate(-50%, -50%) scale(0.7);
			transition: all 0.5s ease-in-out;
		}

		.product:hover ul {
			opacity: 1;
			visibility: visible;
			transform: translate(-50%, -50%) scale(1);
		}

		.product ul li:not(:last-child) {
			margin-right: 1.6rem;
		}

		.product ul a {
			position: relative;
			display: flex;
			align-items: center;
			justify-content: center;
			background-color: var(--blue1);
			width: 3.5rem;
			height: 3.5rem;
			cursor: pointer;
			transition: 0.5s;
		}

		.product ul a:hover {
			background-color: var(--black);
		}

		.product ul a::before {
			content: "";
			position: absolute;
			top: -0.6rem;
			left: -0.6rem;
			height: 0;
			width: 0;
			border-top: 3px solid var(--orange);
			border-left: 3px solid var(--orange);
			transition: 0.5s;
			opacity: 0;
			z-index: 1;
		}

		.product ul a::after {
			content: "";
			position: absolute;
			bottom: -0.6rem;
			right: -0.6rem;
			width: 0;
			height: 0;
			border-bottom: 3px solid var(--orange);
			border-right: 3px solid var(--orange);
			z-index: 1;
			opacity: 0;
			transition: 0.5s;
		}

		.product ul a:hover::before {
			width: 126%;
			height: 126%;
			border-top: 3px solid var(--black);
			border-left: 3px solid var(--black);
			opacity: 1;
		}

		.product ul a:hover::after {
			width: 126%;
			height: 126%;
			border-bottom: 3px solid var(--black);
			border-right: 3px solid var(--black);
			opacity: 1;
		}

		@media only screen and (max-width: 567px) {
			.title__container {
				flex-direction: column;
			}

			.section__titles:not(:last-child) {
				margin: 0 0 1.3rem;
			}
		}

		.product {
			display: flex;
			flex-direction: column;
			text-align: center;
			width: 25rem;
		}

		.product__header {
			height: 25rem;
			padding: 0.5rem 0;
			text-align: center;
		}

		.product__header img {
			max-width: 100%;
			max-height: 100%;
		}

		.product__footer {
			padding: 1rem 0;
		}

		.rating1 svg {
			width: 1.6rem;
			height: 1.6rem;
			fill: var(--yellow);
		}

		.product__footer h3 {
			padding: 1rem 0;
		}

		.product__footer .product__price {
			padding-bottom: 1rem;
		}

		/* .product__footer h3 { */
		/*   font-size: 1.6rem; */
		/* } */

		.product__btn {
			display: inline-block;
			font-weight: 700;
			text-transform: uppercase;
			width: 100%;
			padding: 1.4rem 0;
			border: 1px solid var(--black);
			color: var(--black);
			cursor: pointer;
		}

		.product__btn:focus {
			outline: none;
		}

		.product__btn:hover {
			background-color: var(--black);
			color: var(--primaryColor);
		}

		.latest__products .glide__arrow,
		.related__products .glide__arrow {
			background-color: transparent;
			border: 1px solid var(--primaryColor);
			outline: none;
			border-radius: 0;
			box-shadow: 0 0.25em 0.5em 0 rgba(0, 0, 0, 0);
			top: -7%;
			left: 80%;
		}

		.latest__products .glide__arrow:hover,
		.related__products .glide__arrow:hover {
			background-color: var(--blue1);
			border: 1px solid var(--primaryColor);
		}

		.latest__products .glide__arrow--left,
		.related__products .glide__arrow--left {
			left: 75%;
		}

		.latest__products .glide__arrow--right,
		.related__products .glide__arrow--right {
			right: 5%;
		}

		.latest__products .glide__arrow svg,
		.related__products .glide__arrow svg {
			width: 1.5rem;
			height: 1.5rem;
			fill: var(--grey);
		}

		/*
        ======================
        Latest Products Media Query
        ======================
        */
		@media only screen and (max-width: 999px) {
			.product__header {
				height: 25rem;
			}

			.product {
				width: 70%;
				margin: 0 auto;
			}

			.latest__products .glide__arrow--left,
			.related__products .glide__arrow--left {
				left: 73%;
			}

			.latest__products .glide__arrow--right,
			.related__products .glide__arrow--right {
				right: 7%;
			}
		}

		@media only screen and (max-width: 768px) {

			.latest__products .glide__arrow--left,
			.related__products .glide__arrow--left {
				left: 70%;
			}

			.latest__products .glide__arrow--right,
			.related__products .glide__arrow--right {
				right: 7%;
			}
		}

		@media only screen and (max-width: 578px) {
			.product__header {
				height: 20rem;
			}

			.product__btn:hover {
				background-color: var(--black);
				color: var(--primaryColor);
			}

			.product__header img {
				width: 50%;
			}

			.product__footer h3 {
				font-size: 1.4rem;
			}

			.product__btn {
				width: 100%;
				font-size: 1rem;
				padding: 0.8rem 0;
				border: 1px solid var(--black);
			}

			.product ul a {
				width: 2.7rem;
				height: 2.7rem;
			}

			.product ul {
				top: 25%;
				left: 50%;
				width: 16rem;
				height: 4rem;
			}

			.rating1 svg {
				width: 1.3rem;
				height: 1.3rem;
			}

			.latest__products .glide__arrow--left,
			.related__products .glide__arrow--left {
				left: 66%;
			}

			.latest__products .glide__arrow--right,
			.related__products .glide__arrow--right {
				left: 85%;
			}
		}

		@media only screen and (max-width: 460px) {
			.product__header {
				height: 12rem;
			}

			.product__footer h3 {
				font-size: 1.2rem;
			}
		}

		/*
        ======================
        Category Center
        ======================
        */
		.category__center {
			display: grid;
			grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
			gap: 3rem 2rem;
		}

		@media only screen and (max-width: 999px) {
			.category__center {
				grid-template-columns: 1fr 1fr 1fr;
			}
		}

		@media only screen and (max-width: 568px) {
			.category__center {
				grid-template-columns: 1fr 1fr;
				gap: 1.5rem 1rem;
			}

			.category__products .product__header {
				height: 10rem;
			}

			.category__products .product__header img {
				object-fit: contain;
			}
		}

		/*
        ======================
        Pop Up
        ======================
        */

		.popup {
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100vh;
			background-color: rgba(0, 0, 0, 0.3);
			z-index: 9999;
			transition: 0.3s;
			transform: scale(1);
		}

		.popup__content {
			position: absolute;
			top: 50%;
			left: 50%;
			width: 90%;
			margin: 0 auto;
			height: 55rem;
			transform: translate(-50%, -50%);
			padding: 1.6rem;
			display: table;
			overflow: hidden;
			background-color: var(--white);
		}

		.popup__close {
			display: flex;
			align-items: center;
			justify-content: center;
			position: absolute;
			top: 2rem;
			right: 2rem;
			padding: 1.5rem;
			background-color: var(--primaryColor);
			border-radius: 50%;
			cursor: pointer;
		}

		.popup__close svg {
			width: 1.7rem;
			height: 1.7rem;
		}

		.popup__left {
			display: table-cell;
			width: 50%;
			height: 100%;
			vertical-align: middle;
		}

		.popup__right {
			display: table-cell;
			width: 50%;
			vertical-align: middle;
			padding: 3rem 5rem;
		}

		.popup-img__container {
			width: 100%;
			overflow: hidden;
		}

		.popup-img__container img.popup__img {
			display: block;
			width: 60rem;
			height: 45rem;
			max-width: 100%;
			border-radius: 1rem;
			object-fit: cover;
		}

		.right__content {
			text-align: center;
			width: 85%;
			margin: 0 auto;
		}

		.right__content h1 {
			font-size: 4rem;
			color: #000;
			margin-bottom: 1.6rem;
		}

		.right__content h1 span {
			color: var(--green);
		}

		.right__content p {
			font-size: 1.8rem;
			color: var(--grey2);
			margin-bottom: 1.6rem;
		}

		.popup__form {
			width: 100%;
			padding: 2rem 0;
			text-indent: 1rem;
			margin-bottom: 1.6rem;
			border-radius: 3rem;
			background-color: var(--primaryColor);
			border: none;
		}

		.popup__form:focus {
			outline: none;
		}

		.right__content a:link,
		.right__content a:visited {
			display: inline-block;
			padding: 1.8rem 5rem;
			border-radius: 3rem;
			font-weight: 700;
			color: var(--white);
			background-color: var(--black);
			border: 1px solid var(--grey2);
			transition: 0.3s;
		}

		.right__content a:hover {
			background-color: var(--green);
			border: 1px solid var(--grey2);
			color: var(--black);
		}

		.hide__popup {
			transform: scale(0.2);
			opacity: 0;
			visibility: hidden;
		}

		/*
        ======================
        Go Up
        ======================
        */
		.goto-top:link,
		.goto-top:visited {
			position: fixed;
			right: 2%;
			bottom: 10%;
			padding: 0.8rem 1.4rem;
			border-radius: 1rem;
			background-color: var(--blue1);
			visibility: hidden;
			cursor: pointer;
			transition: 0.3s;
			animation: bounce 2s ease-in-out infinite;
		}

		.show-top:link,
		.show-top:visited {
			visibility: visible;
			z-index: 1999;
		}

		@keyframes bounce {
			0% {
				transform: scale(0.5);
			}

			50% {
				transform: scale(1.5);
			}

			0% {
				transform: scale(1);
			}
		}

		.goto-top svg {
			width: 1.3rem;
			height: 1.3rem;
			fill: var(--white);
		}

		.goto-top:hover {
			background-color: var(--black2);
		}

		@media only screen and (max-width: 1200px) {
			.right__content {
				width: 100%;
			}

			.right__content h1 {
				font-size: 3.5rem;
				margin-bottom: 1.3rem;
			}
		}

		@media only screen and (max-width: 998px) {
			.popup__right {
				width: 100%;
			}

			.popup__left {
				display: none;
			}

			.right__content h1 {
				font-size: 5rem;
			}
		}

		@media only screen and (max-width: 768px) {
			.right__content h1 {
				font-size: 4rem;
			}

			.right__content p {
				font-size: 1.6rem;
			}

			.popup__form {
				width: 90%;
				margin: 0 auto;
				padding: 1.8rem 0;
				margin-bottom: 1.5rem;
			}

			.goto-top:link,
			.goto-top:visited {
				right: 5%;
				bottom: 5%;
			}
		}

		@media only screen and (max-width: 568px) {
			.popup__right {
				padding: 0 1.6rem;
			}

			.popup__content {
				height: 35rem;
				width: 90%;
				margin: 0 auto;
			}

			.right__content {
				width: 100%;
			}

			.right__content h1 {
				font-size: 3rem;
			}

			.right__content p {
				font-size: 1.4rem;
			}

			.popup__form {
				width: 100%;
				padding: 1.5rem 0;
				margin-bottom: 1.3rem;
			}

			.right__content a:link,
			.right__content a:visited {
				padding: 1.5rem 3rem;
			}

			.popup__close {
				top: 1rem;
				right: 1rem;
				padding: 1.3rem;
			}

			.popup__close svg {
				width: 1.4rem;
				height: 1.4rem;
			}
		}

		/*
        ======================
        Facility
        ======================
        */

		.facility__section {
			background-color: var(--primaryColor);
			padding: 1.5rem 0;
		}

		.facility__contianer {
			display: grid;
			align-items: center;
			grid-template-columns: repeat(4, 1fr);
		}

		.facility-img__container svg {
			width: 3rem;
			height: 3rem;
			transition: 1s;
			perspective: 4000;
		}

		.facility__box {
			text-align: center;
		}

		.facility-img__container {
			position: relative;
			display: inline-block;
			line-height: 7.5rem;
			width: 8rem;
			height: 8rem;
			border-radius: 50%;
			border: 1.5px solid var(--white);
			z-index: 1;
			margin-bottom: 1.6rem;
		}

		.facility-img__container::before {
			content: "";
			position: absolute;
			display: inline-block;
			border-radius: 50%;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			margin: 0.7rem;
			background-color: var(--white);
			z-index: -1;
		}

		.facility__box:hover svg {
			transform: rotateY(180deg);
			line-height: 9.5rem;
		}

		/*
        ======================
        Facility Media Query
        ======================
        */
		@media only screen and (max-width: 998px) {
			.facility__contianer {
				grid-template-columns: 1fr 1fr;
				row-gap: 3rem;
			}
		}

		@media only screen and (max-width: 568px) {
			.facility__contianer {
				grid-template-columns: 1fr;
			}

			.facility-img__container {
				width: 7rem;
				height: 7rem;
				line-height: 8.5rem;
			}

			.facility__contianer p {
				font-size: 1.4rem;
			}
		}

		/*
        ======================
        Testimonial
        ======================
        */

		.testimonial {
			position: relative;

			height: 50rem;
			padding: 5rem 0;
			z-index: 1;
			text-align: center;
		}

		.testimonial::before {
			content: "";
			position: absolute;
			width: 100%;
			height: 100%;
			top: 0;
			left: 0;
			background-color: rgba(0, 0, 0, 0.9);
			z-index: -1;
		}

		.client__image {
			margin-bottom: 3rem;
		}

		.client__image img {
			width: 7rem;
			height: 7rem;
			max-width: 100%;
			object-fit: cover;
			border-radius: 50%;
		}

		.testimonial__container {
			height: 100%;
			padding: 1rem;
		}

		.testimonial__box {
			width: 90%;
			margin: 0 auto;
			height: 100%;
			color: #ccc;
		}

		.testimonial__box p {
			width: 70%;
			margin: 0 auto;
			line-height: 2.5rem;
			font-style: italic;
			font-size: 1.5rem;
			margin-bottom: 3rem;
		}

		.client__info h3 {
			font-weight: 400;
			font-size: 2rem;
			margin-bottom: 1rem;
		}

		.client__info span {
			font-size: 1.4rem;
		}

		.testimonial .glide__bullets {
			bottom: -20%;
		}

		/*
        ======================
        Testimonial Media Query
        ======================
        */
		@media only screen and (max-width: 1200px) {
			.testimonial__box {
				height: 100%;
			}

			.testimonial__box p {
				width: 90%;
				margin: 0 auto;
				line-height: 2.2rem;
				margin-bottom: 3rem;
			}

			.client__image {
				margin-bottom: 2.5rem;
			}
		}

		@media only screen and (max-width: 568px) {
			.testimonial {
				height: 100%;
				padding: 4rem 0 5rem;
				z-index: 1;
				text-align: center;
			}

			.testimonial__box {
				height: 100%;
			}

			.testimonial__box p {
				width: 100%;
				font-size: 1.3rem;
				line-height: 2rem;
				margin-bottom: 2rem;
			}

			.client__image {
				margin-bottom: 1.5rem;
			}

			.testimonial__box span {
				margin-bottom: 1rem;
			}

			.testimonial .glide__bullets {
				bottom: -8%;
			}
		}

		/*
        ======================
        News Section
        ======================
        */

		.news {
			padding-bottom: 8rem;
		}

		.new__card {
			background-color: var(--primaryColor);
			width: 95%;
			margin: 0 auto;
		}

		.new__card:not(:last-child) {
			margin-right: 1rem;
		}

		.card__footer {
			padding: 3rem 1.4rem;
		}

		.card__footer h3 {
			font-size: 2.5rem;
			font-weight: 600;
			color: var(--black);
			margin-bottom: 1rem;
		}

		.card__footer span {
			display: inline-block;
			margin-bottom: 1rem;
			color: var(--black2);
		}

		.card__footer p {
			font-size: 1.5rem;
			color: var(--black2);
			margin-bottom: 1.6rem;
			line-height: 2.7rem;
		}

		.card__footer a button,
		.card__footer a button {
			display: inline-block;
			padding: 1.4rem 4rem;
			border: 1px solid var(--black);
			color: var(--black);
			cursor: pointer;
			transition: 0.3s;
		}

		.card__footer a button:focus {
			outline: none;
		}

		.card__footer a button:hover {
			border: 1px solid var(--black);
			color: var(--white);
			background-color: var(--black);
		}

		/*
        ======================
        NewsLetter
        ======================
        */

		.newsletter {
			padding: 6rem 0;
			border-top: 1px solid var(--primaryColor);
		}

		.newsletter__content {
			display: flex;
			align-items: center;
			justify-content: space-between;
		}

		.newsletter__data h3 {
			font-size: 2.4rem;
			font-weight: inherit;
			margin-bottom: 1rem;
		}

		.newsletter__data p {
			font-size: 1.5rem;
			color: var(--black2);
		}

		.newsletter__email {
			font-size: 1.4rem;
			display: inline-block;
			width: 37rem;
			padding: 1.6rem;
			background-color: var(--primaryColor);
			border: none;
			text-indent: 1rem;
		}

		.newsletter__email:focus {
			outline: none;
		}

		.newsletter__link:link,
		.newsletter__link:visited {
			display: inline-block;
			padding: 1.4rem 3rem;
			margin-left: -0.5rem;
			background-color: var(--black);
			color: var(--white);
			transition: 0.3s;
		}

		.newsletter__link:hover {
			background-color: #000;
		}

		/*
        ======================
        Newsletter Media Query
        ======================
        */
		@media only screen and (max-width: 998px) {
			.newsletter {
				padding: 6rem 4rem;
			}

			.newsletter__content {
				flex-direction: column;
				align-items: center;
			}

			.newsletter__email {
				width: 45rem;
			}

			.newsletter__data {
				margin-bottom: 2rem;
			}
		}

		@media only screen and (max-width: 768px) {
			.newsletter__content {
				align-items: center;
				justify-content: center;
				text-align: center;
			}

			.newsletter__email {
				width: 45rem;
				display: block;
				margin-bottom: 1.6rem;
			}
		}

		@media only screen and (max-width: 568px) {
			.newsletter__email {
				width: 23rem;
				font-size: 1.2rem;
			}

			.newsletter__data h3 {
				font-size: 1.6rem;
			}

			.newsletter__data p {
				font-size: 1rem;
			}

			.newsletter__link:link,
			.newsletter__link:visited {
				padding: 1.2rem 2rem;
				margin-left: 0;
			}
		}

		/*
        ======================
        Footer
        ======================
        */

		.footer {

			padding: 9rem 5rem;
			line-height: 4rem;
		}

		.footer-top__box span svg {
			width: 1.6rem;
			height: 1.6rem;
			fill: var(--grey3);
		}

		.footer-top__box span {
			margin-right: 1rem;
		}

		.footer__top {
			display: grid;
			grid-template-columns: repeat(4, 1fr);
			color: var(--grey3);
		}

		.footer-top__box a:link,
		.footer-top__box a:visited {
			display: block;
			color: var(--grey);
			font-size: 1.4rem;
			transition: 0.6s;
		}

		.footer-top__box a:hover {
			color: var(--blue2);
		}

		.footer-top__box div {
			color: var(--grey);
			font-size: 1.4rem;
		}

		.footer-top__box h3 {
			font-size: 1.8rem;
			font-weight: 400;
			margin-bottom: 1rem;
		}

		@media only screen and (max-width: 998px) {
			.footer__top {
				grid-template-columns: repeat(2, 1fr);
				row-gap: 2rem;
			}
		}

		@media only screen and (max-width: 768px) {
			.footer__top {
				grid-template-columns: 1fr;
				row-gap: 2rem;
			}
		}

		/*
        ======================
        Product Details
        ======================
        */

		.details__container--left,
		.product-detail__container {
			display: flex;
			align-items: flex-start;
		}

		.product-detail__container {
			display: grid;
			grid-template-columns: repeat(2, 1fr);
			padding: 2.5rem 0;
			margin: 0 auto;
		}

		.product-detail__left {
			flex: 0 0 50%;
			margin-right: 0.5rem;
		}

		.product-detail__right {
			flex: 0 0 50%;
		}

		.product-detail__container--left img {
			width: 100%;
			object-fit: cover;
		}

		.product__pictures {
			display: flex;
			flex-direction: column;
		}

		.pictures__container {
			padding: 1rem;
			border: 1px solid var(--primaryColor);
			border-right-color: transparent;
			cursor: pointer;
			width: 6.2rem;
			transition: 0.3s;
		}

		.pictures__container:not(:last-child) {
			border-bottom-color: transparent;
		}

		.pictures__container:hover {
			border: 1px solid var(--orange);
		}

		.pictures__container img {
			transition: 0.3s;
		}

		.pictures__container:hover img {
			scale: 1.1;
		}

		.product__picture {
			width: 72%;
			border: 1px solid var(--primaryColor);
			padding: 1rem;
			display: flex;
			justify-content: center;
		}

		.product-details__btn {
			display: flex;
			justify-content: space-between;
			margin-top: 2rem;
		}

		.product-details__btn a {
			flex: 0 0 47%;
			display: inline-block;
			padding: 1rem 1.5rem;
			text-align: center;
			color: var(--black);
			border: 1px solid var(--black);
		}
		.product-details__btn button {
			flex: 0 0 47%;
			display: inline-block;
			padding: 1rem 1.5rem;
			text-align: center;
			color: var(--black);
			border: 1px solid var(--black);
			background: white;
		}

		.product-details__btn svg {
			width: 1.9rem;
			height: 1.9rem;
			transition: 0.3s;
		}

		.product-details__btn .add,
		.product-details__btn .buy {
			display: flex;
			align-items: center;
			justify-content: center;
			transition: 0.3s;
		}

		.product-details__btn .add span,
		.product-details__btn .buy span {
			margin-right: 1rem;
		}

		.product-details__btn .add:hover,
		.product-details__btn .buy:hover {
			background-color: var(--black);
			color: var(--primaryColor);
			text-decoration: none;
		}

		.product-details__btn .add:hover svg,
		.product-details__btn .buy:hover svg {
			fill: var(--primaryColor);
		}

		.product-detail__content {
			width: 90%;
			margin: 0 auto;
		}

		.product-detail__content h3 {
			font-size: 2.5rem;
			margin-bottom: 1.3rem;
		}

		.price {
			margin-bottom: 1rem;
		}

		.new__price {
			font-size: 2rem;
			color: var(--orange);
		}

		.product-detail__content .product__review {
			display: flex;
			align-items: center;
			margin-bottom: 1.6rem;
			padding-bottom: 1.6rem;
			border-bottom: 0.5px solid var(--primaryColor);
		}

		.rating1 {
			margin-right: 1rem;
		}

		.product__review a:link,
		.product__review a:visited {
			color: var(--black);
		}

		.product-detail__content p {
			font-size: 1.4rem;
			color: var(--black2);
			line-height: 2.4rem;
			margin-bottom: 1.6rem;
		}

		.product__info .select {
			display: flex;
			align-items: center;
			justify-content: space-between;
			margin-bottom: 1.6rem;
		}

		.select .select-box {
			background: none;
			width: 18rem;
			border: none;
			padding: 0.5rem 1rem;
			border-bottom: 1px solid var(--primaryColor);
		}

		.select .select-box:focus {
			outline: none;
		}

		.select__option label {
			font-size: 1.4rem;
			color: var(--black3);
			display: inline-block;
			padding-bottom: 1rem;
		}

		.input-counter {
			display: flex;
			align-items: center;
		}

		.input-counter div {
			display: flex;
		}

		.input-counter li span {
			font-size: 1.4rem;
			color: var(--black3);
			margin-right: 1rem;
		}

		.minus-btn,
		.plus-btn {
			display: inline-block;
			border: 1px solid var(--primaryColor);
			padding: 0.8rem 1rem;
			margin-right: 0;
			cursor: pointer;
		}

		.plus-btn {
			border-left-color: transparent;
		}

		.minus-btn {
			border-right-color: transparent;
		}

		.counter-btn {
			width: 7rem;
			padding: 1rem 0;
			text-align: center;
			border: 1px solid var(--primaryColor);
		}

		.input-counter svg {
			width: 1.8rem;
			height: 1.8rem;
			fill: var(--grey3);
		}

		.product__info li {
			margin-bottom: 1.6rem;
		}

		.product__info .in-stock {
			color: var(--green);
		}

		.product__info li a {
			font-size: 1.4rem;
			color: var(--black2);
		}

		.product-info__btn span svg {
			width: 1.8rem;
			height: 1.8rem;
		}

		.product-info__btn {
			display: flex;
			align-items: center;
		}

		.product-info__btn a {
			display: flex;
			align-items: center;
			font-size: 1.2rem;
			color: var(--black2);
		}

		.product-info__btn a:not(:last-child) {
			margin-right: 1rem;
		}

		/* Product Details Bottom */

		.detail__content {
			position: relative;
			height:20rem;
		}

		.detail__content .content {
			position: absolute;
			transform: translate(0, 25vh);
			transition: all 0.6s ease-in-out;
			opacity: 0;
			visibility: hidden;
			z-index: 555;
		}

		.detail__content .content.active {
			transform: translate(0, 0vh);
			opacity: 1;
			visibility: visible;
		}

		#shipping h3,
		#shipping p {
			color: var(--grey2);
		}

		#shipping p,
		#description p {
			padding: 1.6rem 0;
			line-height: 2.8rem;
		}

		#reviews {
			font-size: 3rem;
			font-weight: 500;
			color: var(--grey2);
			border-bottom: 1px solid var(--primaryColor);
		}

		#description p,
		#description li,
		#description h2 {
			color: var(--grey2);
		}

		#description h2 {
			font-weight: 500;
			padding: 1rem 0;
		}

		#description li {
			line-height: 3rem;
			/*color: vaf;*/
		}

		#description ol {
			padding-left: 1.6rem;
		}

		/* Product Details Bottom Media Query*/

		@media only screen and (max-width: 1200px) {
			.detail__content {
				height:20rem;
			}
		}

		@media only screen and (max-width: 998px) {
			.detail__content {
				height: 20rem;
			}
		}

		@media only screen and (max-width: 768px) {
			.detail__content {
				height: 20rem;
			}
		}

		@media only screen and (max-width: 568px) {
			.detail__content {
				height: 20rem;
			}
		}

		@media only screen and (max-width: 450px) {
			.detail__content {
				height:20rem;
			}
		}

		@media only screen and (max-width: 340px) {
			.detail__content {
				height: 20rem;
			}
		}

		/*
        ======================
        Product Details Media Query
        ======================
        */
		@media only screen and (max-width: 998px) {
			.select .select-box {
				width: 15rem;
			}

			.select__option label {
				display: block;
			}

			.product-info__btn {
				flex-wrap: wrap;
			}

			.product-details__btn a {
				padding: 1rem 2.5rem;
				font-size: 1.4rem;
			}

			.picture__container {
				width: 60%;
			}
		}

		@media only screen and (max-width: 768px) {
			.details__container--left {
				flex-direction: column-reverse;
				text-align: center;
			}

			.product__pictures {
				margin-top: 2rem;
				flex-direction: row;
				justify-content: center;
			}

			.pictures__container {
				width: 50%;
				border-right-color: var(--primaryColor);
			}

			.pictures__container:not(:last-child) {
				border-bottom-color: var(--primaryColor);
			}

			.product-detail__container {
				grid-template-columns: 1fr;
				row-gap: 5rem;
			}

			.product__info .select {
				align-items: flex-start;
				flex-direction: column;
			}

			.select .select-box {
				display: block;
				width: 20rem;
			}
		}

		@media only screen and (max-width: 568px) {
			.select .select-box {
				width: 15rem;
			}

			.input-counter {
				align-items: flex-start;
				flex-direction: column;
			}

			.input-counter div {
				margin-top: 1rem;
			}
		}

		@media only screen and (max-width: 400px) {
			.product-details__btn a {
				padding: 0.7rem 2rem;
				font-size: 1.2rem;
			}

			.product-details__btn .add span,
			.product-details__btn .buy span {
				margin-right: 0rem;
			}

			.product__review .rating1 svg {
				width: 1.4rem;
				height: 1.4rem;
			}
		}

		/*
        ======================
        Cart Area
        ======================
        */
		.cart__area {
			padding-bottom: 5rem;
		}

		.cart__form {
			display: block;
		}

		.product__thumbnail img {
			width: 10rem;
			height: 15rem;
			object-fit: contain;
		}

		.remove__cart-item svg {
			width: 1.6rem;
			height: 1.6rem;
			fill: var(--grey2);
			transition: all 0.3s ease-in-out;
		}

		.cart__table {
			display: block;
			width: 100%;
			margin-bottom: 4rem;
			overflow-x: auto;
		}

		.cart__table .table {
			border-collapse: collapse;
			width: 100%;
			max-width: 150rem;
		}

		.cart__table .table th {
			font-weight: 500;
			font-style: normal;
			text-align: left;
			padding: 1.8rem 0;
		}

		.cart__table .table td {
			vertical-align: middle;
			padding: 1.8rem 0;
			white-space: nowrap;
			border-bottom: 1px solid var(--primaryColor);
		}

		.cart__table .table thead {
			border-bottom: 1px solid var(--primaryColor);
		}

		.product__name a:link,
		.product__name a:visited {
			font-size: 1.5rem;
			color: var(--black2);
		}

		.product__name small {
			color: var(--grey);
			margin-top: 1.6rem;
		}

		.product__subtotal .price {
			display: inline;
		}

		.product__subtotal .price .new__price,
		.product__price .price .new__price {
			font-size: 1.6rem;
		}

		.remove__cart-item {
			margin-left: 1rem;
		}

		.remove__cart-item:hover svg {
			fill: var(--orange);
		}

		.cart-btns {
			display: flex;
			justify-content: space-between;
			border-bottom: 1px solid var(--primaryColor);
			padding-bottom: 4rem;
			margin: 3rem 0;
		}

		.continue__shopping a:link,
		.continue__shopping a:visited {
			font-size: 1.5rem;
			padding: 1.2rem 3rem;
			color: var(--black);
			text-transform: uppercase;
			border: 1px solid var(--black);
			transition: all 0.4s ease-in-out;
		}

		.continue__shopping a:hover {
			background-color: var(--black);
			color: var(--white);
			border: 1px solid var(--black);
		}

		.cart__totals {
			max-width: 60rem;
			/* height: 30rem; */
			margin: 5rem auto 0 auto;
			color: var(--black5);
			padding: 4rem 5rem;
			background-color: rgba(255, 255, 255, 0.8);
			box-shadow: 0px 2px 30px 10px rgba(0, 0, 0, 0.09);
			border-radius: 0.5rem;
		}

		.cart__totals h3 {
			font-weight: 500;
			font-size: 1.8rem;
			margin-bottom: 1.6rem;
		}

		.cart__totals .new__price {
			font-size: 1.5rem;
		}

		.cart__totals ul {
			margin-bottom: 2.5rem;
		}

		.cart__totals li {
			border: 1px solid var(--primaryColor);
			padding: 1.4rem 0.5rem;
			position: relative;
		}

		.cart__totals li:not(:last-child) {
			border-bottom-color: transparent;
		}

		.cart__totals li span {
			position: absolute;
			right: 1rem;
		}

		.cart__totals a:link,
		.cart__totals a:visited {
			font-size: 14px;
			padding: 1.2rem 3rem;
			color: var(--black);
			text-transform: uppercase;
			border: 1px solid var(--black);
			transition: all 0.4s ease-in-out;
		}

		.cart__totals a:hover {
			background-color: var(--black);
			color: var(--white);
			border: 1px solid var(--black);
		}

		/*
        ======================
        Cart Area Media Query
        ======================
        */

		@media only screen and (max-width: 1200px) {

			.minus-btn,
			.plus-btn {
				padding: 0.6rem 0.8rem;
				margin-right: 0;
			}

			.counter-btn {
				width: 4rem;
				padding: 1rem 0;
			}

			.input-counter svg {
				width: 1.5rem;
				height: 1.5rem;
			}
		}
		.header__actions{
			text-align: right;
			text-decoration: none;
		}
		.header__top{
			margin-bottom: 0;
			font-size: 13px;
			text-align: left;
			color: #5b5b5b;
			line-height: 30px;
			border-bottom: solid 1px rgb(182, 181, 181);
		}
		.header__top p{
			margin-bottom: 0;
			line-height: 20px;
			padding-top: 3px;
		}
		.header__actions a{
			display: inline-block;
			padding: 0 15px;
			font-family: "Archivo Narrow", sans-serif;
			font-size: 13px;
			text-align: center;
			color: #8d8d8d;
			text-transform: uppercase;
			line-height: 30px;
			border-left: 1px solid #e5e5e5;
			vertical-align: top;
		}

		.header__actions a:hover{
			background-color: var(--grey4);
			text-decoration: none;
			color: rgb(79, 228, 158);
		}

		/*
        ======================
        Check Out
        ======================
        */
		.ps-container{
			margin: 0 auto;
		}


		/*
        ====================
        Index
        ====================
        */
		.collection__box{
			box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
			border-radius: 10px;
		}
		.product{
			box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
			border-radius: 10px;
		}
		.pl-20{
			padding-left: 20px;
		}
		.pl-30{
			padding-left: 30px;
		}
		.pl-40{
			padding-left: 40px;
		}
		.pr-20{
			padding-right: 20px;
		}
		.pr-30{
			padding-right: 30px;
		}
		.pr-40{
			padding-right: 40px;
		}


		/*Star Rating*/
		.rating {
			width: 226px;
			margin: 0 auto 1em;
			font-size: 45px;
			overflow:hidden;
		}
		.rating input {
			float: right;
			opacity: 0;
			position: absolute;
		}
		.rating a,
		.rating label {
			float:right;
			color: #aaa;
			text-decoration: none;
			-webkit-transition: color .4s;
			-moz-transition: color .4s;
			-o-transition: color .4s;
			transition: color .4s;
		}
		.rating label:hover ~ label,
		.rating input:focus ~ label,
		.rating label:hover,
		.rating a:hover,
		.rating a:hover ~ a,
		.rating a:focus,
		.rating a:focus ~ a		{
			color: orange;
			cursor: pointer;
		}

		.glide__slide{
			width: 259px!important;
		}
		.price-list{
			font-size: 17px;
			color: red;
			font-weight: 600;
		}
		.nav__item:hover{
			border-bottom: solid 3px dodgerblue;
		}
	</style>
</head>

<body>
	<%@ include file="/WebContent/views/header_nav.jsp"%>
	<!-- Hero -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="3000">
				<img
					src="https://petsily.vn/wp-content/uploads/2019/10/banner-petsily.jpg"
					class="d-block w-100" alt="Banner 1">
			</div>
			<div class="carousel-item" data-interval="3000">
				<img
					src="https://bizweb.dktcdn.net/100/047/359/themes/66510/assets/women_banner.png?1543757106135"
					class="d-block w-100" alt="Banner 2">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!-- End Hero -->

	<!-- Main -->
	<main id="main">
		<div class="container">
			<!-- Collection -->
			<section id="collection" class="section collection">
				<div class="collection__container" data-aos="fade-up"
					data-aos-duration="1200">
					<div class="collection__box">
						<div class="img__container">
							<img class="collection_02" src="./images/corgi.png" alt="">
						</div>
						<div class="collection__content">
							<div class="collection__data">
								<span></span>
								<h1>CORGI</h1>
								<a href="#shop">SHOP NOW</a>
							</div>
						</div>
					</div>
					<div class="collection__box">
						<div class="img__container">
							<img class="collection_01" src="./images/thuc-an.png" alt="">
						</div>
						<div class="collection__content">
							<div class="collection__data">
								<span></span>
								<h1>GANADOR</h1>
								<a href="javascript:">SHOP NOW</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Latest Products -->
			<section class="section latest__products" id="latest">
				<div class="title__container">
					<div class="section__title active" data-id="Latest Products">
						<span class="dot"></span>
						<h1 class="primary__title">Tất cả phụ kiện</h1>
					</div>
				</div>
				<div class="container" data-aos="fade-up" data-aos-duration="1200">
					<div class="glide" id="glide_2">
						<div class="glide__track" data-glide-el="track">
							<ul class="glide__slides latest-center">

								<c:forEach var="listAcc" items="${listAcc }">
									<li class="glide__slide"
										style="margin-bottom: 24px; width: 262.5px;">
										<div class="product">
											<div class="product__header">
												<img style="border-radius: 10px;"
													src="${listAcc.getImgs().get(listAcc.getImgs().size()-1).getImgAvartar() }"
													alt="product">
											</div>
											<div class="product__footer">
												<h3>${listAcc.getName() }</h3>
												<div class="rating1">
													<svg>
														<use xlink:href="images/sprite.svg#icon-star-full"></use>
													</svg>
													<svg>
														<use xlink:href="images/sprite.svg#icon-star-full"></use>
													</svg>
													<svg>
														<use xlink:href="images/sprite.svg#icon-star-empty"></use>
													</svg>
													<svg>
														<use xlink:href="images/sprite.svg#icon-star-empty"></use>
													</svg>
													<svg>
														<use xlink:href="images/sprite.svg#icon-star-empty"></use>
													</svg>
												</div>
												<div class="product__price">
													<h4 class="price-list">${listAcc.displayPrice() }</h4>
												</div>
											</div>
											<ul>
												<li>
													<a data-tip="Quick View" data-place="left" href="acc-detail/${listAcc.getId() }">
														<svg>
                            								<use xlink:href="images/sprite.svg#icon-eye"></use>
                          								</svg>
													</a>
												</li>
											</ul>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>

						<div class="glide__arrows" data-glide-el="controls">
							<button class="glide__arrow glide__arrow--left" data-glide-dir="<">
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-arrow-left2"></use>
                				</svg>
							</button>
							<button class="glide__arrow glide__arrow--right" data-glide-dir=">">
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-arrow-right2"></use>
                				</svg>
							</button>
						</div>
					</div>
				</div>
			</section>

			<section class="category__section section" id="category">
				<div class="tab__list">
					<div class="title__container tabs">
						<div class="section__titles category__titles ">
							<div class="section__title filter-btn active" data-id="All Products">
								<span class="dot"></span>
								<h1 class="primary__title">Tất cả thú cưng</h1>
							</div>
						</div>
						<div class="section__titles">
							<div class="section__title filter-btn" data-id="Trending Products">
								<span class="dot"></span>
								<h1 class="primary__title">Thú cưng hot</h1>
							</div>
						</div>

						<div class="section__titles">
							<div class="section__title filter-btn" data-id="Special Products">
								<span class="dot"></span>
								<h1 class="primary__title">Thú cưng đặc biệt</h1>
							</div>
						</div>
					</div>
				</div>
				<div class="category__container" data-aos="fade-up"
					data-aos-duration="1200">
					<div class="category__center">
						<c:forEach var="list" items="${list }">
							<div class="product">
								<div class="product__header">
									<img style="border-radius: 10px;" src="${list.getImgs().get(list.getImgs().size()-1).getImgAvartar() }" alt="product">
								</div>
								<div class="product__footer">
									<h3>${list.getPetName() }</h3>
									<div class="rating1">
										<svg>
                          					<use xlink:href="images/sprite.svg#icon-star-full"></use>
                        				</svg>
										<svg>
                          					<use xlink:href="images/sprite.svg#icon-star-full"></use>
                        				</svg>
										<svg>
                          					<use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        				</svg>
										<svg>
                          					<use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        				</svg>
										<svg>
                          					<use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        				</svg>
									</div>
									<div class="product__price">
										<h4 class="price-list">${list.displayPrice() }</h4>
									</div>
								</div>
								<ul>
									<li>
										<a data-tip="Quick View" data-place="left" href="pet-detail/${list.getId() }">
											<svg>
                            					<use xlink:href="images/sprite.svg#icon-eye"></use>
                          					</svg>
										</a>
									</li>
								</ul>
							</div>
						</c:forEach>
					</div>
				</div>
			</section>

			<!-- Facility Section -->
			<%@ include file="/WebContent/views/section-facility.jsp"%>


			<!-- Testimonial Section -->
			<section class="section testimonial" id="testimonial">
				<div class="testimonial__container">
					<div class="glide" id="glide_4">
						<div class="glide__track" data-glide-el="track">
							<ul class="glide__slides">
								<li class="glide__slide">
									<div class="testimonial__box">
										<div class="client__image">
											<img src="images/profile1.jpg" alt="profile">
										</div>
										<p>Lorem, ipsum dolor sit amet consectetur adipisicing
											elit. Recusandae fuga hic nesciunt tempore quibusdam
											consequatur eligendi unde officia ex quae.ipsum dolor sit
											amet consectetur adipisicing elit. Recusandae fuga hic
											nesciunt tempore quibusdam consequatur eligendi unde officia
											ex quae.</p>
										<div class="client__info">
											<h3>John Smith</h3>
											<span>Founder at Apple</span>
										</div>
									</div>
								</li>
								<li class="glide__slide">
									<div class="testimonial__box">
										<div class="client__image">
											<img src="images/profile2.jpg" alt="profile">
										</div>
										<p>Lorem, ipsum dolor sit amet consectetur adipisicing
											elit. Recusandae fuga hic nesciunt tempore quibusdam
											consequatur eligendi unde officia ex quae.ipsum dolor sit
											amet consectetur adipisicing elit. Recusandae fuga hic
											nesciunt tempore quibusdam consequatur eligendi unde officia
											ex quae.adipisicing elit. Recusandae fuga hic nesciunt
											tempore quibusdam consequatur eligendi unde officia ex quae.</p>
										<div class="client__info">
											<h3>John Smith</h3>
											<span>Founder at Apple</span>
										</div>
									</div>
								</li>
							</ul>
						</div>

						<div class="glide__bullets" data-glide-el="controls[nav]">
							<button class="glide__bullet" data-glide-dir="=0"></button>
							<button class="glide__bullet" data-glide-dir="=1"></button>
						</div>
					</div>
				</div>
			</section>

			<!--New Section  -->
			<section class="section news" id="news">
				<div class="container">
					<div class="title__container">
						<div class="section__titles">
							<div class="section__title active">
								<span class="dot"></span>
								<h1 class="primary__title">Chia sẻ từ khách hàng</h1>
							</div>
						</div>
					</div>
					<div class="news__container">
						<div class="glide" id="glide_5">
							<div class="glide__track" data-glide-el="track">
								<ul class="glide__slides">
									<c:forEach var="blog" items="${blog }">
										<li class="glide__slide">
											<div class="new__card">
												<div class="card__header">
													<img src="${blog.getImg() }" alt="">
												</div>
												<div class="card__footer">
													<h3>${blog.getContent() }</h3>
													<span>Đăng bởi <strong>${blog.getAccount().getUsername()}</strong></span>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
<%--			</section>--%>

			<!-- NewsLetter -->
			<section class="section newsletter" id="contact">
				<div class="container">
					<div class="newsletter__content">
						<div class="newsletter__data">
							<h3>ĐĂNG KÝ ĐỂ THEO DÕI THÊM VỀ CHÚNG TÔI</h3>
							<p>Một câu ngắn mô tả những gì ai đó sẽ nhận được bằng cách
								đăng ký</p>
						</div>
						<form action="#">
							<input type="email" placeholder="Điền Email của bạn vào đây"
								class="newsletter__email"> <a class="newsletter__link"
								href="javascript:">Đăng ký</a>
						</form>
					</div>
				</div>
			</section>
		</div>
	</main>

	<!-- End Main -->

	<!-- Footer -->
	<%@ include file="/WebContent/views/footer_client.jsp"%>
	<!-- End Footer -->


	<!-- Go To -->

	<a href="#header" class="goto-top scroll-link"> <svg>
      <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
    </svg>
	</a>


	<!-- Glide Carousel Script -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

	<!-- Animate On Scroll -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

	<!-- Custom JavaScript -->
	<script src="js/index.js"></script>
	<script src="js/slider.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/sweat-alert.js"></script>

</body>
<script>
	fomartNumberList();
	function fomartNumberList(){
		let priceList = document.getElementsByClassName("price-list");
		for(let i =0; i <priceList.length; i++){
			let priceListF = priceList[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
			priceList[i].innerHTML = priceListF +" đ";
		}
	}
</script>
</html>
