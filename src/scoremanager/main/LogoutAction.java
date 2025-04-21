package scoremanager.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Action;

public class LogoutAction extends Action {
	public void execute(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String url = "";
		HttpSession session=request.getSession();


		if (session.getAttribute("user") != null) {
			session.invalidate();
		}


		url = "logout.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}
}
