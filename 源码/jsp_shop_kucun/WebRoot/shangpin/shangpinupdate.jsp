<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//���ݿ�����
String   spmc="",jg="",gys="",gg="",sl="",lrr="",sx="",xh="",zcsj="";//��ʼ������
String keyid=(String)request.getParameter("keyid");//����
String sql="select * from shangpin where spid="+keyid;//�����ѯsql���
ResultSet rs=null;//�����ѯ�����
db.open();//�����ݿ�����
rs=db.query(sql);//ִ�в�ѯ���

/*
��Ʒ��Ϣ�޸�ҳ��
*/
if(rs.next()){//�����������ѯ ��Ӧ�ı���
 spmc=rs.getString("spmc");
jg=rs.getString("jg");
gys=rs.getString("gys");
gg=rs.getString("gg");
sl=rs.getString("sl");
lrr=rs.getString("lrr");
sx=rs.getString("sx");
xh=rs.getString("xh");
zcsj=rs.getString("zcsj");

}
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


form.action="shangpin_update.jsp";
form.submit();
}
</script>

</head>
<body>

<form name="form" action="" >



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">�޸���Ʒ</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">��Ʒ���� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="������Ʒ����"  name=spmc value="<%=spmc%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">�۸� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="����۸�"  name=jg value="<%=jg%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">��Ӧ�� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="���빩Ӧ��"  name=gys value="<%=gys%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">��� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="������"  name=gg value="<%=gg%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">���� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="��������"  name=sl value="<%=sl%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">¼���� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="����¼����"  name=lrr value="<%=lrr%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">���� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="��������"  name=sx value="<%=sx%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">�ͺ� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="�����ͺ�"  name=xh value="<%=xh%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">ע��ʱ�� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="����ע��ʱ��"  name=zcsj value="<%=zcsj%>"></td>
</tr>


<input type="hidden" name="keyid" value="<%=keyid%>">
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
<%
db.close();
%>
</html>
