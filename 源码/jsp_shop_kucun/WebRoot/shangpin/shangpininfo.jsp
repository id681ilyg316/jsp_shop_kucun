<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ�������ݿ���
String sql="select * from shangpin where 1=1 ";//��ѯ ��Ʒsql���
db.open();//�����ݿ�����
String spmc=(String)request.getParameter("spmc");//��ѯ��������Ʒ����
String jg=(String)request.getParameter("jg");//��ѯ�������۸�

//��Ʒ���� �ж������Ϊ�գ�ƴ�ӵ�sql��� ͨ�� ģ����ѯ�ķ�ʽ
if(spmc!=null){
if(!spmc.equals("")){
sql+=" and spmc like '%"+spmc+"%'";
}
}
//�۸� �ж������Ϊ�գ�ƴ�ӵ�sql��� ͨ�� ģ����ѯ�ķ�ʽ
if(jg!=null){
if(!jg.equals("")){
sql+=" and jg like '%"+jg+"%'";
}
}

ResultSet rs=db.query(sql);//��ѯ���
//��Ʒ��Ϣ�б�
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��Ʒ�б�</title>
</head>
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<body>
<form name="form" action="" >
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">��ѯ����</div></td>
  </tr>
   <tr>
    <td bgcolor="#FFFFFF">��Ʒ����&nbsp;&nbsp;  <input type="text" name="spmc" />&nbsp;&nbsp;�۸�&nbsp;&nbsp;  <input type="text" name="jg" />&nbsp;&nbsp;<input type=submit value="��ѯ">
	</td>
	</tr>
	</table>

<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">��Ʒ����</div></td>
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
 <td  height="15" class="td" width="8%" >��Ʒ���</td>
 <td  height="15" class="td" width="8%" >��Ʒ����</td>
 <td  height="15" class="td" width="8%" >�۸�</td>
 <td  height="15" class="td" width="8%" >��Ӧ��</td>
 <td  height="15" class="td" width="8%" >���</td>
 <td  height="15" class="td" width="8%" >����</td>
 <td  height="15" class="td" width="8%" >¼����</td>
 <td  height="15" class="td" width="8%" >����</td>
 <td  height="15" class="td" width="8%" >�ͺ�</td>
 <td  height="15" class="td" width="8%" >ע��ʱ��</td>
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
 <td height="15" class="td" width="8%"  ><%=rs.getString("spid")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("spmc")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("jg")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("gys")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("gg")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("sl")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("lrr")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("sx")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("xh")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("zcsj")%></td>
<td class="td" width="10%"><a href="shangpindetail.jsp?keyid=<%=rs.getString("spid")%>">�鿴</a></td>
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
