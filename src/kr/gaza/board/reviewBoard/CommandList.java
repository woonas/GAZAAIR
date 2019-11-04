/*
 * package kr.goott.board;
 * 
 * import java.io.IOException; import java.util.List;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import kr.goott.controller.CommandService;
 * 
 * public class CommandList implements CommandService {
 * 
 * @Override public String execute(HttpServletRequest request,
 * HttpServletResponse response) throws ServletException, IOException { //����������
 * String pageNumStr = request.getParameter("pageNum"); BoardVO vo = new
 * BoardVO(); if(pageNumStr!=null && !pageNumStr.contentEquals("")) {
 * vo.setPageNum(Integer.parseInt(pageNumStr)); } BoardDAO dao = new BoardDAO();
 * 
 * //�ѷ��ڵ�� vo.setTotalRecord(dao.boardTotalRecord()); //����������
 * if(vo.getTotalRecord() % vo.getOnePageRecord() == 0 ) {
 * vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()); }else {
 * vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1); } //������ ��ȣ��
 * ���������� ��� vo.setStartPage((vo.getPageNum()-1)/vo.getOnePageMax() *
 * vo.getOnePageMax() +1);
 * 
 * //�ش������� ���ڵ� ���� List<BoardVO> lst = dao.getAllRecord(vo.getPageNum(),
 * vo.getOnePageRecord());
 * 
 * //���������� ������ ������ request.setAttribute("vo", vo); request.setAttribute("lst",
 * lst);
 * 
 * return "list.jsp"; }
 * 
 * }
 */

package kr.gaza.board.reviewBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// ����������
				String pageNumStr = request.getParameter("pageNum");
				BoardVO vo = new BoardVO();
				
				if(pageNumStr!=null && !pageNumStr.equals("")) {
					vo.setPageNum(Integer.parseInt(pageNumStr));
				}
				
				BoardDAO dao = new BoardDAO();
				// �� ���ڵ� ��
				vo.setTotalRecord(dao.boardTotalRecord());
				
				// �� ������ ��
				if(vo.getTotalRecord() % vo.getOnePageRecord() == 0) {
					vo.setTotalPage(vo.getTotalRecord() / vo.getOnePageRecord());
				}else {
					vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1);
				}
				// ������ ��ȣ�� ���������� ���
				vo.setStartPage((vo.getPageNum() - 1)/ vo.getOnePageMax() * vo.getOnePageMax()+1 );
				// �ش������� ���ڵ� ����
				List<BoardVO> lst = dao.getAllRecord(vo.getPageNum(), vo.getOnePageRecord(), vo.getTotalRecord(), vo.getTotalPage());
				
				// ���������� ������ ������
				request.setAttribute("vo", vo);
				request.setAttribute("lst", lst);

				return "list.jsp";
	}

}
