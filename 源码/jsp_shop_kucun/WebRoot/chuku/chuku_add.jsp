<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
������Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String sp=(String)request.getParameter("sp");// ���� �� :��Ʒ
String jg=(String)request.getParameter("jg");// ���� �� :�۸�
String sl=(String)request.getParameter("sl");// ���� �� :����
String ms=(String)request.getParameter("ms");// ���� �� :����
String czr=(String)request.getParameter("czr");// ���� �� :������
String cksj=(String)request.getParameter("cksj");// ���� �� :����ʱ��

String sql="";//����sql

int row=1;///����ִ�н��
int num=0;
		sql="select * from shangpin where spid='"+sp+"'";
try{
	rs=db.query(sql);
	if(rs.next()){
	num=rs.getInt("sl");
	}
	
	if(Integer.parseInt(sl)>num){
	
	out.println("<script>");
out.println("alert('����ʧ�ܣ����������');");
out.println("window.location='chukuadd.jsp'");
out.println("</script>");
	return;
	}
	
	
		sql="update shangpin set sl=sl-"+sl+" where spid='"+sp+"'";
	db.update(sql);
	
	 sql="insert into chuku(sp,jg,sl,ms,czr,cksj) values('"+sp+"','"+jg+"','"+sl+"','"+ms+"','"+czr+"','"+cksj+"')";
;//����SQL ���
		//int row =0;
		row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='chukuadd.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='chukuadd.jsp'");
out.println("</script>");
}
db.close();
%>

