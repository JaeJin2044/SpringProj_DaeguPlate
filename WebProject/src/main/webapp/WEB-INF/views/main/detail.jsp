<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="top_img" onclick="modalHandle()">
	<img src="${detail_item.m_img1}" alt="" />
	<img src="${detail_item.m_img2}" alt="" />
	<img src="${detail_item.m_img3}" alt="" />
	<img src="${detail_item.m_img4}" alt="" />
</div>
<div class="modal-wrapper">
	<div class="modal">
		<div class="modal-img">
			<img src="./image/01.jpg" alt="" />
		</div>
	</div>
</div>
<div class="section-wrapper">
	<div class="title-wrap">
		<div class="detail_title">
			<div class="title">
				<span class="restaurant_name">${detail_item.m_title}</span>
				<span class="rating">${detail_item.m_starPoint}</span>
			</div>
			<c:if test="${loginUser != null}">
				<a class="wrate-review" href="#" onclick="reviewModalHandle()">
					<i class="fas fa-pencil-alt"></i>
					<div>리뷰쓰기</div>
				</a>
			</c:if>
		</div>
		<div class="cnt">
			<span class="view_cnt"><i class="fas fa-eye"></i>${detail_item.m_viewCount}</span>
			<span class="review_cnt"><i class="fas fa-pen"></i>50</span>
		</div>
		<div id="data" data-loginuserpk="${sessionScope.loginUser.u_Pk}" data-pk="${requestScope.detail_item.m_pk}"></div>
		<div class="detail_description">
			<table class="info">
				<c:if test="${detail_item.m_addrRoad != null}">
				<tr>
					<th>주소</th>
					<td>${detail_item.m_addrRoad}</td>
				</tr>
				</c:if>
				<c:if test="${detail_item.m_addrJibun != null}">
				<tr>
					<th>지번</th>
					<td>${detail_item.m_addrJibun}</td>
				</tr>
				</c:if>
				<c:if test="${detail_item.m_phone != null}">
				<tr>
					<th>전화번호</th>
					<td>${detail_item.m_phone}</td>
				</tr>
				</c:if>
				<c:if test="${detail_item.m_category != null}">
				<tr>
					<th>음식종류</th>
					<td>${detail_item.m_category}</td>
				</tr>
				</c:if>
				<c:if test="${detail_item.m_price != null}">
				<tr>
					<th>가격대</th>
					<td>${detail_item.m_price}</td>
				</tr>
				</c:if>
				<c:if test="${detail_item.m_parking != null}">
				<tr>
					<th>주차</th>
					<td>${detail_item.m_parking}</td>
				</tr>
				</c:if>
				<c:if test="${detail_item.m_workingTime != null}">
				<tr>
					<th>영업시간</th>
					<td>${detail_item.m_workingTime}</td>
				</tr>
				</c:if>
			</table>
		</div>
		<div class="review">
			<div class="review-head">
				<h2 class="review-title"><a href="#">리뷰(total)</a></h2>
				<ul>
					<li>
						<a href="#">전체(total)</a>
					</li>
					<li>
						<a href="#">좋았다(total)</a>
					</li>
					<li>
						<a href="#">보통이다(total)</a>
					</li>
					<li>
						<a href="#">별로였다(total)</a>
					</li>
				</ul>
			</div>
			
			<div id="cmtList">
			</div>
			<div><input type="button" id='moreList'>더보기</div>
		</div>
	</div>
	
	
	
	<div class="map-section">
		<div class="map-modal-wrapper">
			<div class="map-modal">
				<div class="map-modal-img">
					<img src="./image/map.png" alt="" />
				</div>
			</div>
		</div>
		<div class="map-img" onclick="mapModalHandle()">
			<img class="map-modal-img" src="./image/map.png" alt="" />
		</div>
	</div>
</div>

<!-- 수정 모달  -->
<div id="modal" class="hide">				
	<div class="modal-content">
		<span id="modClose">X</span>
		<input type="text" id="modCtnt">
		<input type="button" id="modBtn" value="수정">
	</div>
</div>



<!-- 리뷰 작성 모달  -->
<div class="review-wrap">
	<div class="review-modal">
		<div class="review-text">
			<form class="review-form" action="">
				<div class="label-wrap">
					<label class="radio-label" for="option1">
						<input type="radio" value="option1" name="radio-box" id="option1" />
						<div>
							<i class="far fa-laugh-squint"></i>
							<div>좋았다</div>
						</div>
					</label>
					<label class="radio-label" for="option2">
						<input type="radio" value="option2" name="radio-box" id="option2" />
						<div>
							<i class="far fa-laugh-squint"></i>
							<div>보통이다</div>
						</div>
					</label>
					<label class="radio-label" for="option3">
						<input type="radio" value="option3" name="radio-box" id="option3" />
						<div>
							<i class="far fa-laugh-squint"></i>
							<div>별로였다</div>
						</div>
					</label>
				</div>
					<!-- <input class="form-item form-title" type="text" placeholder="제목" /> -->
					<textarea class="form-item form-text" type="text" placeholder="내용" id="rContent"></textarea>
					<input class="form-item form-submit" type="button" value="등록" id='rWrite' />
			</form>
		</div>
	</div>
</div>








<%-- <!--  ----------------------------------- -->
<div class="title-wrap">
				<div class="detail_title" >
				<div id="data" data-loginuserpk="${sessionScope.loginUser.u_Pk}" data-pk="${requestScope.detail_item.m_pk}"></div>
					${detail_item.m_title}
					<span class="rating">${detail_item.m_title}</span>
					<div class="detail_description"></div>
					<div class="cnt">
						<span class="view_cnt"><i class="fas fa-eye"></i>조회수</span>
						<span class="review_cnt"><i class="fas fa-pen"></i>리뷰수</span>
					</div>
				</div>
			</div> 
<h2>여기서부터 댓글리스트 </h2>
	<hr />	
	<div id="cmtList">
	
	</div>
	<button id="moreList">더보기</button>
	
	<c:if test="${sessionScope.loginUser != null}">
		<h4>리뷰작성</h4>
		<div>
			<form id="cmtFrm">
				<div><input type="text" name="c_content" ></div>
				<div><input type="button" name="cmtWriteBtn" value="리뷰등록"></div>
			</form>
		</div>
		
		<div id="modal" class="hide">
			<div class="modal-content">
				<span id="modClose">X</span>
				<input type="text" id="modCtnt">
				<input type="button" id="modBtn" value="수정">
			</div>
		</div>
	</c:if>  --%>