package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;

@WebServlet("/myDailyChallinsert")
public class myDailyChallinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		DAO dao = new DAO();
		int chal_seq= Integer.parseInt(request.getParameter("chal_seq"));
		String attend_id=request.getParameter("attend_id");
		String mydaily_pic="img/challenge_sample/"+request.getParameter("mydaily_pic");
		int point= Integer.parseInt(request.getParameter("point"));
		String admit=request.getParameter("admit");
		System.out.println("last chal_seq"+chal_seq);
		System.out.println("last attend_id"+attend_id);
		System.out.println("last mydaily_pic"+mydaily_pic);
		System.out.println("last point"+point);
		System.out.println("last admit"+admit);
		int cnt=dao.MyDailyChallengeinsert(chal_seq,attend_id,mydaily_pic,point,admit);
		if(cnt>0) {
			System.out.println("mydailychallenge db insert success");
			response.sendRedirect("myDailyChallenge?chal_seq="+chal_seq);
		}else {
			System.out.println("mydailychallenge db insert fail");
			response.sendRedirect("myDailyChallenge?chal_seq="+chal_seq);
		}
	}

}
