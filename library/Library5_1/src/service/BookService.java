package service;


import java.util.List;

import dao.BookDAO;
import vo.Book;
import vo.BookRent;

public class BookService {
	private static BookService singleTon = null;

	private BookService() {
	};

	public static BookService getInstance() {
		if (singleTon == null) {
			singleTon = new BookService();
		}
		return singleTon;
	}
	BookDAO bDao = BookDAO.getInstance();

	//회원이 추천도서목록 보기
	public List<Book> recBook() {
		return bDao.recBook();
	}
	//회원이 인기도서목록 보기
	public List<Book> bestBook() {
		return bDao.bestBook();
		
	}
	//회원이 신간도서목록 보기
	public List<Book> newBook() {
		return bDao.newBook();
		
	}
	//회원이 검색한도서 목록 보기
	public List<Book> ScBook(String scKey) {
		return bDao.scBook(scKey);
		
	}
	
	//회원이 검색한 도서 목록에서 선택한 도서 상세보기
	public void selBook(String bookNo, String id, String rentNo) {
		bDao.selBook(bookNo, id, rentNo);
	}


	public List<BookRent> myBookList(String id) {
		return bDao.myBookList(id);
	}


	public void reqBook(List<Object> param) {
		// TODO Auto-generated method stub
		bDao.reqBook(param);
	}

	public String checkReserve(String bookNo) {
		return bDao.checkReserve(bookNo).getBook_stat();		
	}

	public void returnBoook(String retNo, String rentNo,String memID, String bookNo) {
		// TODO Auto-generated method stub
		bDao.returnBook(retNo, rentNo, memID, bookNo);
	}

	public boolean bookreserve(List<Object> param) {
//		book_no, String id)
		int result = bDao.bookreserve(param);
		if(result == 0) return false;
		else return true;
	}
//
	public boolean extendBook(String rentNo) {
		if(bDao.extendBook(rentNo) == 0) return false;
		else return true;
	}

//	select * from book 	where resv_mem_id = 'test1';
	public List<Book> myBookReserve(List<Object> param) {
		return bDao.myBookRerve(param);
	}

	public Book countBook() {
		return bDao.countBook();
	}

	
}
