<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=976" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="Teco a.s." />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Index</title>
<script src="PAGE1.JS?U=1706185047" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();">
<xsl:if test="1706185047 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1706185047 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr style="height: 40px;">
<!--logo-->
<td id="top_left">
<div id="top_left_div" style="width: 150px;"></div>
&#160;</td>
<!--title-->
<td id="top">
<span id="title">
<xsl:value-of select="/PAGE/@TITLE" />
Index</span>
</td>
</tr>
<tr>
<!--menu-->
<td id="menu">
<div class="pages">
<a href="PAGE1.XML">Index</a>
<br />
</div>
<br />
<div class="pages">
<a href="logout.xml">Logout</a>
</div>
</td>
<!--plan-->
<td id="page">
<div style="background-color:#FFFFFF;position: relative; width: 800px; height: 683px;">
<form action="javascript:PostGlobal();">
<input class="mono" tabindex="1" type="text" id="INPUT22" style="position: absolute; top: 15px; left: 60px; width: 22px; z-index: 23; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="8" type="text" id="INPUT23" style="position: absolute; top: 150px; left: 60px; width: 22px; z-index: 24; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="9" type="text" id="INPUT24" style="position: absolute; top: 285px; left: 60px; width: 22px; z-index: 25; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="10" type="text" id="INPUT25" style="position: absolute; top: 420px; left: 60px; width: 22px; z-index: 26; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="11" type="text" id="INPUT26" style="position: absolute; top: 555px; left: 60px; width: 22px; z-index: 27; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="12" type="text" id="INPUT27" style="position: absolute; top: 165px; left: 545px; width: 22px; z-index: 28; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="2" type="text" id="INPUT30" style="position: absolute; top: 20px; left: 195px; width: 229px; z-index: 31; background-color: #FFFFFF;" value="{INPUT[15]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="3" type="text" id="INPUT31" style="position: absolute; top: 80px; left: 195px; width: 229px; z-index: 32; background-color: #FFFFFF;" value="{INPUT[16]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="7" type="text" id="INPUT32" style="position: absolute; top: 110px; left: 195px; width: 31px; z-index: 33; background-color: #FFFFFF;" value="{INPUT[17]/@VALUE}" readonly="readonly" />
<input title="timeLPC" class="mono" tabindex="6" type="text" id="INPUT39" style="position: absolute; top: 395px; left: 610px; width: 40px; z-index: 41; background-color: #FFFFFF;" value="{INPUT[24]/@VALUE}" readonly="readonly" />
<input title="timeDelayed" class="mono" tabindex="5" type="text" id="INPUT40" style="position: absolute; top: 420px; left: 610px; width: 40px; z-index: 42; background-color: #FFFFFF;" value="{INPUT[25]/@VALUE}" readonly="readonly" />
<input title="elevator direction" class="mono" tabindex="4" type="text" id="INPUT41" style="position: absolute; top: 405px; left: 650px; width: 40px; z-index: 43; background-color: #FFFFFF;" value="{INPUT[26]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="15" type="text" id="INPUT54" style="position: absolute; top: 180px; left: 195px; width: 139px; z-index: 56; background-color: #FFFFFF;" value="{INPUT[29]/@VALUE}" readonly="readonly" />
</form>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 150px; left: 20px; z-index: 1; background-image: url(IMAGES/VYTAHZ_2.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 150px; left: 20px; z-index: 1; background-image: url(IMAGES/VYTAHO_4.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 285px; left: 20px; z-index: 2; background-image: url(IMAGES/VYTAHZ_2.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 285px; left: 20px; z-index: 2; background-image: url(IMAGES/VYTAHO_4.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 420px; left: 20px; z-index: 3; background-image: url(IMAGES/VYTAHZ_2.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 420px; left: 20px; z-index: 3; background-image: url(IMAGES/VYTAHO_4.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 555px; left: 20px; z-index: 4; background-image: url(IMAGES/VYTAHZ_2.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 555px; left: 20px; z-index: 4; background-image: url(IMAGES/VYTAHO_4.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<div style="position: absolute; top: 205px; left: 110px; z-index: 5;">
<div onclick="PostXML5()" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 340px; left: 110px; z-index: 6;">
<div onclick="PostXML6()" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 475px; left: 110px; z-index: 7;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 610px; left: 110px; z-index: 8;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 105px; left: 460px; z-index: 9; background-image: url(IMAGES/ELEVAT_3.PNG); line-height: 271px; height: 271px; width: 200px;"></div>
<form style="position: absolute; top: 20px; left: 650px; z-index: 10;">
<xsl:if test="INPUT[5]/@VALUE = 0">
<input id="INPUT9h" type="hidden" name="{INPUT[5]/@NAME}" value="1" />
<div id="INPUT9" class="imgsub" onclick="PostXML9()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<input id="INPUT9h" type="hidden" name="{INPUT[5]/@NAME}" value="0" />
<div id="INPUT9" class="imgsub" onclick="PostXML9()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT10" style="position: absolute; top: 140px; left: 720px; z-index: 11; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT10" style="position: absolute; top: 140px; left: 720px; z-index: 11; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<div style="position: absolute; top: 155px; left: 680px; z-index: 12;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 215px; left: 680px; z-index: 13;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 279px; left: 678px; z-index: 14;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<div style="position: absolute; top: 335px; left: 680px; z-index: 15;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT15" style="position: absolute; top: 200px; left: 720px; z-index: 16; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT15" style="position: absolute; top: 200px; left: 720px; z-index: 16; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form style="position: absolute; top: 260px; left: 720px; z-index: 17;">
<xsl:if test="INPUT[8]/@VALUE = 0">
<input id="INPUT16h" type="hidden" name="{INPUT[8]/@NAME}" value="1" />
<div id="INPUT16" class="imgsub" onclick="PostXML16()" style="background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<input id="INPUT16h" type="hidden" name="{INPUT[8]/@NAME}" value="0" />
<div id="INPUT16" class="imgsub" onclick="PostXML16()" style="background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 320px; left: 720px; z-index: 18;">
<xsl:if test="INPUT[9]/@VALUE = 0">
<input id="INPUT17h" type="hidden" name="{INPUT[9]/@NAME}" value="1" />
<div id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<input id="INPUT17h" type="hidden" name="{INPUT[9]/@NAME}" value="0" />
<div id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 15px; left: 20px; z-index: 19; background-image: url(IMAGES/VYTAHZ_2.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 15px; left: 20px; z-index: 19; background-image: url(IMAGES/VYTAHO_4.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<div style="position: absolute; top: 70px; left: 110px; z-index: 20;">
<div onclick="PostXML19()" id="INPUT19" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 80px; left: 720px; z-index: 21; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 80px; left: 720px; z-index: 21; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<div style="position: absolute; top: 95px; left: 680px; z-index: 22;">
<div onclick="PostXML21()" id="INPUT21" class="imgsub" style="background-image: url(IMAGES/BUF2B2_1.PNG); height: 35px; width: 35px; line-height: 35px;"></div>
</div>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 150px; left: 585px; z-index: 29; line-height: 70px; height: 70px; width: 70px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT28" style="position: absolute; top: 150px; left: 585px; z-index: 29; background-image: url(IMAGES/STOPSI_2.PNG); line-height: 70px; height: 70px; width: 70px;"></div>
</xsl:if>
<form action="javascript:PostXML29()" style="position: absolute; top: 50px; left: 195px; z-index: 30; font-size: 13px;">
<input title="Enter the weight of all people and cargo" id="INPUT29" onfocus="document.getElementById('INPUT29x').style.visibility='visible';SetInputEdited(29, event);" onblur="InputFocused[28]=0" onkeydown="SetInputEdited(29, event);" class="mono" tabindex="13" type="text" style="width: 40px; background-color: #FFFFFF;" name="{INPUT[14]/@NAME}" value="{INPUT[14]/@VALUE}" />
<input type="submit" id="INPUT29x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 10px; left: 715px; z-index: 34; background-image: url(IMAGES/STOPSI_2.PNG); line-height: 70px; height: 70px; width: 70px;"></div>
<form style="position: absolute; top: 70px; left: 40px; z-index: 35;">
<xsl:if test="INPUT[18]/@VALUE = 0">
<input id="INPUT33h" type="hidden" name="{INPUT[18]/@NAME}" value="1" />
<div title="Toggle obstacle" id="INPUT33" class="imgsub" onclick="PostXML33()" style="line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<input id="INPUT33h" type="hidden" name="{INPUT[18]/@NAME}" value="0" />
<div title="Toggle obstacle" id="INPUT33" class="imgsub" onclick="PostXML33()" style="background-image: url(IMAGES/PREKAZKA.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 205px; left: 40px; z-index: 36;">
<xsl:if test="INPUT[19]/@VALUE = 0">
<input id="INPUT34h" type="hidden" name="{INPUT[19]/@NAME}" value="1" />
<div title="Toggle obstacle" id="INPUT34" class="imgsub" onclick="PostXML34()" style="line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input id="INPUT34h" type="hidden" name="{INPUT[19]/@NAME}" value="0" />
<div title="Toggle obstacle" id="INPUT34" class="imgsub" onclick="PostXML34()" style="background-image: url(IMAGES/PREKAZKA.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 340px; left: 40px; z-index: 37;">
<xsl:if test="INPUT[20]/@VALUE = 0">
<input id="INPUT35h" type="hidden" name="{INPUT[20]/@NAME}" value="1" />
<div title="Toggle obstacle" id="INPUT35" class="imgsub" onclick="PostXML35()" style="line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<input id="INPUT35h" type="hidden" name="{INPUT[20]/@NAME}" value="0" />
<div title="Toggle obstacle" id="INPUT35" class="imgsub" onclick="PostXML35()" style="background-image: url(IMAGES/PREKAZKA.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 475px; left: 40px; z-index: 38;">
<xsl:if test="INPUT[21]/@VALUE = 0">
<input id="INPUT36h" type="hidden" name="{INPUT[21]/@NAME}" value="1" />
<div title="Toggle obstacle" id="INPUT36" class="imgsub" onclick="PostXML36()" style="line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<input id="INPUT36h" type="hidden" name="{INPUT[21]/@NAME}" value="0" />
<div title="Toggle obstacle" id="INPUT36" class="imgsub" onclick="PostXML36()" style="background-image: url(IMAGES/PREKAZKA.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 610px; left: 40px; z-index: 39;">
<xsl:if test="INPUT[22]/@VALUE = 0">
<input id="INPUT37h" type="hidden" name="{INPUT[22]/@NAME}" value="1" />
<div title="Toggle obstacle" id="INPUT37" class="imgsub" onclick="PostXML37()" style="line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<input id="INPUT37h" type="hidden" name="{INPUT[22]/@NAME}" value="0" />
<div title="Toggle obstacle" id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/PREKAZKA.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 295px; left: 525px; z-index: 40;">
<xsl:if test="INPUT[23]/@VALUE = 0">
<input id="INPUT38h" type="hidden" name="{INPUT[23]/@NAME}" value="1" />
<div title="Toggle obstacle" id="INPUT38" class="imgsub" onclick="PostXML38()" style="line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<input id="INPUT38h" type="hidden" name="{INPUT[23]/@NAME}" value="0" />
<div title="Toggle obstacle" id="INPUT38" class="imgsub" onclick="PostXML38()" style="background-image: url(IMAGES/PREKAZKA.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div title="Is elevator set to get to this floor?" id="INPUT42" style="position: absolute; top: 65px; left: 110px; z-index: 44; background-image: url(IMAGES/BU73FF_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div title="Is elevator set to get to this floor?" id="INPUT42" style="position: absolute; top: 65px; left: 110px; z-index: 44; background-image: url(IMAGES/BU0EEE_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div title="Is elevator set to get to this floor?" id="INPUT43" style="position: absolute; top: 200px; left: 110px; z-index: 45; background-image: url(IMAGES/BU73FF_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div title="Is elevator set to get to this floor?" id="INPUT43" style="position: absolute; top: 200px; left: 110px; z-index: 45; background-image: url(IMAGES/BU0EEE_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div title="Is elevator set to get to this floor?" id="INPUT44" style="position: absolute; top: 335px; left: 110px; z-index: 46; background-image: url(IMAGES/BU73FF_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div title="Is elevator set to get to this floor?" id="INPUT44" style="position: absolute; top: 335px; left: 110px; z-index: 46; background-image: url(IMAGES/BU0EEE_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div title="Is elevator set to get to this floor?" id="INPUT45" style="position: absolute; top: 470px; left: 110px; z-index: 47; background-image: url(IMAGES/BU73FF_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div title="Is elevator set to get to this floor?" id="INPUT45" style="position: absolute; top: 470px; left: 110px; z-index: 47; background-image: url(IMAGES/BU0EEE_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div title="Is elevator set to get to this floor?" id="INPUT46" style="position: absolute; top: 605px; left: 110px; z-index: 48; background-image: url(IMAGES/BU73FF_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div title="Is elevator set to get to this floor?" id="INPUT46" style="position: absolute; top: 605px; left: 110px; z-index: 48; background-image: url(IMAGES/BU0EEE_1.PNG); line-height: 10px; height: 10px; width: 35px;"></div>
</xsl:if>
<xsl:choose>
<xsl:when test="INPUT[27]/@VALUE = 0">
<div id="INPUT47" style="position: absolute; top: 175px; left: 120px; z-index: 49; background-image: url(IMAGES/ELAAEA_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 1">
<div id="INPUT47" style="position: absolute; top: 175px; left: 120px; z-index: 49; background-image: url(IMAGES/ELE644_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 2">
<div id="INPUT47" style="position: absolute; top: 175px; left: 120px; z-index: 49; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT47" style="position: absolute; top: 175px; left: 120px; z-index: 49; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="INPUT[27]/@VALUE = 0">
<div id="INPUT48" style="position: absolute; top: 40px; left: 120px; z-index: 50; background-image: url(IMAGES/ELAAEA_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 1">
<div id="INPUT48" style="position: absolute; top: 40px; left: 120px; z-index: 50; background-image: url(IMAGES/ELE644_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 2">
<div id="INPUT48" style="position: absolute; top: 40px; left: 120px; z-index: 50; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT48" style="position: absolute; top: 40px; left: 120px; z-index: 50; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="INPUT[27]/@VALUE = 0">
<div id="INPUT49" style="position: absolute; top: 310px; left: 120px; z-index: 51; background-image: url(IMAGES/ELAAEA_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 1">
<div id="INPUT49" style="position: absolute; top: 310px; left: 120px; z-index: 51; background-image: url(IMAGES/ELE644_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 2">
<div id="INPUT49" style="position: absolute; top: 310px; left: 120px; z-index: 51; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT49" style="position: absolute; top: 310px; left: 120px; z-index: 51; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="INPUT[27]/@VALUE = 0">
<div id="INPUT50" style="position: absolute; top: 445px; left: 120px; z-index: 52; background-image: url(IMAGES/ELAAEA_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 1">
<div id="INPUT50" style="position: absolute; top: 445px; left: 120px; z-index: 52; background-image: url(IMAGES/ELE644_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 2">
<div id="INPUT50" style="position: absolute; top: 445px; left: 120px; z-index: 52; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT50" style="position: absolute; top: 445px; left: 120px; z-index: 52; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="INPUT[27]/@VALUE = 0">
<div id="INPUT51" style="position: absolute; top: 580px; left: 120px; z-index: 53; background-image: url(IMAGES/ELAAEA_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 1">
<div id="INPUT51" style="position: absolute; top: 580px; left: 120px; z-index: 53; background-image: url(IMAGES/ELE644_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 2">
<div id="INPUT51" style="position: absolute; top: 580px; left: 120px; z-index: 53; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT51" style="position: absolute; top: 580px; left: 120px; z-index: 53; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="INPUT[27]/@VALUE = 0">
<div id="INPUT52" style="position: absolute; top: 225px; left: 590px; z-index: 54; background-image: url(IMAGES/ELAAEA_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 1">
<div id="INPUT52" style="position: absolute; top: 225px; left: 590px; z-index: 54; background-image: url(IMAGES/ELE644_1.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:when test="INPUT[27]/@VALUE = 2">
<div id="INPUT52" style="position: absolute; top: 225px; left: 590px; z-index: 54; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT52" style="position: absolute; top: 225px; left: 590px; z-index: 54; background-image: url(IMAGES/ELEVAT_4.PNG); line-height: 20px; height: 20px; width: 20px;"></div>
</xsl:otherwise>
</xsl:choose>
<form action="javascript:PostXML53()" style="position: absolute; top: 180px; left: 355px; z-index: 55; font-size: 13px;">
<input title="Mód výtahu (0: podle pořadí zmáčknutých tlačítek, 1: od nejvyššího patra, 2:  preferovat cestu dolu)" id="INPUT53" onfocus="document.getElementById('INPUT53x').style.visibility='visible';SetInputEdited(53, event);" onblur="InputFocused[52]=0" onkeydown="SetInputEdited(53, event);" class="mono" tabindex="14" type="text" style="width: 22px; background-color: #FFFFFF;" name="{INPUT[28]/@NAME}" value="{INPUT[28]/@VALUE}" />
<input type="submit" id="INPUT53x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form style="position: absolute; top: 215px; left: 195px; z-index: 57;">
<xsl:if test="INPUT[30]/@VALUE = 0">
<input id="INPUT55h" type="hidden" name="{INPUT[30]/@NAME}" value="1" />
<div title="Třídit pořadí vyšších pater (pouze pro možnost 2)" id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<input id="INPUT55h" type="hidden" name="{INPUT[30]/@NAME}" value="0" />
<div title="Třídit pořadí vyšších pater (pouze pro možnost 2)" id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 215px; left: 340px; z-index: 58;">
<xsl:if test="INPUT[31]/@VALUE = 0">
<input id="INPUT56h" type="hidden" name="{INPUT[31]/@NAME}" value="1" />
<div title="Třídit pořadí nizších pater (pouze pro možnost 2)" id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE != 0">
<input id="INPUT56h" type="hidden" name="{INPUT[31]/@NAME}" value="0" />
<div title="Třídit pořadí nizších pater (pouze pro možnost 2)" id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
</div>
</td>
</tr>
<!--bottom-->
<tr style="height: 10px;">
<td id="bottom" colspan="2" style="text-align: center">© 2007 - 2020 Teco a.s.</td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
