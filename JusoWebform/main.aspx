<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="JusoWebform.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style>
	.addrtable{
		border-collapse:collapse;
	}

	.addrtable th, .addrtable td{
		border:1px solid black;
		text-align:center;
		padding:5px;
	}

	input[type=text]{
		width:500px;
	}
</style>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr,jibunAddr,zipNo,admCd,rnMgtSn,bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	document.getElementById('roadFullAddr').value = roadFullAddr;
	document.getElementById('roadAddrPart1').value = roadAddrPart1;
	document.getElementById('addrDetail').value = addrDetail;
	document.getElementById('roadAddrPart2').value = roadAddrPart2;
	document.getElementById('engAddr').value = engAddr;
	document.getElementById('jibunAddr').value = jibunAddr;
	document.getElementById('zipNo').value = zipNo;
	document.getElementById('admCd').value = admCd;
	document.getElementById('rnMgtSn').value = rnMgtSn;
	document.getElementById('bdMgtSn').value = bdMgtSn;
	document.getElementById('detBdNmList').value = detBdNmList;
	/**2017년 2월 추가 제공 **/
	document.getElementById('bdNm').value = bdNm;
	document.getElementById('bdKdcd').value = bdKdcd;
	document.getElementById('siNm').value = siNm;
	document.getElementById('sggNm').value = sggNm;
	document.getElementById('emdNm').value = emdNm;
	document.getElementById('liNm').value = liNm;
	document.getElementById('rn').value = rn;
	document.getElementById('udrtYn').value = udrtYn;
	document.getElementById('buldMnnm').value = buldMnnm;
	document.getElementById('buldSlno').value = buldSlno;
	document.getElementById('mtYn').value = mtYn;
	document.getElementById('lnbrMnnm').value = lnbrMnnm;
	document.getElementById('lnbrSlno').value = lnbrSlno;
	/**2017년 3월 추가 제공 **/
	document.getElementById('emdNo').value = emdNo;
}

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusoPopup_utf8.asp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("/jusoPopup.aspx","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusoPopup_utf8.asp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/jusoPopup_utf8.asp","pop","scrollbars=yes, resizable=yes"); 
}
</script>
<body onload="jusoCallBack('roadFullAddr','roadAddrPart1','addrDetail','roadAddrPart2','engAddr','jibunAddr','zipNo','admCd','rnMgtSn','bdMgtSn','detBdNmList','bdNm','bdKdcd','siNm','sggNm','emdNm','liNm','rn','udrtYn','buldMnnm','buldSlno','mtYn','lnbrMnnm','lnbrSlno','emdNo');">
    <a href="main2.aspx">예제1</a>
<input type="button" value="주소검색" onclick="goPopup();"/> 
	<form name="rdnAddr">
	<%--	<input id ="roadFullAddr">
		<input id ="roadAddrPart1">
		<input id ="addrDetail">
		<input id ="roadAddrPart2">
		<input id ="engAddr">
		<input id ="jibunAddr">
		<input id ="zipNo">
		<input id ="admCd">
		<input id ="rnMgtSn">
		<input id ="bdMgtSn">
		<input id ="detBdNmList">
		<!--2017년 2월 추가 제공-->
		<input id ="bdNm">
		<input id ="bdKdcd">
		<input id ="siNm">
		<input id ="sggNm">
		<input id ="emdNm">
		<input id ="liNm">
		<input id ="rn">
		<input id ="udrtYn">
		<input id ="buldMnnm">
		<input id ="buldSlno">
		<input id ="mtYn">
		<input id ="lnbrMnnm">
		<input id ="lnbrSlno">
		<input id ="emdNo">	--%>	

		<table class="addrtable">
			<colgroup>
				<col />
				<col />
				<col />
				<col />
				<col width="500px"; />
			</colgroup>
			<thead>
				<th>파라미터 정보</th>
				<th>타입</th>
				<th>필수여부</th>
				<th>설명</th>
				<th>실제정도</th>
			</thead>
            <tr>
                <th><span>roadFullAddr</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>전체 도로명 주소</span></td>
				<td><input type="text"  id ="roadFullAddr"/></td>
            </tr>
			<tr>
                <th><span>roadAddrPart1</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>도로명주소(참고항목 제외)</span></td>
				<td><input type="text"  id ="roadAddrPart1"></td>
            </tr>
			<tr>
                <th><span>addrDetail</span></th>
				<td><span>String</span></td>
				<td><span>N</span></td>
				<td><span>고객 입력 상세 주소</span></td>
				<td><input  type="text" id ="addrDetail"></td>
            </tr>
			<tr>
				<th><span>roadAddrPart2</span></th>
				<td><span>String</span></td>
				<td><span>N</span></td>
				<td><span>도로명주소 참고항목</span></td>
				<td><input type="text"  id ="roadAddrPart2"></td>
            </tr>
			<tr>
                <th><span>engAddr</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>도로명주소(영문)</span></td>
				<td><input type="text"  id ="engAddr"></td>
            </tr>
			<tr>
                <th><span>jibunAddr</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>지번 정보</span></td>
				<td><input type="text" id ="jibunAddr"></td>
            </tr>
			<tr>
                <th><span>zipNo</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>우편번호</span></td>
				<td><input type="text"  id ="zipNo"></td>
            </tr>
			<tr>
                <th><span>admCd</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>행정구역코드</span></td>
				<td><input type="text"  id ="admCd"></td>
            </tr>
			<tr>
                <th><span>rnMgtSn</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>도로명코드</span></td>
				<td><input type="text"  id ="rnMgtSn"></td>
            </tr>
			<tr>
                <th><span>bdMgtSn</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>건물관리번호</span></td>
				<td><input type="text"  id ="bdMgtSn"></td>
            </tr>
			<tr>
                <th><span>detBdNmList</span></th>
				<td><span>String</span></td>
				<td><span>N</span></td>
				<td><span>상세건물명</span></td>
				<td><input  type="text" id ="detBdNmList"></td>
            </tr>
			<tr>
                <th><span>bdNm</span></th>
				<td><span>String</span></td>
				<td><span>N</span></td>
				<td><span>건물명</span></td>
				<td><input type="text"  id ="bdNm"></td>
            </tr>
			<tr>
                <th><span>bdKdcd</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>공동주책여부(1:공동주택, 0:비공동주택)</span></td>
				<td><input type="text"  id ="bdKdcd"></td>
            </tr>
			<tr>
                <th><span>siNm</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>시도명</span></td>
				<td><input type="text"  id ="siNm"></td>
            </tr>
			<tr>
                <th><span>sggNm</span></th>
				<td><span>String</span></td>
				<td><span>N</span></td>
				<td><span>시군구명</span></td>
				<td><input type="text"  id ="sggNm"></td>
            </tr>
			<tr>
                <th><span>emdNm</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>읍면동명</span></td>
				<td><input type="text"  id ="emdNm"></td>
            </tr>
			<tr>
                <th><span>liNm</span></th>
				<td><span>String</span></td>
				<td><span>N</span></td>
				<td><span>법정리명</span></td>
				<td><input type="text"  id ="liNm"></td>
            </tr>
			<tr>
                <th><span>rn</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>도로명</span></td>
				<td><input type="text"  id ="rn"></td>
            </tr>
			<tr>
                <th><span>udrtYn</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>지하여부(0 : 지상, 1: 지하)</span></td>
				<td><input type="text"  id ="udrtYn"></td>
            </tr>
			<tr>
                <th><span>buldMnnm</span></th>
				<td><span>Number</span></td>
				<td><span>Y</span></td>
				<td><span>건물본번</span></td>
				<td><input type="text"  id ="buldMnnm"></td>
            </tr>
			<tr>
                <th><span>buldSlno</span></th>
				<td><span>Number</span></td>
				<td><span>Y</span></td>
				<td><span>건물부번(부번이 없는 경우 0)</span></td>
				<td><input  type="text" id ="buldSlno"></td>
            </tr>
			<tr>
                <th><span>mtYn</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>산여부(0:대지, 1:산)</span></td>
				<td><input  type="text" id ="mtYn"></td>
            </tr>
			<tr>
                <th><span>lnbrMnnm</span></th>
				<td><span>Number</span></td>
				<td><span>Y</span></td>
				<td><span>지번본번(번지)</span></td>
				<td><input  type="text" id ="lnbrMnnm"></td>
            </tr>
			<tr>
                <th><span>lnbrSlno</span></th>
				<td><span>Number</span></td>
				<td><span>Y</span></td>
				<td><span>지번부번(호)(부번이 없는 경우 0)</span></td>
				<td><input type="text"  id ="lnbrSlno"></td>
            </tr>
			<tr>
                <th><span>emdNo</span></th>
				<td><span>String</span></td>
				<td><span>Y</span></td>
				<td><span>읍면동일련번호</span></td>
				<td><input type="text" id ="emdNo"></td>
            </tr>

        </table>
	</form>
</body>
</html>