package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ELCulProc
 */
@WebServlet("/ELCulProc.do")
public class ELCulProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	public void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String exp1 = request.getParameter("exp1");
		String exp2 = request.getParameter("exp2");
		String exp3 = request.getParameter("exp3");
	
		
		int expValue1 = Integer.parseInt(exp1);
		int expValue3 = Integer.parseInt(exp3);
		int exp4;
		
		if(exp2.equals("+")){ 
			exp4 = expValue1 + expValue3;
		}
		else if (exp2.equals("-")) {
			exp4 = expValue1 - expValue3;
		}
		else if (exp2.equals("/")) {
			exp4 = expValue1 / expValue3;
		}
		else {
			exp4 = expValue1 * expValue3;
		}
		
		request.setAttribute("exp1", exp1);
		request.setAttribute("exp2", exp2);
		request.setAttribute("exp3", exp3);
		request.setAttribute("exp4", exp4);
		
		RequestDispatcher dis = request.getRequestDispatcher("ElCul.jsp");
				
		dis.forward(request, response);
		
	}
}
