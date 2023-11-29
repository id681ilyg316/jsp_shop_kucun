<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//���ݿ�����
String   bt="",ggnr="",fbsj="";//��ʼ������
String keyid=(String)request.getParameter("keyid");//����
String sql="select * from xtgg where xtggid="+keyid;//�����ѯsql���
ResultSet rs=null;//�����ѯ�����
db.open();//�����ݿ�����
rs=db.query(sql);//ִ�в�ѯ���

/*
ϵͳ������Ϣ�޸�ҳ��
*/
if(rs.next()){//�����������ѯ ��Ӧ�ı���
 bt=rs.getString("bt");
ggnr=rs.getString("ggnr");
fbsj=rs.getString("fbsj");

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.bt.value==""){
alert("���ⲻ��Ϊ��");
return false;
form.bt.focus();
}

if(form.ggnr.value==""){
alert("�������ݲ���Ϊ��");
return false;
form.ggnr.focus();
}

if(form.fbsj.value==""){
alert("����ʱ�䲻��Ϊ��");
return false;
form.fbsj.focus();
}


form.action="xtgg_update.jsp";
form.submit();
}
</script>

</head>
<body>

<form name="form" action="" >



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">�޸�ϵͳ����</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">���� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="�������"  name=bt value="<%=bt%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">�������� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" >
 <textarea name="ggnr" cols="80" rows="5"  placeholder="���빫������" ><%=ggnr%></textarea>
</td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">����ʱ�� <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="���뷢��ʱ��"  name=fbsj value="<%=fbsj%>"></td>
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
