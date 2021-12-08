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
//      chall_title//ç���� ����
      String chall_title=request.getParameter("chall_title");
//      chall_certification//ç���� �������
      String chall_certification=request.getParameter("chall_certification");
//      chall_start//ç���� ���۳�¥
      String chall_start=request.getParameter("chall_start");
//      chall_period//ç���� ����
      String chall_period=request.getParameter("chall_period");
//      chall_Private//ç���� ���� �����
      String chall_Private=request.getParameter("chall_Private");
//      chooseFile_1//ç���� �Ұ� ����
      String chooseFile_1=request.getParameter("chooseFile_1");
//      chall_Introduce//ç���� �Ұ�����
      String chall_Introduce=request.getParameter("chall_Introduce");
//      chooseFile_2//ÿ���� ���� ������
      String chooseFile_2=request.getParameter("chooseFile_2");
//      chooseFile_3//ç���� ���� ���ۿ�
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