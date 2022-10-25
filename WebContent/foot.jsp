<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
    <div class="ft_logo"><img src="./img/logo_footer.png" alt=""></div>
    <div class="ft_box">
        <nav class="fnb">
            <a href="member01.html">저작권안내</a>
            <a href="member02.html" class="dpc">개인정보 처리방침</a>
            <a href="member03.html">이용약관</a>
        </nav>
        <p class="addr">고객센터 : 080-600-6000(승용), 080-200-6000(상용)</p>
        <p class="copyright">COPYRIGHT ⓒ HYUNDAI MOTOR COMPANY. ALL RIGHTS RESERVED.</p>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">Family Site</option>
            <option value="https://www.hyundai.co.kr/main/mainRecommend">현대자동차그룹</option>
            <option value="https://www.genesis.com/kr/ko/main.html">제네시스닷컴</option>
            <option value="https://casper.hyundai.com/">캐스퍼 온라인</option>
            <option value="https://www.hyundai-n.com/">N 브랜드</option>
            <option value="https://gbic.hyundai.com/main.do">글로벌경영연구소</option>
            <option value="https://motorstudio.hyundai.com/itg/ln/main.do?lang=ko">현대 모터스튜디오</option>
            <option
                value="https://kids.hyundai.com/index.kids;jsessionid=wDMzRJ1rajys6wT8Lj3avTevhGSoafX68bH0XxpyBlRUVEnwboL5yS0LaR8oHnwp.HWayKids_WAS02_servlet_engine1">
                키즈현대</option>
            <option value="http://winwin.hyundai.com/coportal/?WT.ac=family_site_winwin">동반성장 사이트</option>
            <option value="https://drivingexperience.hyundai.co.kr/kr/main">현대 드라이빙 아카데미</option>
            <option value="https://collection.hyundai.com/">현대 컬렉션 온라인샵</option>
            <option value="https://hear.hyundai.com/main/index.do">고객소통채널 H-ear</option>
            <option value="http://www.hyundai-motorsfc.com/?WT.ac=family_site_motorsfc">전북 현대모터스 축구단
            </option>
        </select>
    </div>
    <script>
	function sel_link(sel) {
    location.href = sel.value;
	}
	</script>
</div>