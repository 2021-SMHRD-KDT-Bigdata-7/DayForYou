package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


import model.DAO;
import model.MemberVo;

@WebServlet("/ChallService")
public class ChallService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savePath= request.getServletContext().getRealPath("img");
		//�ִ� ����ũ��(���� : byte) : 5MB
		int maxSize = 5*1024*1024;
		//���ڵ� Ÿ��
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding);
		//�Ķ���� ����
		
		
//      chall_cat1//ç���� �з�
		String chall_cat1 = multi.getParameter("chall_cat1");
//      chall_title//ç���� ����
		String chall_subject = multi.getParameter("chall_subject");
//      chall_cat2//ç���� �з�2
		String chall_cat2 = multi.getParameter("chall_cat2");
//      chall_Introduce//ç���� �Ұ�����
		String chall_Introduce = multi.getParameter("chall_Introduce");
//      chooseFile_1//ç���� �Ұ� ����
		String chall_pic1 = "img/challenge_sample/"+ multi.getFilesystemName("chall_pic1");
//      chall_start//ç���� ���۳�¥( ��� ���� )
		String chall_start = multi.getParameter("chall_start");
//      chall_period//ç���� ����
		String chall_period = multi.getParameter("chall_period");
//      chall_Private//ç���� ���� �����
		String chall_Private = multi.getParameter("chall_Private");
//      chooseFile_2//ÿ���� ���� ������
		String chall_pic2 ="img/challenge_sample/"+  multi.getFilesystemName("chall_pic2");
//      chooseFile_3//ç���� ���� ���ۿ�
		String chall_pic3 ="img/challenge_sample/"+  multi.getFilesystemName("chall_pic3");
//      chall_pw//ç���� ���� ��й�ȣ
		String chall_pw = multi.getParameter("chall_pw");
		Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
       
        if(chall_start.equals("today")) {
        	chall_start =df.format(cal.getTime());
        }else if(chall_start.equals("1_week")) {
            cal.add(Calendar.WEEK_OF_MONTH, 1);
        	chall_start =df.format(cal.getTime());
        }else if(chall_start.equals("2_weeks")) {
        	cal.add(Calendar.WEEK_OF_MONTH, 2);
        	chall_start =df.format(cal.getTime());
        }else {
        	cal.add(Calendar.MONTH, 1);
        	chall_start =df.format(cal.getTime());
        }
        
        if(chall_period.equals("1_day")) {
        	cal.add(Calendar.DATE, 1);
        	chall_period =(chall_start+"~"+df.format(cal.getTime()));
        }else if(chall_period.equals("1_week")) {
            cal.add(Calendar.WEEK_OF_MONTH, 1);
            chall_period =(chall_start+" ~ "+df.format(cal.getTime()));
        }else if(chall_period.equals("2_weeks")) {
        	cal.add(Calendar.WEEK_OF_MONTH, 2);
        	chall_period =(chall_start+"~"+df.format(cal.getTime()));
        }else if(chall_period.equals("3_weeks")) {
        	cal.add(Calendar.WEEK_OF_MONTH, 3);
        	chall_period =(chall_start+"~"+df.format(cal.getTime()));
        }else {
        	cal.add(Calendar.MONTH, 1);
        	chall_period =(chall_start+"~"+df.format(cal.getTime()));
        }
        

		System.out.println(chall_cat1);
		System.out.println(chall_subject);
		System.out.println(chall_cat2);
		System.out.println(chall_Introduce);
		System.out.println(chall_pic1);
		System.out.println(chall_start); //����
		System.out.println(chall_period); // ����
		System.out.println(chall_Private); //��й�ȣ ����
		System.out.println(chall_pic2); 
		System.out.println(chall_pic3);
		System.out.println(chall_pw);

		
		DAO dao = new DAO();
		// DAO�� JOIN �޼ҵ� ���
		
		
		
		
		
		int cnt = dao.ChallInsert(chall_cat1,chall_subject,chall_cat2,chall_Introduce,chall_pic1,chall_start,chall_period, chall_Private,
				chall_pic1,chall_pic2, chall_pic3,chall_pw);

		if (cnt > 0) {
			System.out.println("ç���� ���� ����");
			// ���� �̸����� �ٸ� �����͸� ��������� ����� �ȴ�.
			response.sendRedirect("challenge_main.jsp");
		} else {
			System.out.println("ç���� ���� ����");
			response.sendRedirect("challenge_main.jsp");
		}
	}

}