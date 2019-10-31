package kr.goott.kimbo.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;
import kr.goott.kimbo.tattooist.TattooistVO;

public class CommandSearchList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		SearchDAO dao = new SearchDAO();
		List<SearchVO> g_list = dao.getGenreList();
		List<SearchVO> s_list = dao.getSubjectList();
		List<SearchVO> p_list = dao.getPartList();
		List<TattooistVO> t_list = dao.getAllTattooList();
		
		request.setAttribute("g_list", g_list);
		request.setAttribute("s_list", s_list);
		request.setAttribute("p_list", p_list);
		request.setAttribute("t_list", t_list);
		
		return "/search/park_search.jsp";
	}

}
