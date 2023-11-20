package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import controller.Controller;
//import service.select;
//import service.where;
import util.ConvertUtils;
import util.JDBCUtil;
import vo.Book;
import vo.BookRent;
import vo.BookRequest;

public class BookDAO {
	private static BookDAO singleTon = null;

	private BookDAO() {
	};

	public static BookDAO getInstance() {
		if (singleTon == null) {
			singleTon = new BookDAO();
		}
		return singleTon;
	}

	JDBCUtil jdbc = JDBCUtil.getInstance();

	String sql = "select rownum as num, book_no, substr(title,1,5) title, substr(author,1,5) author, "
			+ "substr(publisher, 1,5) publisher, to_char(pub_date,'yyyy-mm-dd') pub_date, "
			+ "rent_count,book_stat,recom_book, resv_mem_id,cate_no,book_del ";
			
	// 회원이 보는 추천 도서 리스트
	public List<Book> recBook() {
		String sqlRec = sql + "from book where book_del ='N' and recom_book = 'Y'";
		List recBook = jdbc.selectList(sqlRec);
		return ConvertUtils.convertToList(recBook, Book.class);
	}

	// 회원이 보는 인기도서
	public List<Book> bestBook() {
		String sqlBest = sql + "from (select rownum as num, x.* from(select *from book order by rent_count desc) x)\r\n"
				+ "where book_del ='N' and num<=20";
		List btBook = jdbc.selectList(sqlBest);
		return ConvertUtils.convertToList(btBook, Book.class);
	}

	// 회원이 보는 신착도서
	public List<Book> newBook() {
		String sqlNew = sql + "from book where pub_Date like '23/11%'";
		List newBook = jdbc.selectList(sqlNew);
		return ConvertUtils.convertToList(newBook, Book.class);
	}

	// 관리자가 보는 도서 전체 리스트

	public List<Book> adBookList(List<Object> param) {

		String sqlBook =  "select *\r\n" + 
				"from (select rownum as num, book_no, substr(title,1,5) title, substr(author,1,5) author,\r\n" + 
				"        substr(publisher, 1,5) publisher, to_char(pub_date,'yyyy-mm-dd') pub_date,\r\n" + 
				"            rent_count,book_stat,recom_book, nvl(resv_mem_id,'예약가능') resv_mem_id, cate_no,book_del from book) page\r\n" + 
				"            where page.num >= ? and page.num <= ?";
		List<Map<String, Object>> adBookList = jdbc.selectList(sqlBook, param);

		return ConvertUtils.convertToList(adBookList, Book.class);

	}

	// 관리자가 도서 추가
	public int bookUpdate(List<Object> newBook) {
		String sql = "insert into book(book_no,title,author,publisher,pub_date,cate_no,recom_book)\r\n"
				+ "values(?,?,?,?,?,?,?)";
		return jdbc.update(sql, newBook);
	}

	// 관리자가 도서 삭제
	public int bookDelete(String select) {
		String sql = "update book set book_del='Y' where book_no = ?";
		List<Object> param = new ArrayList<Object>();
		param.add(select);
		return jdbc.update(sql, param);

	}

	// 관리자가 추천도서 등록
	public int reBookUpdate(String select) {
		String sql = "update book set recom_book='Y' where book_no = ?";
		List<Object> param = new ArrayList<Object>();
		param.add(select);
		return jdbc.update(sql, param);
	}

	// 관리자가 희망도서 목록 보기
	public List<BookRequest> wishBookList() {
		String sql = "select * from book_request";
		if (jdbc.selectList(sql) != null) {
			List<Map<String, Object>> wishBookList = jdbc.selectList(sql);
			return ConvertUtils.convertToList(wishBookList, BookRequest.class);
		} else {
			return null;
		}
	}

	// 도서검색
	String sqlSc = sql + "from book where title||author||publisher like '%'||?||'%' and book_del='N'";

	public List<Book> scBook(String scKey) {

		List<Object> param = new ArrayList<Object>();
		param.add(scKey);
		List<Map<String, Object>> scBookList = jdbc.selectList(sqlSc, param);
		return ConvertUtils.convertToList(scBookList, Book.class);
	}

	// 도서 선택후 대출
	public Object selBook(String bookNo, String id, String rentNo) {
		List<Object> rlist = new ArrayList<Object>();
		rlist.add(bookNo);
		rlist.add(id);
		rlist.add(rentNo);
		String rentSql = "insert into rent(book_no, mem_id, rent_no) values(?, ?, ?)";

		List<Object> mlist = new ArrayList<Object>();
		mlist.add(id);
		String memSql = "update member set count = count+1 where mem_id = ?";

		List<Object> blist = new ArrayList<Object>();
		blist.add(bookNo);
		String bookSql = "update book set book_stat = '대출중', rent_count = rent_count+1 where book_no = ?";

		jdbc.update(rentSql, rlist);
		jdbc.update(memSql, mlist);
		jdbc.update(bookSql, blist);

		return null;
	}

	// 이거 수정해야함 햇를듯? 아마 한듯
	public List<BookRent> myBookList(String id) {
		String sql = "select *\r\n"
				+ "from (select  rownum no, r1.exten_count, r1.book_no, b.title, to_char(r1.rent_date, 'yyyy.mm.dd') rent_date, \r\n"
				+ "        to_char(r1.rent_date+7*(1+r1.exten_count), 'yyyy.mm.dd') due_date, to_char(r2.ret_date, 'yyyy.mm,dd') ret_date , r1.mem_id, r1.rent_no \r\n"
				+ "        from rent r1, return r2, book b\r\n"
				+ "        where r1.rent_no = r2.rent_no(+) and b.book_no = r1.book_no \r\n"
				+ "        and ret_date is null and mem_id = ?)";
		List<Object> param = new ArrayList<Object>();
		param.add(id);

//		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
//		list = jdbc.selectList(sql, param);
//		return ConvertUtils.convertToList(list, BookRent.class);
		if (jdbc.selectList(sql, param) == null)
			return null;
		else {
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			list = jdbc.selectList(sql, param);
			return ConvertUtils.convertToList(list, BookRent.class);
		}
	}

	public void reqBook(List<Object> param) {
		String sql = "insert into book_request(req_id,title,author,publisher,mem_id)\r\n" + "values(?,?,?,?,?)";
		jdbc.update(sql, param);
	}

	public Book checkReserve(String bookNo) {
		List<Object> param = new ArrayList<Object>();
		param.add(bookNo);
		String sql = "select book_stat from book where book_no = ?";
		Map<String, Object> map = jdbc.selectOne(sql, param);
		return ConvertUtils.convertToVo(map, Book.class);
	}


	public void returnBook(String retNo, String rentNo, String memID, String bookNo) {
		
		List<Object> Rparam = new ArrayList<Object>();
		Rparam.add(retNo);
		Rparam.add(rentNo);
		String retSql = "insert into return(ret_no, rent_no) values(?, ?)";
		jdbc.update(retSql, Rparam);
		
		List<Object> Bparam = new ArrayList<Object>();
		Bparam.add(bookNo);
		String bookSql = "update book set book_stat = '대출가능' where book_no = ?";
		jdbc.update(bookSql, Bparam);
		
		List<Object> Mparam = new ArrayList<Object>();
		Mparam.add(memID);
		String memSql = "update member set count = count -1 where mem_id = ?";
		jdbc.update(memSql, Mparam);
		
	}

	
	public int bookreserve(List<Object> param) {
		String sql = "update book set resv_mem_id = ?, book_stat = '예약중' where book_no = ?";
		int result = jdbc.update(sql, param);
		return result;
	}

	public int extendBook(String rentNo) {
//		String sql = "update rent set exten_count = 1 where rent_no = ?";	
		String sql = "update rent set exten_count = 1 where rent_no = ?";
		List<Object> param = new ArrayList<Object>();
		param.add(rentNo);
		System.out.println(rentNo);
		int result = jdbc.update(sql, param);
		return result;
	}

	public List<Book> myBookRerve(List<Object> param) {
		String sql ="select b.book_no, substr(b.title, 1, 5) title, substr(b.author, 1,5) author, \r\n" + 
				"            substr(b.publisher, 1, 5) publisher, b.resv_mem_id, \r\n" + 
				"            to_char(r.rent_date+7*(exten_count + 1), 'yyyy.mm.dd') due_date\r\n" + 
				"from rent r, book b\r\n" + 
				"where b.resv_mem_id = ? and b.book_no = r.book_no";
		
//		List<Map<String, Object>> list = jdbc.selectList(sql, param);
		if(jdbc.selectList(sql, param) == null) return null;
		List<Map<String, Object>> list = jdbc.selectList(sql, param);
		return ConvertUtils.convertToList(list, Book.class);
		
	}

	public Book countBook() {
		String sql = "select count(*) allBook from book";
		Map<String, Object> map = jdbc.selectOne(sql);
		return ConvertUtils.convertToVo(map, Book.class);
	}
}
