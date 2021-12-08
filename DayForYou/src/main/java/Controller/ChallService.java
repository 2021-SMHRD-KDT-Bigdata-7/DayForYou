package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChallService")
public class ChallService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("euc-kr");
//      chall_title//챌린지 제목
      String chall_title=request.getParameter("chall_title");
//      chall_certification//챌린지 인증방법
      String chall_certification=request.getParameter("chall_certification");
//      chall_start//챌린지 시작날짜
      String chall_start=request.getParameter("chall_start");
//      chall_period//챌린지 기한
      String chall_period=request.getParameter("chall_period");
//      chall_Private//챌린지 공개 비공개
      String chall_Private=request.getParameter("chall_Private");
//      chooseFile_1//챌린지 소개 사진
      String chooseFile_1=request.getParameter("chooseFile_1");
//      chall_Introduce//챌린지 소개내용
      String chall_Introduce=request.getParameter("chall_Introduce");
//      chooseFile_2//첼린지 인증 좋은예
      String chooseFile_2=request.getParameter("chooseFile_2");
//      chooseFile_3//챌린지 인증 나쁜예
      String chooseFile_3=request.getParameter("chooseFile_3");
      System.out.println(chall_title);
      System.out.println(chall_certification);
      System.out.println(chall_start);
      System.out.println(chall_period);
      System.out.println(chall_Private);
      System.out.println(chooseFile_1);
      System.out.println(chall_Introduce);
      System.out.println(chooseFile_2);
      System.out.println(chooseFile_3);
   }

}