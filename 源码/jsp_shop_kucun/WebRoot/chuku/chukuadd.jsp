<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ��������
/*
������Ϣ����ҳ��
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.sp.value==""){
alert("��Ʒ����Ϊ��");
return false;
form.sp.focus();
}

if(form.jg.value==""){
alert("�۸���Ϊ��");
return false;
form.jg.focus();
}

if(form.sl.value==""){
alert("��������Ϊ��");
return false;
form.sl.focus();
}

if(form.ms.value==""){
alert("��������Ϊ��");
return false;
form.ms.focus();
}

if(form.czr.value==""){
alert("�����˲���Ϊ��");
return false;
form.czr.focus();
}

if(form.cksj.value==""){
alert("����ʱ�䲻��Ϊ��");
return false;
form.cksj.focus();
}


form.action="chuku_add.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" >


  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">���ӳ���</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��Ʒ <font color="#FF0000">*</font></td>
 <td colspan="2" class="td">
  <select name="sp">
 
 
 <%
 String sql="select * from shangpin where 1=1";
 ResultSet rs=null;
 rs=db.query(sql);
 while(rs.next()){
 %>
 <option value="<%=rs.getString("spid")%>"><%=rs.getString("spmc")%></option>
 
 <% }%>
 </select>
 </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">�۸� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="jg" placeholder="����۸�"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="sl" placeholder="��������"  type="text" value="" onKeyUp="this.value=this.value.replace(/\D/g,'')"  /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="ms" placeholder="��������"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">������ <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="czr" placeholder="���������"  type="text" value="<%=session.getAttribute("yhm")%>" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">����ʱ�� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="cksj" placeholder="�������ʱ��"  type="text" value="<%=StaticMethod.getStringDate()%>" /> </td>
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
