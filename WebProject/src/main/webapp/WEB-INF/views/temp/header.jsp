<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="nav">
	<div class="nav-left">
		<a href="/main/home" style="text-decoration: none">
			<div class="logo">logo</div>
		</a>
	</div>
	<form class="search-bar">
		<span class="search-bar__icon"><i class="fas fa-search"></i></span> <input
			class="search-bar__item" type="text" placeholder="search" /> <input
			class="search-bar__btn" type="submit" value="검색" />
	</form>
	<div class="nav-right">
		<div class="nav-right__item">
			<a href="/main/home">Resturant</a>
		</div>
		<div class="nav-right__item">
			<a href="#">Chatt</a>
		</div>
		<div class="action">
			<div class="profile" onclick="toggleMenu()">
				<c:if test='${loginUser == null }'>
					<img src="https://png.pngtree.com/png-vector/20190826/ourlarge/pngtree-basic-png-image_1696860.jpg" alt="프로필이미지" />
				</c:if>
				<c:if test='${loginUser !=null}'>
					<img src="${loginUser.u_profile}" alt="프로필이미지" />
				</c:if>
			</div>
			<div class="menu">
				<h3>
					${loginUser.u_Nm}<br />
				</h3>
				<ul>
					<li><i class="fas fa-user-alt"></i><a href="#">My profile</a></li>
					<li><i class="far fa-edit"></i><a href="#">Edit profile</a></li>
					<li><i class="fas fa-cog"></i><a href="#">Setting</a></li>
					<c:if test="${loginUser == null }">
						<li><i class="fas fa-sign-out-alt"></i><a href="/user/login">login</a></li>
					</c:if>
					<c:if test="${loginUser != null }">
						<li><i class="fas fa-sign-out-alt"></i><a href="/user/logout">Logout</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</header>