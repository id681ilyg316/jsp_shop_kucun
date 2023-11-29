<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ��������
/*
��Ӧ����Ϣ����ҳ��
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.gysmc.value==""){
alert("��Ӧ�����Ʋ���Ϊ��");
return false;
form.gysmc.focus();
}

if(form.dz.value==""){
alert("��ַ����Ϊ��");
return false;
form.dz.focus();
}

if(form.jyfw.value==""){
alert("��Ӫ��Χ����Ϊ��");
return false;
form.jyfw.focus();
}

if(form.dh.value==""){
alert("�绰����Ϊ��");
return false;
form.dh.focus();
}

if(form.fr.value==""){
alert("���˲���Ϊ��");
return false;
form.fr.focus();
}

if(form.zcsj.value==""){
alert("ע��ʱ�䲻��Ϊ��");
return false;
form.zcsj.focus();
}


form.action="gys_add.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" >


  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">���ӹ�Ӧ��</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��Ӧ������ <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="gysmc" placeholder="���빩Ӧ������"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��ַ <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="dz" placeholder="�����ַ"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��Ӫ��Χ <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="jyfw" placeholder="���뾭Ӫ��Χ"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">�绰 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="dh" placeholder="����绰"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="fr" placeholder="���뷨��"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">ע��ʱ�� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="zcsj" placeholder="����ע��ʱ��"  type="text" value="<%=StaticMethod.getStringDate()%>" readonly="" /> </td>
 </tr>



   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
         <td height="12" class="td">&nbsp;</td>
         <td colspan="2" class="td">
		  <input type="button" value="����" name="B1" class="btn" style="width:60px" onclick="checkDo()"  />
                      &nbsp;&nbsp;
                      <input type="reset" value="ȡ��" style="width:60px" name="chanel" class="btn" />
		 
		 </td>
       </tr>
	  </table>
</td>
  </tr>

  </table>








</form>



</body>
</html>
