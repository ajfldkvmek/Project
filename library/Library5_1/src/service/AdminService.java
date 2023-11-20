package service;

import java.util.List;

import dao.AdminDAO;
import dao.BookDAO;
import dao.MemberDAO;
import vo.Admin;
import vo.Book;
import vo.BookRequest;
import vo.Member;

public class AdminService {
	private static AdminService singleTon = null;

	private AdminService() {
	};

	public static AdminService getInstance() {
		if (singleTon == null) {
			singleTon = new AdminService();
		}
		return singleTon;
	}

	AdminDAO adDAO = AdminDAO.getInstance();
	BookDAO bDao = BookDAO.getInstance();
	MemberDAO mbDAO = MemberDAO.getInstance();

	public Admin login(List<Object> param) {
		if (adDAO.login(param) != null) {
			return adDAO.login(param);
		} else
			return null;

//		Admin ad = adDAO.login(param);
//		if (ad != null) {
////			Controller.sessionStorage.put("admin", ad);
//			return true;
//		}
//		return false;
	}

	// 추천도서등록
	public List<Book> adBookList(List<Object> param) {
		return bDao.adBookList(param);
	}

	// 새로운 도서 등록
	public boolean bookUpdate(List<Object> newBook) {
		if(bDao.bookUpdate(newBook) == 0) return false;
		return true;
	}

	// 도서 삭제
	public boolean bookDelete(String select) {
		if (bDao.bookDelete(select) == 0)
			return false;
		else
			return true;
	}

	// 추천도서 등록
	public boolean reBookUpdate(String select) {
		if (bDao.reBookUpdate(select) == 0)
			return false;
		else
			return true;
	}

	// 희망도서 보기
	public List<BookRequest> wishBookList() {
		return bDao.wishBookList();
	}

	// 회원전체 목록 보기
	public List<Member> adMemberList() {
		return mbDAO.adMemberList();
	}

	// 회원삭제
	public void memDel(String select) {
		mbDAO.memDel(select);
	}

	// 회원한명 선택하기
	public List<Member> memSelect(String select) {
		return mbDAO.memSelect(select);
	}
	
	public void memReset(String select) {
		mbDAO.memReset(select);
	}

}