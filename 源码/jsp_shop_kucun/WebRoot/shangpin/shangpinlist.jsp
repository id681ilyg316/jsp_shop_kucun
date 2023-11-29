<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ�������ݿ���
String sql="select * from shangpin where 1=1 ";//��ѯ ��Ʒsql���
db.open();//�����ݿ�����
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
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">��Ʒ����</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td bgcolor="#FFFFFF">
        </td>
      </tr>
  
             	 		<tr  onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#F1F5F8">
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

          
        
	<%
				
		int Page=0;	
		int maxPage=0;
					if(rs!=null){
					String str=(String)request.getParameter("Page");
if(str==null){
str="0";
}
int pagesize=10;
rs.last();
int RecordCount=rs.getRow(); 

if(RecordCount>0){
System.out.println("RecordCount=="+RecordCount);
maxPage=(RecordCount%pagesize==0)?(RecordCount/pagesize):(RecordCount/pagesize+1);
 Page=Integer.parseInt(str);
if(Page<1){
 	Page=1;
}else{
	if(Page>maxPage){
	Page=maxPage;
}}
rs.absolute((Page-1)*pagesize+1);
for(int i=1;i<=pagesize;i++){
					%>
    <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#FFFFFF">
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
<td class="td" width="10%"><a href="shangpinupdate.jsp?keyid=<%=rs.getString("spid")%>">�༭</a> |<a href="shangpindelete.jsp?keyid=<%=rs.getString("spid")%>"   onClick="javascript:if(confirm('�Ƿ�ɾ��')){return true;}else{return false;}">ɾ��</a>|<a href="shangpindetail.jsp?keyid=<%=rs.getString("spid")%>">�鿴</a></td>
</tr>

    <%
				try{
	if(!rs.next()){break;}
}catch(Exception e){System.out.println(e.toString());}
}
}
				 %>
				 	 <tr>
    <td height="38" width="100%" colspan="20"><div align="center"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
 <td align="right">��ǰҳ����[<%=Page%>/<%=maxPage%>]&nbsp;
	<%if(Page>1){%>
<a href="shangpinlist.jsp?Page=1">��һҳ</a>��<a href="shangpinlist.jsp?Page=<%=Page-1%>">��һҳ</a>
	<% }
if(Page<maxPage){%>
<a href="shangpinlist.jsp?Page=<%=Page+1%>">��һҳ</a>��<a href="shangpinlist.jsp?Page=<%=maxPage%>">���һҳ&nbsp;</a>
	<%}

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
