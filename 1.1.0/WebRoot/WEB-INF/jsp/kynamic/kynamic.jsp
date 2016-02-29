<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<HTML>
<HEAD>
	<TITLE>知识管理</TITLE>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8" />
	<script language="JavaScript" src="js/jquery-ztree-2.5.js"></script>
	<script language="JavaScript" src="js/kynamic.js"></script>
	<LINK TYPE="text/css" REL="stylesheet" HREF="css/blue/pageCommon.css" />
	<link rel="stylesheet" href="zTreeStyle/zTreeStyle.css" type="text/css">
	<link href="css/style/style.css" rel="stylesheet" type="text/css"/>
</HEAD>
<BODY STYLE="background-color: #F7FFFF;">	

<DIV ID="Title_bar">
    <DIV ID="Title_bar_Head">
        <DIV ID="Title_Head"></DIV>
        <DIV ID="Title"><!--页面标题-->
            <IMG BORDER="0" WIDTH="13" HEIGHT="13" SRC="css/images/title_arrow.gif"/> 知识管理
        </DIV>
        <DIV ID="Title_End"></DIV>
    </DIV>
</DIV>

<!--当前路径-->
<DIV ID="QueryArea">
	<DIV ID="FilePath">
		<DIV CLASS="PathTitle">
			当前路径:
		</DIV>
	</DIV>
</DIV>

<!--目录列表-->
<DIV ID="dirListArea" STYLE="width: 260px; float: left;">
	<DIV STYLE="margin-left: 15px;">
		<!--显示文件夹树-->
		<div ID="kynamicTree" class="tree">
		</div>
	</DIV>
</DIV>

<!--目录内容列表显示-->
<DIV ID="versionList" STYLE="margin-left: 3px; width: 700px; float: left; display:none;" border="2">
	 <table width="700" height="57" border="0" cellpadding="0" cellspacing="0" style="font-size:12px;">
  <tr>
    <td height="30"><table width="700" height="26" border="0" cellpadding="0" cellspacing="0" style="background: url(../style/images/411.jpg) repeat-x;">
      <tr>
        <td align="center" valign="middle" style="border:1px solid #CBE3ED;border-right:none;">版本号</td>
        <td align="center" valign="middle" style="border:1px solid #CBE3ED;">修改时间</td>
        <td align="center" valign="middle" style="border:1px solid #CBE3ED;border-left:none;">相关操作</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="showVersion" width="700" border="0" cellspacing="0" cellpadding="0">
  
</table>
</td>
  </tr>
</table>
</DIV>

<!--目录内容列表显示-->
<DIV ID="addVersion" STYLE="margin-left: 3px; width: 700px; float: left;" border="3">
	<table width="700" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #91C0E3;">
  <tr>
    <td width="94" height="40" align="center" valign="middle" bgcolor="#F0F7FD" style="color: #069;"><strong>标题</strong></td>
    <td width="540" bgcolor="#F0F7FD"><input id="inputTitle" name="title" type="text" style="background-color: #FFFFFF;
    border: 1px solid #91C0E3;
    color: #004779;width:250px;" /></td>
  </tr>
  <tr>
    <td height="53" align="center" valign="middle" bgcolor="#F0F7FD" style="color:#069;"><strong>内容</strong></td>
    <td bgcolor="#F0F7FD"><textarea id="inputContent" name="content" cols="" rows="" style="background-color: #FFFFFF;
    border: 1px solid #91C0E3;
    color: #004779;width:250px;height:auto;" ></textarea></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#F0F7FD" height="50"><table width="199" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="100"><input name="" type="button"  id="checkin" value="check in" style="background: #D3EDFC;border:1px solid  #91C0E3; cursor:pointer;"/></td>
        <td width="99"><input name="" type="button" id="checkout" value="check out" style="background: #D3EDFC;border:1px solid  #91C0E3; cursor:pointer;"/></td>
      </tr>
    </table></td>
    </tr>
</table>
</DIV>

<div class="addnodes" id="rightMenu" style="position:absolute;display:none;overflow:hidden">
       <ul>
         <li id="addFile" style="background: url(css/images/jia.jpg) 10px 5px no-repeat;border-bottom:1px solid #8ab2e6;overflow:hidden;cursor:pointer">增加文件</li>
         <li id="addFolder" style="background: url(css/images/jia.jpg) 10px 5px no-repeat;border-bottom:1px solid #8ab2e6;overflow:hidden;cursor:pointer">增加文件夹</li>
         <li id="deleteFile" style="background: url(css/images/jian.jpg) 10px 9px no-repeat;border-bottom:1px solid #8ab2e6;overflow:hidden;cursor:pointer">删除节点</li>
         <li id="updateFile" style="background: url(css/images/jian.jpg) 10px 9px no-repeat;border-bottom:1px solid #8ab2e6;overflow:hidden;cursor:pointer">修改节点</li>
       </ul>
    </div>
</BODY>
</HTML>
