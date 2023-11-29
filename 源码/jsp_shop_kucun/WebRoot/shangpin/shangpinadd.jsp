<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ��������
/*
��Ʒ��Ϣ����ҳ��
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.spmc.value==""){
alert("��Ʒ���Ʋ���Ϊ��");
return false;
form.spmc.focus();
}

if(form.jg.value==""){
alert("�۸���Ϊ��");
return false;
form.jg.focus();
}

if(form.gys.value==""){
alert("��Ӧ�̲���Ϊ��");
return false;
form.gys.focus();
}

if(form.gg.value==""){
alert("�����Ϊ��");
return false;
form.gg.focus();
}

if(form.sl.value==""){
alert("��������Ϊ��");
return false;
form.sl.focus();
}

if(form.lrr.value==""){
alert("¼���˲���Ϊ��");
return false;
form.lrr.focus();
}

if(form.sx.value==""){
alert("���Բ���Ϊ��");
return false;
form.sx.focus();
}

if(form.xh.value==""){
alert("�ͺŲ���Ϊ��");
return false;
form.xh.focus();
}

if(form.zcsj.value==""){
alert("ע��ʱ�䲻��Ϊ��");
return false;
form.zcsj.focus();
}


form.action="shangpin_add.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" >


  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">������Ʒ</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��Ʒ���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="spmc" placeholder="������Ʒ����"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">�۸� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="jg" placeholder="����۸�"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��Ӧ�� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td">
 <select name="gys">
 <%
 String sql="select * from gys";
 ResultSet rs=null;
 rs=db.query(sql);
 while(rs.next()){
 %>
 <option value="<%=rs.getString("gysmc")%>"><%=rs.getString("gysmc")%></option>
 <% }%>
 
 </select>
  </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">��� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="gg" placeholder="������"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="sl" placeholder="��������"  type="text" value="0" onKeyUp="this.value=this.value.replace(/\D/g,'')" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">¼���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="lrr" placeholder="����¼����"  type="text" value="<%=session.getAttribute("yhm")%>" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">���� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="sx" placeholder="��������"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">�ͺ� <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="xh" placeholder="�����ͺ�"  type="text" value="" /> </td>
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
