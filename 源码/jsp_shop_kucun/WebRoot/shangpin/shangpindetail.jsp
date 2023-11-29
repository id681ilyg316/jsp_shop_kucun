<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ�����ݿ�����
String   spmc="",jg="",gys="",gg="",sl="",lrr="",sx="",xh="",zcsj="";//����ҳ����ʾ�ı���
String keyid=(String)request.getParameter("keyid");//��request��ʽ��ȡ ������Ϣ�� ����ֵ
String sql="select * from shangpin where spid="+keyid;//ƴ��sql
ResultSet rs=null;//���������
db.open();//�����ݿ�����
rs=db.query(sql);//��ѯ����� ���� rs ������

/*
��Ʒ��Ϣ�鿴ҳ��
*/
if(rs.next()){//����
 spmc=rs.getString("spmc");//��Ʒ����
jg=rs.getString("jg");//�۸�
gys=rs.getString("gys");//��Ӧ��
gg=rs.getString("gg");//���
sl=rs.getString("sl");//����
lrr=rs.getString("lrr");//¼����
sx=rs.getString("sx");//����
xh=rs.getString("xh");//�ͺ�
zcsj=rs.getString("zcsj");//ע��ʱ��

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

</head>
<body>
<form name="form" action="" >



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">��Ʒ����</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">��Ʒ����</td>
<td class="td"><%=spmc%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">�۸�</td>
<td class="td"><%=jg%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">��Ӧ��</td>
<td class="td"><%=gys%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">���</td>
<td class="td"><%=gg%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">����</td>
<td class="td"><%=sl%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">¼����</td>
<td class="td"><%=lrr%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">����</td>
<td class="td"><%=sx%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">�ͺ�</td>
<td class="td"><%=xh%></td>
 
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">ע��ʱ��</td>
<td class="td"><%=zcsj%></td>
 
</tr>



   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
         <td height="12" class="td">&nbsp;</td>
         <td colspan="2" class="td">
		   <INPUT class="button" type="button" value="����" onClick="history.go(-1)"/> 
		 
		 </td>
       </tr>
	  </table>
</td>
  </tr>

  </table>



</form>


</body>
</html>
