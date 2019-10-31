package kr.gaza.noticeBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandNoticeList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 현재페이지
		String pageNumStr = request.getParameter("pageNum");
		NoticeBoardVO vo = new NoticeBoardVO();
		
		if(pageNumStr!=null && !pageNumStr.equals("")) {
			vo.setPageNum(Integer.parseInt(pageNumStr));
		}
		
		NoticeBoardDAO dao = new NoticeBoardDAO();
		// 총 레코드 수
		vo.setTotalRecord(dao.noticeBoardTotalRecord());
		
		// 총 페이지 수
		if(vo.getTotalRecord() % vo.getOnePageRecord() == 0) {
			vo.setTotalPage(vo.getTotalRecord() / vo.getOnePageRecord());
		}else {
			vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1);
		}
		// 페이지 번호의 시작페이지 계산
		vo.setStartPage((vo.getPageNum() - 1)/ vo.getOnePageMax() * vo.getOnePageMax()+1 );
		// 해당페이지 레코드 선택
		List<NoticeBoardVO> lst = dao.getAllRecord(vo.getPageNum(), vo.getOnePageRecord(), vo.getTotalRecord(), vo.getTotalPage());
		
		// 뷰페이지로 가져갈 데이터
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);

		return "list.jsp";
	}
}