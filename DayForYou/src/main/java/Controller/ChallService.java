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
		request.setCharacterEncoding("euc-kr");
		
		String savePath= request.getServletContext().getRealPath("img");
		//최대 파일크기(단위 : byte) : 5MB
		int maxSize = 5*1024*1024;
		//인코딩 타입
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request, savePath,maxSize,encoding,new DefaultFileRenamePolicy());
		//파라미터 수집
		
		
//      chall_cat1//챌린지 분류
		String chall_cat1 = request.getParameter("chall_cat1");
//      chall_title//챌린지 제목
		String chall_subject = request.getParameter("chall_subject");
//      chall_cat2//챌린지 분류2
		String chall_cat2 = request.getParameter("chall_cat2");
//      chall_Introduce//챌린지 소개내용
		String chall_Introduce = request.getParameter("chall_Introduce");
//      chooseFile_1//챌린지 소개 사진
		String chall_pic1 = multi.getFilesystemName("chall_pic1");
//      chall_start//챌린지 시작날짜( 등록 일자 )
		String chall_start = request.getParameter("chall_start");
//      chall_period//챌린지 기한
		String chall_period = request.getParameter("chall_period");
//      chall_Private//챌린지 공개 비공개
		String chall_Private = request.getParameter("chall_Private");
//      chooseFile_2//첼린지 인증 좋은예
		String chall_pic2 = multi.getFilesystemName("chall_pic2");
//      chooseFile_3//챌린지 인증 나쁜예
		String chall_pic3 = multi.getFilesystemName("chall_pic3");
//      chall_pw//챌린지 모집 비밀번호
		String chall_pw = request.getParameter("chall_pw");
		
		Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        DateFormat df = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분");
       
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
        	chall_period =(chall_start+" ~ "+df.format(cal.getTime()));
        }else if(chall_period.equals("1_week")) {
            cal.add(Calendar.WEEK_OF_MONTH, 1);
            chall_period =(chall_start+" ~ "+df.format(cal.getTime()));
        }else if(chall_period.equals("2_weeks")) {
        	cal.add(Calendar.WEEK_OF_MONTH, 2);
        	chall_period =(chall_start+" ~ "+df.format(cal.getTime()));
        }else if(chall_period.equals("3_weeks")) {
        	cal.add(Calendar.WEEK_OF_MONTH, 3);
        	chall_period =(chall_start+" ~ "+df.format(cal.getTime()));
        }else {
        	cal.add(Calendar.MONTH, 1);
        	chall_period =(chall_start+" ~ "+df.format(cal.getTime()));
        }
        

		System.out.println(chall_cat1);
		System.out.println(chall_subject);
		System.out.println(chall_cat2);
		System.out.println(chall_Introduce);
		System.out.println(chall_pic1);
		System.out.println(chall_start); //기한
		System.out.println(chall_period); // 기한
		System.out.println(chall_Private); //비밀번호 설정
		System.out.println(chall_pic2); 
		System.out.println(chall_pic3);
		System.out.println(chall_pw);

		
		DAO dao = new DAO();
		// DAO의 JOIN 메소드 사용
		
		
		
		
		
		int cnt = dao.ChallInsert(chall_cat1,chall_subject,chall_cat2,chall_Introduce,chall_pic1,chall_start,chall_period, chall_Private,
				chall_pic1,chall_pic2, chall_pic3,chall_pw);

		if (cnt > 0) {
			System.out.println("챌린지 생성 성공");
			// 같은 이름으로 다른 데이터를 집어넣으면 덮어쓰기 된다.
			response.sendRedirect("challenge_main.jsp");
		} else {
			System.out.println("챌린지 생성 실패");
			response.sendRedirect("challenge_main.jsp");
		}
	}

}