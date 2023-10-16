<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jusoPopup.aspx.cs" Inherits="JusoWebform.jusoPopup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Juso Popup</title>
    <script type="text/javascript">
        function init() {
            var form = document.getElementById('form');
            var url = location.href;
            var confmKey = "승인키";
            var resultType = "4"; // 도로명주소 검색결과 화면 출력내용, 1 : 도로명, 2 : 도로명+지번+상세보기(관련지번, 관할주민센터), 3 : 도로명+상세보기(상세건물명), 4 : 도로명+지번+상세보기(관련지번, 관할주민센터, 상세건물명)
            var inputYn = "<%=inputYn%>";

            if (inputYn != "Y") {
                form.confmKey.value = 'U01TX0FVVEgyMDIzMDYyMDE2MzMzMzExMzg2NTk=';
                form.returnUrl.value = 'http://localhost:52562/jusoPopup.aspx';
                form.resultType.value = resultType;
                form.action = "https://business.juso.go.kr/addrlink/addrLinkUrl.do";
                form.submit();
            } else {
                opener.jusoCallBack('<%= roadFullAddr %>', '<%= roadAddrPart1 %>', '<%= addrDetail %>', '<%= roadAddrPart2 %>', '<%= engAddr %>', '<%= jibunAddr %>', '<%= zipNo %>', '<%= admCd %>', '<%= rnMgtSn %>', '<%= bdMgtSn %>', '<%= detBdNmList %>', '<%= bdNm %>', '<%= bdKdcd %>', '<%= siNm %>', '<%= sggNm %>', '<%= emdNm %>', '<%= liNm %>', '<%= rn %>', '<%= udrtYn %>', '<%= buldMnnm %>', '<%= buldSlno %>', '<%= mtYn %>', '<%= lnbrMnnm %>', '<%= lnbrSlno %>', '<%= emdNo %>');
                window.close();
            }
        }
    </script>
</head>
<body onload="init();">
    <form id="form" runat="server">
        <asp:HiddenField ID="confmKey" runat="server" />
        <asp:HiddenField ID="returnUrl" runat="server" />
        <asp:HiddenField ID="resultType" runat="server" />
    </form>
</body>
</html>