package kpu.web.club.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kpu.web.club.domain.MemberVO;
import kpu.web.club.persistence.MemberDAO;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cmdReq="", message;
		cmdReq = request.getParameter("cmd");
		
		if(cmdReq.equals("join")) {
			response.sendRedirect("register.html");
		} 
		else if(cmdReq.equals("update")) {
			MemberDAO dao = new MemberDAO();
			MemberVO vo = dao.read(request.getParameter("id"));
			request.setAttribute("member", vo);
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
		String cmdReq="", message;
		cmdReq = request.getParameter("cmd");
		
		if(cmdReq.equals("join")) {
			MemberVO vo = new MemberVO();
			
			vo.setId(request.getParameter("id"));
			vo.setPasswd(request.getParameter("passwd"));
			vo.setNickname(request.getParameter("nickname"));
			vo.setMobile(request.getParameter("mobile"));
			
			request.setAttribute("member", vo);
			request.setAttribute("id", vo.getId());
			request.setAttribute("passwd", vo.getPasswd());
			request.setAttribute("nickname", vo.getNickname());
			request.setAttribute("mobile", vo.getMobile());
			
			MemberDAO dao = new MemberDAO();
			dao.add(vo);
			
			request.setAttribute("member", vo);
			
			RequestDispatcher view = request.getRequestDispatcher("registerComplete.html");
			view.forward(request, response);
			
		} else if(cmdReq.equals("login")) {
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			
			MemberDAO dao = new MemberDAO();
			String[] arr1 = dao.login(id, passwd);
			
			if(arr1[0] != null) {
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("passwd", passwd);
				session.setAttribute("nickname", arr1[0]);
				session.setAttribute("mobile", arr1[1]);
				
				RequestDispatcher view = request.getRequestDispatcher("home.html");
				view.forward(request, response);
			}else {				
				//message = "아이디 또는 비밀번호가 일치하지 않습니다.";
				//request.setAttribute("fail", message);
				RequestDispatcher view = request.getRequestDispatcher("login.jsp");
				view.forward(request, response);
			}
			
			
		} else if(cmdReq.equals("update")) {
			MemberVO vo = new MemberVO();
			
			vo.setId(request.getParameter("id"));
			vo.setPasswd(request.getParameter("passwd"));
			vo.setNickname(request.getParameter("nickname"));
			vo.setMobile(request.getParameter("mobile"));
			
			request.setAttribute("member", vo);
			request.setAttribute("id", vo.getId());
			request.setAttribute("passwd", vo.getPasswd());
			request.setAttribute("nickname", vo.getNickname());
			request.setAttribute("mobile", vo.getMobile());
			
			MemberDAO dao = new MemberDAO();
			dao.update(vo);
			
			request.getSession().setAttribute("nickname", vo.getNickname());
			request.setAttribute("member", vo);
			
			RequestDispatcher view = request.getRequestDispatcher("home.html");
			view.forward(request, response);			
		} else if(cmdReq.equals("withdraw")) {
			MemberVO vo = new MemberVO();
			
			vo.setId(request.getParameter("id"));
			vo.setPasswd(request.getParameter("passwd"));
			
			request.setAttribute("member", vo);
			request.setAttribute("id", vo.getId());
			request.setAttribute("passwd", vo.getPasswd());
			
			MemberDAO dao = new MemberDAO();
			dao.delete(vo);
			
			request.setAttribute("member", vo);
			RequestDispatcher view = request.getRequestDispatcher("withdrawComplete.html");
			view.forward(request, response);
		}
	}
}
