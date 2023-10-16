<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main2.aspx.cs" Inherits="JusoWebform.main2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style>
    table{
        padding:10px;
    }

    table th, table td{
		padding:5px;
	}

    text{
        margin:5px;
    }
</style>
<script>
    function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
        document.getElementById('FORM_Test_zipNo').value = zipNo;
        document.getElementById('FORM_Test_roadAddrPart1').value = roadAddrPart1;
        document.getElementById('FORM_Test_roadAddrPart2').value = roadAddrPart2;
        document.getElementById('FORM_Test_addrDetail').value = addrDetail;
    }

    function goPopup() {
        // 주소검색을 수행할 팝업 페이지를 호출합니다.
        // 호출된 페이지(jusoPopup_utf8.asp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
        var pop = window.open("/jusoPopup.aspx", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");

        // 모바일 웹인 경우, 호출된 페이지(jusoPopup_utf8.asp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
        //var pop = window.open("/jusoPopup_utf8.asp","pop","scrollbars=yes, resizable=yes"); 
    }
</script>
<body>
    <a href="main.aspx">api요소로</a>
    <form id="form1" runat="server">
        <div>
            <table style="border:1px solid;">
                <tr>
                    <th>이름</th>
                    <td colspan="3">
                        <input type="text" style="width:98%;" name="name" value="" />
                    </td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td><input type="text" style="width:98%;" name="tel" value="" placeholder="-를 제외하고 입력해주세요" /></td>
                    <th>핸드폰번호</th>
                    <td><input type="text" style="width:98%;" name="smartphone" value="" placeholder="-를 제외하고 입력해주세요" /></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td colspan="3">
                        <input id="FORM_Test_zipNo" type="text" style="display:inline-block; width:30%;" placeholder="우편번호" readonly /> <input style="display:inline-block" type="button" value="주소검색" onclick="goPopup();"/> 
                        <br />
                        <input id="FORM_Test_roadAddrPart1" type="text" style="display:inline-block; width:55%;"  readonly/>
                        <input id="FORM_Test_roadAddrPart2" type="text" style="display:inline-block; width:30%;" readonly />
                        <br />
                        <input id="FORM_Test_addrDetail" type="text" style="display:inline-block; width:70%;" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
