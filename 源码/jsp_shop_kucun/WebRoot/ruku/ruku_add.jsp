<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
�����Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String sp=(String)request.getParameter("sp");// ���� �� :��Ʒ
String sl=(String)request.getParameter("sl");// ���� �� :����
String ms=(String)request.getParameter("ms");// ���� �� :����
String czr=(String)request.getParameter("czr");// ���� �� :������
String rksj=(String)request.getParameter("rksj");// ���� �� :���ʱ��

String sql="";//����sql

int row=1;///����ִ�н��
		
try{
	sql="update shangpin set sl=sl+"+sl+" where spid='"+sp+"'";
	db.update(sql);
	 sql="insert into ruku(sp,sl,ms,czr,rksj) values('"+sp+"','"+sl+"','"+ms+"','"+czr+"','"+rksj+"')";
;//���SQL ���
		//int row =0;
		row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='rukuadd.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='rukuadd.jsp'");
out.println("</script>");
}
db.close();
%>

