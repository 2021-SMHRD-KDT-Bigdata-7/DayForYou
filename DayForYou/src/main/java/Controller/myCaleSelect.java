package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.CalendarDAO;
import model.CalendarVO;


@WebServlet("/myCaleSelect")
public class myCaleSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//DAO�� ���� ��̸���Ʈ �ҷ�����
		CalendarDAO cdao = new CalendarDAO();
		ArrayList<CalendarVO> todo_select = cdao.todo_select();
		
		Gson gson = new Gson();
		String json = gson.toJson(todo_select);
		
		// PrintWriter ��ü�̿��ؼ� out.print(json)
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(json);
		
	}

}
