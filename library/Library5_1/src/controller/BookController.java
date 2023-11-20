package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import oracle.net.ns.SessionAtts;
import print.BookPrint;
import service.BookService;
import service.NoCreate;
import service.exceptChk;
import util.ScanUtil;
import util.View;
import vo.Book;
import vo.BookRent;

public class BookController extends BookPrint {

	private static final View BOOK_RESERVE = null;
	// static private Map<String, Object> sessionStorage =
	// Controller.sessionStorage;
	BookService bks = BookService.getInstance();
	exceptChk chk = exceptChk.getInstance();
	NoCreate nc = NoCreate.getInstance();

	public int countBook() {
		int count = bks.countBook().getAllBook();
		return count;
	}

	// 회원의 도서대출 페이지
	public View bookRent() {
		int count = (int) Controller.sessionStorage.get("count");
		System.out.println("내가 대출한 권수: " + count + " 남은 대여 권수: " + (5 - count));
		if (count == 5) {
			System.out.println("대출 가능한 권수를 초과하셨습니다.");
			return View.MEMBER_MENU;
		}

		printBookRent();
		int select = ScanUtil.nextInt("메뉴를 선택하세요.");
		switch (select) {
		case 1:
			return View.REC_BOOK; // 추천도서
		case 2:
			return View.BEST_BOOK; // 인기도서
		case 3:
			return View.NEW_BOOK; // 신착도서
		case 4:
			return View.SEARCH_BOOK; // 도서검색 -
		case 99:
			return View.MEMBER_MENU;
		default:
			System.out.println("잘못 입력 하였습니다. 처음으로 돌아갑니다");
			return View.BOOK_RENT;
		}
	}

	//////////////////////////////////////////
	// 회원이 추천 도서 보기
	public View recBook() {
		String id = (String) Controller.sessionStorage.get("id");
		List<Book> recBkList = bks.recBook();
		printRecBook(recBkList);
//		System.out.println(recBkList);
		// 관리자가 추천도서보기

		if (Controller.sessionStorage.containsKey("adminid")) {
			return View.ADMIN_BOOK;
		} else {

			String select = ScanUtil.nextLine("도서를 빌리시겠습니까(y/n)?>> ");
			if (select.equalsIgnoreCase("y")) {
				int count = 0;
				if (bks.myBookList(id) == null) {
					count = 0;
				} else
					count = bks.myBookList(id).size();
				while (true) {
					if (count > 4) {
						System.out.println("대출 가능 권수를 모두 채웠습니다");
						return View.MEMBER_MENU;
					}
					recBkList = bks.recBook();
					printRecBook(recBkList);
					borrow(recBkList);
					String conn = ScanUtil.nextLine("계속 빌리시겠습니까(y/n)>> ");

					if (chk.ynChk(conn).equalsIgnoreCase("n"))
						return View.BOOK_RENT;
				}

			} else if (select.equalsIgnoreCase("n")) {
				return View.BOOK_RENT;// book가 book기본 페이지
			} else {
				System.out.println("잘못입력하셨습니다.");
				return View.REC_BOOK;
			}
		}
	}

	// 회원이 인기 도서 보기
	public View bestBook() {
		String id = (String) Controller.sessionStorage.get("id");
		List<Book> bestList = bks.bestBook();
		printBestBook(bestList);

		String sel = ScanUtil.nextLine("도서를 빌리시겠습니까?(y/n)>> ");
		if (chk.ynChk(sel).equalsIgnoreCase("n"))
			return View.BOOK_RENT;
		else {

			while (true) {
				int count = 0;
				if (bks.myBookList(id) == null) {
					count = 0;
				} else
					count = bks.myBookList(id).size();
				if (count > 4) {
					System.out.println("대출 가능 권수를 모두 채웠습니다");
					return View.MEMBER_MENU;
				}
				bestList = bks.bestBook();
				printBestBook(bestList);
				borrow(bestList);

				String conn = ScanUtil.nextLine("계속 빌리시겠습니까?(y, n) >>");
				if (chk.ynChk(conn).equalsIgnoreCase("n"))
					break;
			}
		}
		return View.BOOK_RENT;
	}

	// 회원이 신착 도서 보기
	public View newBook() {
		List<Book> newBookList = bks.newBook();
		printNewBook(newBookList);
		return View.BOOK_RENT;
	}

	// 회원이 도서 검색하기
	public View searchBook() {
		String scKey = ScanUtil.nextLine("검색어를 입력하세요>>");
		String bookNo, id;

		List<Book> ScBookList = bks.ScBook(scKey);

		if (bks.ScBook(scKey).isEmpty()) {
			System.out.println("검색결과가 없습니다");
			printReqMenu();
			int select = ScanUtil.nextInt("메뉴를 선택하세요>>");

			if (select == 1)
				return View.REQ_BOOK;
			else
				return View.SEARCH_BOOK;
		}

		while (true) {
			printScBook(ScBookList);
			int select = ScanUtil.nextInt("대출하고자 하는 도서 번호 선택 >> ");
//			select--;
			if (select < 0 || select > ScBookList.size() - 1) {
				System.out.println("잘못된 입력입니다 다시 확인해 주세요");
				continue;
			} else if (ScBookList.get(select - 1).getBook_stat().equals("대출중")) {
				System.out.println("이미 대출중인 도서입니다");
				continue;
			} else if (ScBookList.get(select - 1).getBook_stat().equals("예약중")) {
				System.out.println("예약도서입니다. 카운터에 문의해주세요");
				continue;
			} else {
				bookNo = ScBookList.get(select - 1).getBook_no();
				id = (String) Controller.sessionStorage.get("id");
				String rentNo = nc.genNo("rent");
				bks.selBook(bookNo, id, rentNo);
			}
			int a = (int)Controller.sessionStorage.get("count") +1;
			Controller.sessionStorage.put("count", a);
			String con = ScanUtil.nextLine("계속 하시겠습니까? (y,n)");
			if (chk.ynChk(con).equalsIgnoreCase("n"))
				break;
		}

		String select = ScanUtil.nextLine("계속 대출하시겠습니까?(y,n)>> ?");
		if (chk.ynChk(select).equalsIgnoreCase("y"))
			return View.BOOK_SEARCH;
		else
			return View.BOOK_RENT;
	}

	public void borrow(List<Book> book) {
		int select = ScanUtil.nextInt("대출하고자 하는 도서 번호 선택 >> ");
		select--;
		if (select < 0 || select > book.size() - 1) {
			System.out.println("잘못된 입력입니다 다시 확인해 주세요");
		} else if (book.get(select).getBook_stat().equals("대출중")) {
			System.out.println("이미 대출중인 도서입니다");
			String res = ScanUtil.nextLine("예약하시겠습니까?(y,n)>> ");
			if (chk.ynChk(res).equalsIgnoreCase("y"))
				bookreserve(book.get(select).getBook_no(), (String) Controller.sessionStorage.get("id"));

		} else if (book.get(select).getBook_stat().equals("예약중")) {
			System.out.println("예약도서입니다. 카운터에 문의해주세요");
		} else {
			String bookNo = book.get(select).getBook_no();
			String id = (String) Controller.sessionStorage.get("id");
			String rentNo = nc.genNo("rent");
			// 899.차.890 test1 rentNo
//			System.out.println(bookNo + " " + id + " " + rentNo);
			bks.selBook(bookNo, id, rentNo);
			System.out.println("대출이 완료되었습니다");
			int a = (int) Controller.sessionStorage.get("count") + 1;
			Controller.sessionStorage.put("count", a);
		}
	}

	// 내 대출 목록
	public List<BookRent> myList(String id) {
		List<BookRent> list = new ArrayList<BookRent>();
		if (bks.myBookList(id) == null) {
			return null;
		} else {
			list = bks.myBookList(id);
			return list;
		}
	}

//	List<BookRent> list = myList(id);
//	printMyBookList(list);
	public View myBookList() {
		String id = (String) Controller.sessionStorage.get("id");
		if (myList(id) == null) {
			System.out.println("대출한 도서가 없습니다.");
			return View.MEMBER_MENU;
		} else {
			List<BookRent> list = myList(id);
			printMyBookList(list);
		}

		System.out.println("1. 반납");
		System.out.println("2. 연장");
		System.out.println("99. 뒤로가기");
		int con = ScanUtil.nextInt("메뉴를 선택하세요>> ");
		if (con == 1)
			return View.BOOK_RETURN;
		else if (con == 2)
			return View.BOOK_EXTEND;
		else if (con == 99)
			return View.MEMBER_MENU;
		else {
			System.out.println("잘못입력하셨습니다");
			return View.MYBOOKLIST;
		}
	}

	// nc.genNo(str)
//	[BookRent(book_no=915.바.890, mem_id=test1, rent_no=null, rent_date=2023.11.05, 
//			ret_date=null, due_date=2023.11.12, exten_count=0, title=바보, no=1)
	// 1.예약인지 체크
	// 2.반납완료되면 return 테이블 입력, 멤버에 count--, 책테이블 수정
	public View returnBook() {
		String id = (String) Controller.sessionStorage.get("id");
		// 책이름, 책번호, 대여번호
		while (true) {
			List<BookRent> list = myList(id);
			if(list.size() == 0) {
				System.out.println("더 반납하실 책이 없습니다");
				return View.MEMBER_HOME;
			}
			printMyBookList(list);
			int select = ScanUtil.nextInt("반납하실 책을 선택해주세요(뒤로가기: 99)>> ");
			if (select == 99)
				break;
			if ((select - 1) < 0 || (select - 1) > list.size()) {
				System.out.println("잘못된 입력입니다");
				continue;
			}
			String retNo = nc.genNo("ret"); // return 수정용
			String bookNo = list.get(select - 1).getBook_no(); // 책 상태 수정용, 예약도서인지 확인
//			System.out.println(bookNo);
			if (bks.checkReserve(bookNo).equals("예약중")) {
				System.out.println("예약도서입니다. 카운터에 반납해주세요");
				continue;
			}

			String memID = list.get(select - 1).getMem_id(); // 멤버 수정용
			String rentNo = list.get(select - 1).getRent_no();
//			System.out.println(rentNo);
			System.out.println(rentNo + " " + retNo + " " + memID + " " + bookNo);

			bks.returnBoook(retNo, rentNo, memID, bookNo);

			String conn = ScanUtil.nextLine("계속 하시겠습니까?(y/n)>> ");
			if (chk.ynChk(conn).equalsIgnoreCase("y"))
				continue;
			else
				break;
		}
		return View.BOOK_RENT;
	}

	// 연장 --> 내 대출목록 불러오기
	public View extendBook() {

		String id = (String) Controller.sessionStorage.get("id");

		while (true) {
			List<BookRent> list = myList(id);
			printMyBookList(list);
			int select = ScanUtil.nextInt("연장할 책을 입력해주세요(뒤로가기: 99)>> ");
			if (select == 99)
				return View.MYBOOKLIST;
			String bookNo = list.get(select - 1).getBook_no();
			if (select < 1 || select > list.size()) {
				System.out.println("번호를 다시 입력해 주세요");
				continue;
			} else if (list.get(select - 1).getExten_count() != 0) {
				System.out.println("해당 도서는 연장횟수가 초과되었습니다");
			} else if (bks.checkReserve(bookNo).equals("예약중")) {
				System.out.println("예약도서는 연장하실 수 없습니다. 카운터에 문의해 주세요");
			} else {
				String rentNo = list.get(select - 1).getRent_no();
				if (bks.extendBook(rentNo))
					System.out.println("연장이 완료되었습니다");

				String conn = ScanUtil.nextLine("계속 하시겠습니까?(y,n)>> ");
				if (chk.ynChk(conn).equalsIgnoreCase("n"))
					break;
			}
		}

		return View.MEMBER_MENU;
	}

	// 책 요청
	public View reqBook() {
		List<Object> param = new ArrayList();
		param.add(nc.genNo("REQB"));

		param.add(ScanUtil.nextLine("책제목>>"));
		param.add(ScanUtil.nextLine("작가>>"));
		param.add(ScanUtil.nextLine("출판사>>"));
		param.add(Controller.sessionStorage.get("id"));

		bks.reqBook(param);
		System.out.println("등록되었습니다");

		return View.BOOK_RENT;
	}

	public void bookreserve(String book_no, String id) {
		List<Object> param = new ArrayList<Object>();
		param.add(id);
		param.add(book_no);
		if (bks.bookreserve(param)) {
			System.out.println("예약이 완료되었습니다");
		}
	}

//	select * from book 	where resv_mem_id = 'test1';
	public View myBookReserve() {
		List<Object> param = new ArrayList<Object>();
		param.add(Controller.sessionStorage.get("id"));
		if (bks.myBookReserve(param) == null) {
			System.out.println("예약하신 도서가 없습니다.");
			return View.MEMBER_MENU;
		}
		List<Book> resvBook = bks.myBookReserve(param);
		printResrveBook(resvBook);
		return View.MEMBER_MENU;
	}
}

/*
 * 
 * public void borrow(List<Book> book) {
 * 
 * while(true) {
 * 
 * printScBook(book); int select = ScanUtil.nextInt("대출하고자 하는 도서 번호 선택 >> ");
 * select--; if(select < 0 || select > book.size() - 1) {
 * System.out.println("잘못된 입력입니다 다시 확인해 주세요"); continue; } else
 * if(book.get(select).getBook_stat().equals("대출중")){
 * System.out.println("이미 대출중인 도서입니다"); continue; } else
 * if(book.get(select).getBook_stat().equals("예약중")){
 * System.out.println("예약도서입니다. 카운터에 문의해주세요"); continue; } else { String bookNo
 * = book.get(select).getBook_no(); String id = (String)
 * Controller.sessionStorage.get("id"); String rentNo = nc.genNo("rent");
 * bks.selBook(bookNo, id, rentNo); }
 * 
 * String con = ScanUtil.nextLine("계속 하시겠습니까? (y,n)");
 * if(chk.ynChk(con).equalsIgnoreCase("n")) break; } }*
 *
 */
