package kpu.web.club.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kpu.web.club.domain.ReviewVO;
import kpu.web.club.persistence.ReviewDAO;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cmdReq="", foodTypeReq="", message;
		cmdReq = request.getParameter("cmd");
		
		if(cmdReq.equals("reviewAdd")) {
			ReviewVO vo = new ReviewVO();
			
			vo.setFoodType(request.getParameter("foodType"));
			vo.setNickname(request.getParameter("nickname"));
			vo.setContent(request.getParameter("content"));
			
			request.setAttribute("review", vo);
			request.setAttribute("foodType", vo.getFoodType());
			request.setAttribute("nickname", vo.getNickname());
			request.setAttribute("content", vo.getContent());
			
			ReviewDAO dao = new ReviewDAO();
			dao.reviewAdd(vo);
			
			request.setAttribute("review", vo);

			RequestDispatcher view = request.getRequestDispatcher("home.html");
			view.forward(request, response);	
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cmdReq="", foodTypeReq="", message;
		cmdReq = request.getParameter("cmd");
		
		if(cmdReq.equals("reviewAdd")) {
			ReviewVO vo = new ReviewVO();
			
			vo.setFoodType(request.getParameter("foodType"));
			vo.setNickname(request.getParameter("nickname"));
			vo.setContent(request.getParameter("content"));
			
			request.setAttribute("review", vo);
			request.setAttribute("foodType", vo.getFoodType());
			request.setAttribute("nickname", vo.getNickname());
			request.setAttribute("content", vo.getContent());
			
			ReviewDAO dao = new ReviewDAO();
			dao.reviewAdd(vo);
			
			request.setAttribute("review", vo);

			RequestDispatcher view = request.getRequestDispatcher("home.html");
			view.forward(request, response);			
		}
	}

}
