<%@ codepage="65001"  language="VBScript" %>
<%	Response.Charset="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<% 
	inputYn = Request.Form("inputYn")
	roadFullAddr = Request.Form("roadFullAddr")
	roadAddrPart1 = Request.Form("roadAddrPart1")
	roadAddrPart2 = Request.Form("roadAddrPart2")
	engAddr = Request.Form("engAddr")
	jibunAddr = Request.Form("jibunAddr")
	zipNo = Request.Form("zipNo")
	addrDetail = Request.Form("addrDetail")
	admCd = Request.Form("admCd")
	rnMgtSn = Request.Form("rnMgtSn")
	bdMgtSn = Request.Form("bdMgtSn")
	detBdNmList = Request.Form("detBdNmList")
	bdNm = Request.Form("bdNm")
	bdKdcd = Request.Form("bdKdcd")
	siNm = Request.Form("siNm")
	sggNm = Request.Form("sggNm")
	emdNm = Request.Form("emdNm")
	liNm = Request.Form("liNm")
	rn = Request.Form("rn")
	udrtYn = Request.Form("udrtYn")
	buldMnnm = Request.Form("buldMnnm")
	buldSlno = Request.Form("buldSlno")
	mtYn = Request.Form("mtYn")
	lnbrMnnm = Request.Form("lnbrMnnm")
	lnbrSlno = Request.Form("lnbrSlno")

	emdNo = Request.Form("emdNo")
	
%>
</head>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("주소입력화면 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

/*
			모의 해킹 테스트 시 팝업API를 호출하시면 IP가 차단 될 수 있습니다. 
			주소팝업API를 제외하시고 테스트 하시기 바랍니다.
*/
function init(){
	var url = location.href;
	var confmKey = "승인키";
	var resultType = "4"; // 도로명주소 검색결과 화면 출력내용, 1 : 도로명, 2 : 도로명+지번+상세보기(관련지번, 관할주민센터), 3 : 도로명+상세보기(상세건물명), 4 : 도로명+지번+상세보기(관련지번, 관할주민센터, 상세건물명)
	var inputYn= "<%=inputYn%>";
	if(inputYn != "Y"){
        document.form.confmKey.value = 'U01TX0FVVEgyMDIzMDYyMDE2MzMzMzExMzg2NTk=';
        document.form.returnUrl.value = 'http://localhost:52562/jusoPopup.aspx';
		document.form.resultType.value = resultType;
		document.form.action="https://business.juso.go.kr/addrlink/addrLinkUrl.do"; //인터넷망
		//document.form.action="https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do"; //모바일 웹인 경우, 인터넷망
		document.form.submit();
	}else{
		opener.jusoCallBack("<%=roadFullAddr%>","<%=roadAddrPart1%>","<%=addrDetail%>","<%=roadAddrPart2%>","<%=engAddr%>","<%=jibunAddr%>","<%=zipNo%>", "<%=admCd%>", "<%=rnMgtSn%>", "<%=bdMgtSn%>", "<%=detBdNmList%>", "<%=bdNm%>", "<%=bdKdcd%>", "<%=siNm%>", "<%=sggNm%>", "<%=emdNm%>", "<%=liNm%>", "<%=rn%>", "<%=udrtYn%>", "<%=buldMnnm%>", "<%=buldSlno%>", "<%=mtYn%>", "<%=lnbrMnnm%>", "<%=lnbrSlno%>", "<%=emdNo%>");
		window.close();
	}
}
</script>
<body onload="init();">
	<form id="form" name="form" method="post">
		<input type="hidden" id="confmKey" name="confmKey" value=""/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name="resultType" value=""/>
		<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 START-->
		<!--input type="hidden" id="encodingType" name="encodingType" value="EUC-KR"/-->
		<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 END-->
	</form>
</body>
</html>