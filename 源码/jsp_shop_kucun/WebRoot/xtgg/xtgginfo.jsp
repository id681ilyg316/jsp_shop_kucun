<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ�������ݿ���
String sql="select * from xtgg where 1=1 ";//��ѯ ϵͳ����sql���
db.open();//�����ݿ�����
String bt=(String)request.getParameter("bt");//��ѯ����������
String ggnr=(String)request.getParameter("ggnr");//��ѯ��������������

//���� �ж������Ϊ�գ�ƴ�ӵ�sql��� ͨ�� ģ����ѯ�ķ�ʽ
if(bt!=null){
if(!bt.equals("")){
sql+=" and bt like '%"+bt+"%'";
}
}
//�������� �ж������Ϊ�գ�ƴ�ӵ�sql��� ͨ�� ģ����ѯ�ķ�ʽ
if(ggnr!=null){
if(!ggnr.equals("")){
sql+=" and ggnr like '%"+ggnr+"%'";
}
}

ResultSet rs=db.query(sql);//��ѯ���
//ϵͳ������Ϣ�б�
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ϵͳ�����б�</title>
</head>
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<body>
<form name="form" action="" >
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">��ѯ����</div></td>
  </tr>
   <tr>
    <td bgcolor="#FFFFFF">����&nbsp;&nbsp;  <input type="text" name="bt" />&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value="��ѯ">
	</td>
	</tr>
	</table>

<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">ϵͳ����</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td bgcolor="#FFFFFF">
        </td>
      </tr>
      <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#F1F5F8">
        <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
           
             	 		<tr >
 <td  height="15" class="td" width="8%" >ϵͳ������</td>
 <td  height="15" class="td" width="8%" >����</td>

 <td  height="15" class="td" width="8%" >����ʱ��</td>
 <td width="10%" class="td">����</td>
</tr>

          
          </table>
            
        </td>
      </tr>
	<%
					if(rs!=null){
					while(rs.next()){
					%>
    <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#FFFFFF">
       <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
 <tr>
 <td height="15" class="td" width="8%"  ><%=rs.getString("xtggid")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("bt")%></td>

 <td height="15" class="td" width="8%"  ><%=rs.getString("fbsj")%></td>
<td class="td" width="10%"><a href="xtggdetail.jsp?keyid=<%=rs.getString("xtggid")%>">�鿴</a></td>
</tr>
</table>
</td>
</tr>

    <%
				 }
				 }else {
out.println("<tr> <td><font color=red><h2>û�з�������������</h2></font></td></tr>");
}
				 %>
    </table></td>
  </tr>
</table>





</form>


</body>
<%
db.close();
%>
</html>
