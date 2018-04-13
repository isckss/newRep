<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		<div class="visual">
			<ul id="bxslider" class="bxslider">
			<c:forEach var="item" items="${mainContentsList}" varStatus="status">
			<li>
				<a href="<c:choose><c:when test="${empty item.link}">#</c:when><c:otherwise>${item.link}</c:otherwise></c:choose>">
					<figure>
						<img src="${item.imgPath}" alt="상단_컨텐츠${status.index}">
						<figcaption>
							<strong class="eps cls_langType">${item.title}</strong>
							<p class="eps cls_langType">${item.description}</p>
							<c:if test="${not empty item.periodStart and not empty item.periodEnd}">
							<span lang="en" class="date">${item.periodStart} ~ ${item.periodEnd}</span>
							</c:if>
						</figcaption>
					</figure>
				</a>
			</li>
			</c:forEach>
			</ul>
			<div class="paging_area">
				<img src="resources/img/visual_wspace.png" alt="">
				<div class="paging">
					<div class="progress">
						<div id="progressBar" class="progress_bar">
							<span class="pit" style="left:0"></span>
						</div>
					</div>
					<div class="num"><span lang="en" id="count" class="count">1</span> &#47; <span lang="en" id="total" class="total">0</span></div>
				</div>
			</div>
			<a href="#" data-private="desktop" id="visualBtnPrev" class="btn btn_prev">prev</a>
			<a href="#" data-private="desktop" id="visualBtnNext" class="btn btn_next">next</a>
		</div>
		<div id="content">
			<div class="inr">
				<!-- exhibition -->
				<div class="exhibition">
					<h2 class="blind">본문 컨텐츠</h2>
					<div class="art">
						<section class="group group_exhibition">
							<h2 lang="en">EXHIBITION</h2>
							<ul>
							<li><a href="/exhibition/current/view.do">현재전시</a></li>
							<li><a href="/exhibition/expected/view.do">예정전시</a></li>
							<li><a href="/exhibition/past/view.do">지난전시</a></li>
							<li><a href="/exhibition/collections/view.do">소장품</a></li>
							</ul>
							<c:forEach var="item" items="${mainExhibitionList}" varStatus="status">
							<figure>
								<a href="<c:choose><c:when test="${empty item.link}">#</c:when><c:otherwise>${item.link}</c:otherwise></c:choose>">
									<div class="pic">
										<img src="${item.imgPath}" alt="하단_전시${status.index}">
										<span class="mask"></span>
									</div>
								</a>
								<figcaption>
									<strong>${item.description}</strong>
									<p class="cls_langType">${fn:replace(item.title, CRLF, REPLACE_TAG)}</p>
									<c:if test="${not empty item.periodStart and not empty item.periodEnd}">
									<span lang="en" class="date">${item.periodStart} ~ ${item.periodEnd}</span>
									</c:if>
								</figcaption>
							</figure>
							</c:forEach>
						</section>
						<section class="group group_program">
							<h2 lang="en">PROGRAM</h2>
							<ul>
							<li><a href="/program/general/view.do">일반인 프로그램</a></li>
							<li><a href="/program/exhibition/view.do">전시연계 프로그램</a></li>
							<li><a href="/program/tour/view.do">투어 프로그램</a></li>
							</ul>
							<c:forEach var="item" items="${mainProgramList}" varStatus="status">
							<figure>
								<a href="<c:choose><c:when test="${empty item.link}">#</c:when><c:otherwise>${item.link}</c:otherwise></c:choose>">
									<div class="pic">
										<img src="${item.imgPath}" alt="하단_프로그램${status.index}">
										<span class="mask"></span>
									</div>
								</a>
								<figcaption>
									<strong>${item.description}</strong>
									<p class="cls_langType">${fn:replace(item.title, CRLF, REPLACE_TAG)}</p>
									<c:if test="${not empty item.periodStart and not empty item.periodEnd}">
									<span lang="en" class="date">${item.periodStart} ~ ${item.periodEnd}</span>
									</c:if>
								</figcaption>
							</figure>
							</c:forEach>
						</section>
						<section class="group group_museum">
							<h2 lang="en">MUSEUM</h2>
							<ul>
							<li><a href="/museum/art/view.do">미술관 소개</a></li>
							<li><a href="/museum/foundation/view.do">재단 소개</a></li>
							<li><a href="/museum/history/view.do">세화 히스토리</a></li>
							<li><a href="/museum/tour/view.do">미술관 즐기기</a></li>
							</ul>
							<c:forEach var="item" items="${mainMuseumList}" varStatus="status">
							<figure>
								<a href="<c:choose><c:when test="${empty item.link}">#</c:when><c:otherwise>${item.link}</c:otherwise></c:choose>">
									<div class="pic">
										<img src="${item.imgPath}" alt="하단_프로그램${status.index}">
										<span class="mask"></span>
									</div>
								</a>
								<figcaption>
									<strong>${item.description}</strong>
									<p class="cls_langType">${fn:replace(item.title, CRLF, REPLACE_TAG)}</p>
									<span lang="en" class="price"></span>
								</figcaption>
							</figure>
							</c:forEach>
							<figure>
								<a href="/program/tour/view.do">
									<div class="pic">
										<picture>
											<source media="(max-width:768px)" srcset="resources/img/@tmp_img_m.bnr_museum.jpg">
											<img src="resources/img/@tmp_img_bnr_museum.jpg" alt="">
										</picture>
										<span class="mask"></span>
									</div>
								</a>
							</figure>
						</section>
						<c:if test="${!empty mainEventList}">
						<section class="group group_event">
							<h2 lang="en">EVENT</h2>
							<ul id="bxslider2" class="bxslider2">
							<c:forEach var="item" items="${mainEventList}" varStatus="status">
							<li>
								<a href="/news/event/detail.do?seq=${item.seq}">
									<figure>
										<p class="pic"><img src="${item.imgPath}" alt="이벤트 이미지${status.index}"></p>
										<figcaption>
											<strong>${item.title}</strong>
											<p class="eps">${item.subTitle}</p>
											<span class="date">${item.eventStart} ~ ${item.eventEnd}</span>
										</figcaption>
									</figure>
								</a>
							</li>
							</c:forEach>
							</ul>
						</section>
						</c:if>
					</div>
					<div class="visit">
						<section class="group group_visit">
							<div class="thumb">
								<img src="resources/img/@tmp_img_visit.jpg" alt="@임시이미지">
								<div class="rect_box">
									<strong lang="en">MEMBERSHIP</strong>
									<p class="txts">+&nbsp;&nbsp;미술관 방문 가입(가입비 무료)<br>+&nbsp;&nbsp;전시티켓 1회 할인<br>+&nbsp;&nbsp;아트상품 할인(바우처 제공)</p>
								</div>
							</div>
							<div class="desc">
								<h2 lang="en">VISIT</h2>
								<ul>
								<li><em>화요일~일요일</em><span><span lang="en">10:00 ~<br data-private="mobile" class="none_768"> 18:00</span><br class="none_768"><span>(매표마감</span> <span lang="en"> 17:30</span>)</span></li>
								<li>문화가 있는 날(매 달 마지막 주 수요일)<span lang="en">10:00 ~ 21:00</span></li>
								</ul>
								<p>매주 월요일은 휴관합니다.</p>
								<ul>
								<li class="addrs">서울특별시 종로구 새문안로 68 (신문로 1가) 3층 </li>
								<li lang="en" class="tel">(02) 2002.7787</li>
								<li class="email"><a href="mailto:sma@sehwamuseum.org" lang="en">sma@sehwamuseum.org</a></li>
								</ul>
								<div class="link">
									<a href="/visit/guide/view.do"><span>관람요금</span></a>
									<a href="/visit/membership/view.do"><span>멤버십</span></a>
								</div>
							</div>
						</section>

						<!-- news_letter -->
						<form id="form_newsLetter">
						<div class="news_letter">
							<div class="rect_box">
								<h3>NEWS LETTER</h3>
								<div class="srch">
									<input type="email" placeholder="이메일 주소를 입력해 주세요." id="id_newsLetterEmail" name="newsLetterEmail"><button type="submit" lang="en" id="id_newsLetterReq">OK</button>
								</div>
								<p class="desc">세화미술관의 뉴스레터를 받아보세요!</p><a href="#lyNewsLetter_Del" data-lypop="open" class="bt_pop">해지하기</a>
							</div>
						</div>
						</form>
						<!-- //news_letter -->
					</div>
					<!-- //visit -->

				</div>
				<!-- //exhibition -->

			</div>
		</div>
		
		<!-- 뉴스레터 구독 해지 :: [1] -->
		<div id="lyNewsLetter_Del" class="ly_pop ly_program_apply" style="display:none">
			<form id="form_newsLetterCancel">
			<div class="ly_pop_wrap">
				<div class="ly_pop_header">
					<h3 class="tit">뉴스레터 구독 해지</h3>
				</div>
				<div class="ly_pop_content">
					<div class="info_box">
						<div class="message_ground">
							<strong>세화미술관 뉴스레터 구독을 해지하실 수 있습니다.</strong>
							<p>현재 등록된 이메일 주소를 정확히 입력해주세요.</p>
						</div>
						<div class="mail_input">
							<input type="text" class="email" id="id_newsLetterCancelEmail" name="newsLetterCancelEmail">
							<a href="#none" class="btn_ok" id="id_newsLetterCancel">OK</a>
						</div>
					</div>
				</div>
			</div>
			<a href="#lyNewsLetter_Del" data-lypop="close" class="clse" id="id_lyNewsLetter_Del_close"><span class="blind">닫기</span></a>
			</form>
		</div>
		<!-- 뉴스레터 구독 해지 :: [1] -->

<script src="/resources/js/skrollr.min.js"></script>
<script type="text/javascript">
$(window).on('load', function() {
	SEWHA.visualFn(); 	//비주얼 이미지롤링
	SEWHA.bannerFn(); //배너 롤링	
});
$(function() {
	SEWHA.skrollrFn();	//페럴렉스 스크롤
	
    /** 뉴스레터 신청 **/
    $('#id_newsLetterReq').click(function(e) {
    	e.preventDefault();
    	$('#form_newsLetter').sehwaValidate({
			rules : {
				newsLetterEmail : { required: true, email : true }
			}
			, names : {
				newsLetterEmail : '이메일 주소'
			}
			, messages : {
				newsLetterEmail : '이메일 주소를 올바르게 입력하여 주세요'
			}
		});
		if(!$('#form_newsLetter').valid()) {
			return;
		}
    	$.sehwaPost('/newsLetterReq.do', { email : $('#id_newsLetterEmail').val() }, function(data) {
    		$('#id_newsLetterEmail').val('');
    		alert('세화미술관 뉴스레터 구독 신청이 완료 되었습니다.');
		});
    });
    /** 뉴스레터 신청 해지 **/
    $('#id_newsLetterCancel').click(function(e) {
    	e.preventDefault();
    	$('#form_newsLetterCancel').sehwaValidate({
			rules : {
				newsLetterCancelEmail : { required: true, email : true }
			}
			, names : {
				newsLetterCancelEmail : '이메일 주소'
			}
			, messages : {
				newsLetterCancelEmail : '이메일 주소를 올바르게 입력하여 주세요'
			}
		});
		if(!$('#form_newsLetterCancel').valid()) {
			return;
		}
		$.sehwaPost('/newsLetterCancel.do', { email : $('#id_newsLetterCancelEmail').val() }, function(data) {
    		alert('세화미술관 뉴스레터 구독 해지가 완료 되었습니다.');
    		$('#id_lyNewsLetter_Del_close').click();
    		$('#id_newsLetterCancelEmail').val('');
		});
    });
});

function notice_getCookie(name) {
  var nameOfCookie = name + "=";
  var x = 0;
  while (x <= document.cookie.length) {

      var y = (x + nameOfCookie.length);

      if (document.cookie.substring(x, y) == nameOfCookie) {
          if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
              endOfCookie = document.cookie.length;

          return unescape(document.cookie.substring(y, endOfCookie));
      }

      x = document.cookie.indexOf(" ", x) + 1;
      if (x == 0)
          break;
  }
  return "";
}
var sdate = new Date("2017/12/12 09:00:00");
var edate = new Date("2017/12/16 23:59:59");

if (Date.now() >= sdate && Date.now() <= edate) {

    if (notice_getCookie("popup_171212") != "done") {
        window.open("/popup/popup_171212.html", "popup_171212", "top=10,left=20,width=500,height=520");
    }
}
</script>