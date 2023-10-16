using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JusoWebform
{
    public partial class jusoPopup : System.Web.UI.Page
    {

        protected string inputYn, roadFullAddr, roadAddrPart1, roadAddrPart2, engAddr, jibunAddr, zipNo, addrDetail, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo;

        protected void Page_Load(object sender, EventArgs e)
        {
            inputYn = Request.Form["inputYn"];
            roadFullAddr = Request.Form["roadFullAddr"];
            roadAddrPart1 = Request.Form["roadAddrPart1"];
            roadAddrPart2 = Request.Form["roadAddrPart2"];
            engAddr = Request.Form["engAddr"];
            jibunAddr = Request.Form["jibunAddr"];
            zipNo = Request.Form["zipNo"];
            addrDetail = Request.Form["addrDetail"];
            admCd = Request.Form["admCd"];
            rnMgtSn = Request.Form["rnMgtSn"];
            bdMgtSn = Request.Form["bdMgtSn"];
            detBdNmList = Request.Form["detBdNmList"];
            bdNm = Request.Form["bdNm"];
            bdKdcd = Request.Form["bdKdcd"];
            siNm = Request.Form["siNm"];
            sggNm = Request.Form["sggNm"];
            emdNm = Request.Form["emdNm"];
            liNm = Request.Form["liNm"];
            rn = Request.Form["rn"];
            udrtYn = Request.Form["udrtYn"];
            buldMnnm = Request.Form["buldMnnm"];
            buldSlno = Request.Form["buldSlno"];
            mtYn = Request.Form["mtYn"];
            lnbrMnnm = Request.Form["lnbrMnnm"];
            lnbrSlno = Request.Form["lnbrSlno"];
            emdNo = Request.Form["emdNo"];

        }
    }
}