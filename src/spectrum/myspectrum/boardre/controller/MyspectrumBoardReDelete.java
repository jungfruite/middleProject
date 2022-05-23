package spectrum.myspectrum.boardre.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spectrum.mbtiboard.service.MbtiBoardService;
@WebServlet("/myspectrumboardre/spectrumboardredelete")
public class MyspectrumBoardReDelete extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String boardPostnum =req.getParameter("boardPostnum");
		String delete = boardPostnum;
		
		
		boardPostnum = MbtiBoardService.getInstance().mbtiparent(boardPostnum);
		req.setAttribute("boardPostnum", boardPostnum);
		MbtiBoardService.getInstance().mbtiBoardDelete(delete);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/mbtiboard/mbtiboarddetail");
		requestDispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
