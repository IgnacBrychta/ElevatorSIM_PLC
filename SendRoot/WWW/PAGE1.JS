
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(e,a){for(var s=e.split(/([YMDhms]+)/),t=a.split(/([0-9]+)/),r="",n="0",c="0",p="0",h="0",I="0",b="0",i=1;i<Math.min(s.length,t.length);i+=2)switch(s[i].charAt(0)){case"Y":r=parseInt(t[i]);break;case"M":n=parseInt(t[i]);break;case"D":c=parseInt(t[i]);break;case"h":p=parseInt(t[i]);break;case"m":h=parseInt(t[i]);break;case"s":I=parseInt(t[i]);break;case"z":b=t[i]}return b=parseInt((b+"00").slice(0,4)),"-"==t[0]&&(p*=-1,h*=-1,I*=-1,b*=-1),new Date(r,n,c,p,h,I,b)}
function CheckValueLimits(value,type,format,mmin,mmax) {switch(type) {case 0:value = parseFloat(value);mnin  = parseFloat(mmin);mmax  = parseFloat(mmax);break;case 1:value = parseInt(value, 16);mnin  = parseInt(mmin, 16);mmax  = parseInt(mmax, 16);break;case 2:value = GetDateByFormat(format, value);mmin  = GetDateByFormat(format, mmin);mmax  = GetDateByFormat(format, mmax);break;}return value >= mmin && value <= mmax;}
var xmlhttpGET  = null;
var xmlhttpPOST = null;
var gNewLoc='';function GetXML(e,t){if(window.XMLHttpRequest){xmlhttpGET=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpGET=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpGET!=null){xmlhttpGET.onreadystatechange=onResponse;if(t){xmlhttpGET.open("POST",e,true);xmlhttpGET.setRequestHeader("Content-type","application/x-www-form-urlencoded")}else{xmlhttpGET.open("GET",e,true)}xmlhttpGET.setRequestHeader("x-tecomat","data");xmlhttpGET.send(t)}else{alert("Your browser does not support XMLHTTP.")}}
function PostXML(e,t,l){if(window.XMLHttpRequest){xmlhttpPOST=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpPOST=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpPOST!=null){gNewLoc=l;xmlhttpPOST.onreadystatechange=onPostResponse;xmlhttpPOST.open("POST",e,true);xmlhttpPOST.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttpPOST.send(t)}else{alert("Your browser does not support XMLHTTP.")}}

var g_postInProgress=false;
var UpdateFileSubmit;
function TUpdateFileSubmit(div, name, size) {this.mDiv = div; this.mName = name; this.mSize = size; this.mNum = 0;this.refresh = function() {var sp = ['|','/','-','\\'];this.mDiv.innerHTML=this.mName+' '+sp[this.mNum%4]+' '+ this.mSize;this.mNum++;setTimeout("UpdateFileSubmit.refresh()", 500);};this.refresh();}
function postFileSubmit(sourceForm, colour, warning) {if(sourceForm[0].value) {if(!warning || confirm(warning)) {g_postInProgress = true;for( var x = 0; sourceForm.childNodes[x]; x++ ){if(sourceForm.childNodes[x].style) {if(sourceForm.childNodes[x].style.display == 'none') {sourceForm.childNodes[x].style.display = 'block';if(sourceForm[0].files) {UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].files[0].name,sourceForm[0].files[0].size+'B',0);}else{UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].value.replace(/.*(\/|\\)/, ''),'');}} else sourceForm.childNodes[x].style.display = 'none';}}sourceForm.submit();}else{sourceForm[0].value=''}}}
function SetInputEdited(i, e){var keynum;if(window.event){keynum=e.keyCode;}else if(e.which){keynum=e.which;}InputFocused[i-1]=1;if(keynum!=9&&keynum!=11&&keynum!=16&&keynum !=17){if(keynum==27){InputEdited[i-1]=0; }else{InputEdited[i-1]=1;document.getElementById('INPUT'+i).style.color='#FF0000';}}}
var InputEdited=[];var InputFocused=[];var gCI=[];var gLCI=[]; var gIC=[];var gWatchDog = 0; var gTemp;
function UpdateValue(input, x, color) {
if(input.value != x.getAttribute('VALUE')) input.value = x.getAttribute('VALUE');
if(input.style.color != color) input.style.color = color;
}
function onPostResponse() {
if(!xmlhttpPOST) return;
if(xmlhttpPOST.readyState != 4) return;
if(!xmlhttpPOST.status) return;
if(xmlhttpPOST.status != 200){
alert('Problem posting XML data ' + xmlhttpPOST.statusText + '(' + xmlhttpPOST.status + ')');
}else{if(gNewLoc)document.location.href=gNewLoc;}
}
function msetref(){if(typeof(Storage)!=='undefined'){if(sessionStorage.getItem('__crpg')!=document.location.href)sessionStorage.setItem('__prpg',sessionStorage.getItem('__crpg'));sessionStorage.setItem('__crpg',document.location.href);}}
window.addEventListener('load', msetref);
function BackToReferrer(){
if(typeof(Storage)!=='undefined'){var r = sessionStorage.getItem('__prpg').toLowerCase();if(r=='null'||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
}else{document.location.href=sessionStorage.getItem('__prpg');}}else{document.location.href='INDEX.XML';
}}
function onResponse() {
try {
gWatchDog++;
if(!xmlhttpGET) return;
if(xmlhttpGET.readyState != 4) return;
if(!xmlhttpGET.status) return;
if(xmlhttpGET.status != 200){
alert('Problem retrieving XML data ' + xmlhttpGET.statusText + '(' + xmlhttpGET.status + ')');
document.location.reload(true)
return;}
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1706295561) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[0].getAttribute('VALUE') == '0') {
SetBg('INPUT1', 'VYTAHZ_2.PNG');
} else {
SetBg('INPUT1', 'VYTAHO_4.PNG');
}
var Input2 = document.getElementById('INPUT2');
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT2', 'VYTAHZ_2.PNG');
} else {
SetBg('INPUT2', 'VYTAHO_4.PNG');
}
var Input3 = document.getElementById('INPUT3');
if(x[2].getAttribute('VALUE') == '0') {
SetBg('INPUT3', 'VYTAHZ_2.PNG');
} else {
SetBg('INPUT3', 'VYTAHO_4.PNG');
}
var Input4 = document.getElementById('INPUT4');
if(x[3].getAttribute('VALUE') == '0') {
SetBg('INPUT4', 'VYTAHZ_2.PNG');
} else {
SetBg('INPUT4', 'VYTAHO_4.PNG');
}
var Input9 = document.getElementById('INPUT9');
var Input9h = document.getElementById('INPUT9h');
if(Input9h) { vz = x[4].getAttribute('VALUE') == '0'; iz = Input9h.value == '0';
if(vz == iz) {
if(vz) {
Input9h.value = '1';
Input9.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input9.getAttribute('value') != null) {Input9.value = '';} else {}
} else {
Input9h.value = '0';
Input9.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input9.getAttribute('value') != null) {Input9.value = '';
} else {}
}}} else {
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT9', 'SPINAC0.PNG');
} else {
SetBg('INPUT9', 'SPINAC1.PNG');
}}
var Input10 = document.getElementById('INPUT10');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT10', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT10', 'ZAROVKA1.PNG');
}
var Input15 = document.getElementById('INPUT15');
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT15', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT15', 'ZAROVKA1.PNG');
}
var Input16 = document.getElementById('INPUT16');
var Input16h = document.getElementById('INPUT16h');
if(Input16h) { vz = x[7].getAttribute('VALUE') == '0'; iz = Input16h.value == '0';
if(vz == iz) {
if(vz) {
Input16h.value = '1';
Input16.style.backgroundImage = 'url("IMAGES/ZAROVKA0.PNG")';
if(Input16.getAttribute('value') != null) {Input16.value = '';} else {}
} else {
Input16h.value = '0';
Input16.style.backgroundImage = 'url("IMAGES/ZAROVKA1.PNG")';
if(Input16.getAttribute('value') != null) {Input16.value = '';
} else {}
}}} else {
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT16', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT16', 'ZAROVKA1.PNG');
}}
var Input17 = document.getElementById('INPUT17');
var Input17h = document.getElementById('INPUT17h');
if(Input17h) { vz = x[8].getAttribute('VALUE') == '0'; iz = Input17h.value == '0';
if(vz == iz) {
if(vz) {
Input17h.value = '1';
Input17.style.backgroundImage = 'url("IMAGES/ZAROVKA0.PNG")';
if(Input17.getAttribute('value') != null) {Input17.value = '';} else {}
} else {
Input17h.value = '0';
Input17.style.backgroundImage = 'url("IMAGES/ZAROVKA1.PNG")';
if(Input17.getAttribute('value') != null) {Input17.value = '';
} else {}
}}} else {
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT17', 'ZAROVKA1.PNG');
}}
var Input18 = document.getElementById('INPUT18');
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT18', 'VYTAHZ_2.PNG');
} else {
SetBg('INPUT18', 'VYTAHO_4.PNG');
}
var Input20 = document.getElementById('INPUT20');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT20', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT20', 'ZAROVKA1.PNG');
}
var Input22 = document.getElementById('INPUT22');
Input22.value = x[11].getAttribute('VALUE');
var Input23 = document.getElementById('INPUT23');
Input23.value = x[11].getAttribute('VALUE');
var Input24 = document.getElementById('INPUT24');
Input24.value = x[11].getAttribute('VALUE');
var Input25 = document.getElementById('INPUT25');
Input25.value = x[11].getAttribute('VALUE');
var Input26 = document.getElementById('INPUT26');
Input26.value = x[11].getAttribute('VALUE');
var Input27 = document.getElementById('INPUT27');
Input27.value = x[11].getAttribute('VALUE');
var Input28 = document.getElementById('INPUT28');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT28', '');
} else {
SetBg('INPUT28', 'STOPSI_2.PNG');
}
var Input29 = document.getElementById('INPUT29');
if(!InputEdited[28]) {
UpdateValue(Input29, x[13], '#000000');}
var Input30 = document.getElementById('INPUT30');
Input30.value = x[14].getAttribute('VALUE');
var Input31 = document.getElementById('INPUT31');
Input31.value = x[15].getAttribute('VALUE');
var Input32 = document.getElementById('INPUT32');
Input32.value = x[16].getAttribute('VALUE');
var Input33 = document.getElementById('INPUT33');
var Input33h = document.getElementById('INPUT33h');
if(Input33h) { vz = x[17].getAttribute('VALUE') == '0'; iz = Input33h.value == '0';
if(vz == iz) {
if(vz) {
Input33h.value = '1';
Input33.style.backgroundImage = '';
if(Input33.getAttribute('value') != null) {Input33.value = '';} else {}
} else {
Input33h.value = '0';
Input33.style.backgroundImage = 'url("IMAGES/PREKAZKA.PNG")';
if(Input33.getAttribute('value') != null) {Input33.value = '';
} else {}
}}} else {
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT33', '');
} else {
SetBg('INPUT33', 'PREKAZKA.PNG');
}}
var Input34 = document.getElementById('INPUT34');
var Input34h = document.getElementById('INPUT34h');
if(Input34h) { vz = x[18].getAttribute('VALUE') == '0'; iz = Input34h.value == '0';
if(vz == iz) {
if(vz) {
Input34h.value = '1';
Input34.style.backgroundImage = '';
if(Input34.getAttribute('value') != null) {Input34.value = '';} else {}
} else {
Input34h.value = '0';
Input34.style.backgroundImage = 'url("IMAGES/PREKAZKA.PNG")';
if(Input34.getAttribute('value') != null) {Input34.value = '';
} else {}
}}} else {
if(x[18].getAttribute('VALUE') == '0') {
SetBg('INPUT34', '');
} else {
SetBg('INPUT34', 'PREKAZKA.PNG');
}}
var Input35 = document.getElementById('INPUT35');
var Input35h = document.getElementById('INPUT35h');
if(Input35h) { vz = x[19].getAttribute('VALUE') == '0'; iz = Input35h.value == '0';
if(vz == iz) {
if(vz) {
Input35h.value = '1';
Input35.style.backgroundImage = '';
if(Input35.getAttribute('value') != null) {Input35.value = '';} else {}
} else {
Input35h.value = '0';
Input35.style.backgroundImage = 'url("IMAGES/PREKAZKA.PNG")';
if(Input35.getAttribute('value') != null) {Input35.value = '';
} else {}
}}} else {
if(x[19].getAttribute('VALUE') == '0') {
SetBg('INPUT35', '');
} else {
SetBg('INPUT35', 'PREKAZKA.PNG');
}}
var Input36 = document.getElementById('INPUT36');
var Input36h = document.getElementById('INPUT36h');
if(Input36h) { vz = x[20].getAttribute('VALUE') == '0'; iz = Input36h.value == '0';
if(vz == iz) {
if(vz) {
Input36h.value = '1';
Input36.style.backgroundImage = '';
if(Input36.getAttribute('value') != null) {Input36.value = '';} else {}
} else {
Input36h.value = '0';
Input36.style.backgroundImage = 'url("IMAGES/PREKAZKA.PNG")';
if(Input36.getAttribute('value') != null) {Input36.value = '';
} else {}
}}} else {
if(x[20].getAttribute('VALUE') == '0') {
SetBg('INPUT36', '');
} else {
SetBg('INPUT36', 'PREKAZKA.PNG');
}}
var Input37 = document.getElementById('INPUT37');
var Input37h = document.getElementById('INPUT37h');
if(Input37h) { vz = x[21].getAttribute('VALUE') == '0'; iz = Input37h.value == '0';
if(vz == iz) {
if(vz) {
Input37h.value = '1';
Input37.style.backgroundImage = '';
if(Input37.getAttribute('value') != null) {Input37.value = '';} else {}
} else {
Input37h.value = '0';
Input37.style.backgroundImage = 'url("IMAGES/PREKAZKA.PNG")';
if(Input37.getAttribute('value') != null) {Input37.value = '';
} else {}
}}} else {
if(x[21].getAttribute('VALUE') == '0') {
SetBg('INPUT37', '');
} else {
SetBg('INPUT37', 'PREKAZKA.PNG');
}}
var Input38 = document.getElementById('INPUT38');
var Input38h = document.getElementById('INPUT38h');
if(Input38h) { vz = x[22].getAttribute('VALUE') == '0'; iz = Input38h.value == '0';
if(vz == iz) {
if(vz) {
Input38h.value = '1';
Input38.style.backgroundImage = '';
if(Input38.getAttribute('value') != null) {Input38.value = '';} else {}
} else {
Input38h.value = '0';
Input38.style.backgroundImage = 'url("IMAGES/PREKAZKA.PNG")';
if(Input38.getAttribute('value') != null) {Input38.value = '';
} else {}
}}} else {
if(x[22].getAttribute('VALUE') == '0') {
SetBg('INPUT38', '');
} else {
SetBg('INPUT38', 'PREKAZKA.PNG');
}}
var Input39 = document.getElementById('INPUT39');
Input39.value = x[23].getAttribute('VALUE');
var Input40 = document.getElementById('INPUT40');
Input40.value = x[24].getAttribute('VALUE');
var Input41 = document.getElementById('INPUT41');
Input41.value = x[25].getAttribute('VALUE');
var Input42 = document.getElementById('INPUT42');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT42', 'BU73FF_1.PNG');
} else {
SetBg('INPUT42', 'BU0EEE_1.PNG');
}
var Input43 = document.getElementById('INPUT43');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT43', 'BU73FF_1.PNG');
} else {
SetBg('INPUT43', 'BU0EEE_1.PNG');
}
var Input44 = document.getElementById('INPUT44');
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT44', 'BU73FF_1.PNG');
} else {
SetBg('INPUT44', 'BU0EEE_1.PNG');
}
var Input45 = document.getElementById('INPUT45');
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT45', 'BU73FF_1.PNG');
} else {
SetBg('INPUT45', 'BU0EEE_1.PNG');
}
var Input46 = document.getElementById('INPUT46');
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT46', 'BU73FF_1.PNG');
} else {
SetBg('INPUT46', 'BU0EEE_1.PNG');
}
var Input47 = document.getElementById('INPUT47');
switch(parseInt(x[26].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/ELAAEA_1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/ELE644_1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/ELEVAT_4.PNG")'; break;
default: gTemp = ''; }
if(Input47.style.backgroundImage != gTemp) Input47.style.backgroundImage = gTemp;
var Input48 = document.getElementById('INPUT48');
switch(parseInt(x[26].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/ELAAEA_1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/ELE644_1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/ELEVAT_4.PNG")'; break;
default: gTemp = ''; }
if(Input48.style.backgroundImage != gTemp) Input48.style.backgroundImage = gTemp;
var Input49 = document.getElementById('INPUT49');
switch(parseInt(x[26].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/ELAAEA_1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/ELE644_1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/ELEVAT_4.PNG")'; break;
default: gTemp = ''; }
if(Input49.style.backgroundImage != gTemp) Input49.style.backgroundImage = gTemp;
var Input50 = document.getElementById('INPUT50');
switch(parseInt(x[26].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/ELAAEA_1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/ELE644_1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/ELEVAT_4.PNG")'; break;
default: gTemp = ''; }
if(Input50.style.backgroundImage != gTemp) Input50.style.backgroundImage = gTemp;
var Input51 = document.getElementById('INPUT51');
switch(parseInt(x[26].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/ELAAEA_1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/ELE644_1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/ELEVAT_4.PNG")'; break;
default: gTemp = ''; }
if(Input51.style.backgroundImage != gTemp) Input51.style.backgroundImage = gTemp;
var Input52 = document.getElementById('INPUT52');
switch(parseInt(x[26].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/ELAAEA_1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/ELE644_1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/ELEVAT_4.PNG")'; break;
default: gTemp = ''; }
if(Input52.style.backgroundImage != gTemp) Input52.style.backgroundImage = gTemp;
var Input53 = document.getElementById('INPUT53');
if(!InputEdited[52]) {
UpdateValue(Input53, x[27], '#000000');}
var Input54 = document.getElementById('INPUT54');
Input54.value = x[28].getAttribute('VALUE');
var Input55 = document.getElementById('INPUT55');
var Input55h = document.getElementById('INPUT55h');
if(Input55h) { vz = x[29].getAttribute('VALUE') == '0'; iz = Input55h.value == '0';
if(vz == iz) {
if(vz) {
Input55h.value = '1';
Input55.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input55.getAttribute('value') != null) {Input55.value = '';} else {}
} else {
Input55h.value = '0';
Input55.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input55.getAttribute('value') != null) {Input55.value = '';
} else {}
}}} else {
if(x[29].getAttribute('VALUE') == '0') {
SetBg('INPUT55', 'SPINAC0.PNG');
} else {
SetBg('INPUT55', 'SPINAC1.PNG');
}}
var Input56 = document.getElementById('INPUT56');
var Input56h = document.getElementById('INPUT56h');
if(Input56h) { vz = x[30].getAttribute('VALUE') == '0'; iz = Input56h.value == '0';
if(vz == iz) {
if(vz) {
Input56h.value = '1';
Input56.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input56.getAttribute('value') != null) {Input56.value = '';} else {}
} else {
Input56h.value = '0';
Input56.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input56.getAttribute('value') != null) {Input56.value = '';
} else {}
}}} else {
if(x[30].getAttribute('VALUE') == '0') {
SetBg('INPUT56', 'SPINAC0.PNG');
} else {
SetBg('INPUT56', 'SPINAC1.PNG');
}}
var Input57 = document.getElementById('INPUT57');
Input57.value = x[31].getAttribute('VALUE');
var Input58 = document.getElementById('INPUT58');
Input58.value = x[32].getAttribute('VALUE');
var Input64 = document.getElementById('INPUT64');
Input64.value = x[33].getAttribute('VALUE');
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('PAGE1.XML','"+pd+"')",1);}else{setTimeout("GetXML('PAGE1.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML5() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.3_BOOL_i=1')); 
SetBg('INPUT5', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT5', 'BUF2B2_1.PNG');",500);
}
function PostXML6() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.2_BOOL_i=1')); 
SetBg('INPUT6', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT6', 'BUF2B2_1.PNG');",500);
}
function PostXML7() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.1_BOOL_i=1')); 
SetBg('INPUT7', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT7', 'BUF2B2_1.PNG');",500);
}
function PostXML8() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.0_BOOL_i=1')); 
SetBg('INPUT8', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT8', 'BUF2B2_1.PNG');",500);
}
function PostXML9() {
var Input9h = document.getElementById('INPUT9h');
PostXML('PAGE1.XML', encodeURIComponent(Input9h.name+'='+Input9h.value));
}
function PostXML11() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.3_BOOL_i=1')); 
SetBg('INPUT11', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT11', 'BUF2B2_1.PNG');",500);
}
function PostXML12() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.2_BOOL_i=1')); 
SetBg('INPUT12', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT12', 'BUF2B2_1.PNG');",500);
}
function PostXML13() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.1_BOOL_i=1')); 
SetBg('INPUT13', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT13', 'BUF2B2_1.PNG');",500);
}
function PostXML14() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.0_BOOL_i=1')); 
SetBg('INPUT14', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT14', 'BUF2B2_1.PNG');",500);
}
function PostXML16() {
var Input16h = document.getElementById('INPUT16h');
PostXML('PAGE1.XML', encodeURIComponent(Input16h.name+'='+Input16h.value));
}
function PostXML17() {
var Input17h = document.getElementById('INPUT17h');
PostXML('PAGE1.XML', encodeURIComponent(Input17h.name+'='+Input17h.value));
}
function PostXML19() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.4_BOOL_i=1')); 
SetBg('INPUT19', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT19', 'BUF2B2_1.PNG');",500);
}
function PostXML21() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.4_BOOL_i=1')); 
SetBg('INPUT21', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT21', 'BUF2B2_1.PNG');",500);
}
function PostXML29() {
var Input29 = document.getElementById('INPUT29');
document.getElementById('INPUT29x').style.visibility = 'hidden';if(InputEdited[28]) {
PostXML('PAGE1.XML', encodeURIComponent(Input29.name+'='+Input29.value)); InputEdited[28] = 0;
}
}
function PostXML33() {
var Input33h = document.getElementById('INPUT33h');
PostXML('PAGE1.XML', encodeURIComponent(Input33h.name+'='+Input33h.value));
}
function PostXML34() {
var Input34h = document.getElementById('INPUT34h');
PostXML('PAGE1.XML', encodeURIComponent(Input34h.name+'='+Input34h.value));
}
function PostXML35() {
var Input35h = document.getElementById('INPUT35h');
PostXML('PAGE1.XML', encodeURIComponent(Input35h.name+'='+Input35h.value));
}
function PostXML36() {
var Input36h = document.getElementById('INPUT36h');
PostXML('PAGE1.XML', encodeURIComponent(Input36h.name+'='+Input36h.value));
}
function PostXML37() {
var Input37h = document.getElementById('INPUT37h');
PostXML('PAGE1.XML', encodeURIComponent(Input37h.name+'='+Input37h.value));
}
function PostXML38() {
var Input38h = document.getElementById('INPUT38h');
PostXML('PAGE1.XML', encodeURIComponent(Input38h.name+'='+Input38h.value));
}
function PostXML53() {
var Input53 = document.getElementById('INPUT53');
document.getElementById('INPUT53x').style.visibility = 'hidden';if(InputEdited[52]) {
PostXML('PAGE1.XML', encodeURIComponent(Input53.name+'='+Input53.value)); InputEdited[52] = 0;
}
}
function PostXML55() {
var Input55h = document.getElementById('INPUT55h');
PostXML('PAGE1.XML', encodeURIComponent(Input55h.name+'='+Input55h.value));
}
function PostXML56() {
var Input56h = document.getElementById('INPUT56h');
PostXML('PAGE1.XML', encodeURIComponent(Input56h.name+'='+Input56h.value));
}
function PostXML59() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.3_BOOL_i=1')); 
SetBg('INPUT59', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT59', 'BUF2B2_1.PNG');",500);
}
function PostXML60() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.2_BOOL_i=1')); 
SetBg('INPUT60', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT60', 'BUF2B2_1.PNG');",500);
}
function PostXML61() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.1_BOOL_i=1')); 
SetBg('INPUT61', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT61', 'BUF2B2_1.PNG');",500);
}
function PostXML62() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.0_BOOL_i=1')); 
SetBg('INPUT62', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT62', 'BUF2B2_1.PNG');",500);
}
function PostXML63() {
PostXML('PAGE1.XML', encodeURIComponent('__R88.4_BOOL_i=1')); 
SetBg('INPUT63', 'BU98A7_1.PNG');
setTimeout("SetBg('INPUT63', 'BUF2B2_1.PNG');",500);
}

function PostGlobal() {
}
