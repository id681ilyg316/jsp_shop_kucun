<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//���� ���ݿ�������
request.setCharacterEncoding("gb2312");// ����ҳ����ַ���
ResultSet rs=null;//�����ѯ�����
String sql="";//����Ҫ��ѯ�� sql������
int row=1;//���巵��ִ��update ���������
	String keyid=(String)request.getParameter("keyid"); 
		String sp=(String)request.getParameter("sp");//��������Ʒ
String jg=(String)request.getParameter("jg");//�������۸�
String sl=(String)request.getParameter("sl");//����������
String ms=(String)request.getParameter("ms");//����������
String czr=(String)request.getParameter("czr");//������������
String cksj=(String)request.getParameter("cksj");//����������ʱ��

/*
.�����޸ĺ�̨ҳ��
*/	
 
sql="update chuku set sp='"+sp+"',jg='"+jg+"',sl='"+sl+"',ms='"+ms+"',czr='"+czr+"',cksj='"+cksj+"' where ckid='"+keyid+"'";
//ƴ��sql���
 //int row=0;

try{
		
			
		 row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='chukulist.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='chukulist.jsp'");
out.println("</script>");
}
db.close();
%>

