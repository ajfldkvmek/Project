package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import print.AdminPrint;
import service.AdminService;
import service.BookService;
import service.MemberService;
import service.exceptChk;
import util.ScanUtil;
import util.View;
import vo.Book;
import vo.BookRequest;
import vo.Member;

public class AdminController extends AdminPrint {

	static private Map<String, Object> sessionStorage = Controller.sessionStorage;

	exceptChk chk = exceptChk.getInstance();

	AdminService as = AdminService.getInstance();
	MemberService ms = MemberService.getInstance();
	BookController bc = new BookController();
//	BookService bks = BookService.getInstance();

////관리자 도서관리

	// 관리자 :도서관리 메뉴
	public View adminBook() {
		printAdminBook();
		int select = ScanUtil.nextInt("메뉴를 선택하세요.");
		switch (select) {
		case 1:
			return View.ADMIN_BOOKLIST;
		case 2:
			return View.BOOK_UPDATE;
		case 3:
			return View.BOOK_DELETE;
		case 4:
			return View.RCBOOK_UPDATE;
		case 5:
			return View.WISHBOOK_LIST;
		case 6:
			return View.ADMIN_MENU;
		default:
			System.out.println("잘못 입력하셨습니다.");
			return View.ADMIN_BOOK;
		}
	}

	// 1, 1*15/1*15+1 2*15/2*15+1 3*15
	// 1 ~ 15, 16 ~ 30
	// 관리자 :전체 책 페이지 출력
	public View adBookList() {
//		System.out.println(bc.countBook());
		List<Object> param = new ArrayList<Object>();
		System.out.println("관리자전체도서조회");
		int page = 1;
		int lastPage = (bc.countBook() / 15) + 1;

		boolean exit = false;
		// 여기서 파라메터로 이동할 페이지 넘겨주기
		while (true) {
			System.out.println(page + "/" + lastPage);
			param.add((page - 1) * 15 + 1);
			param.add(page * 15);
			List<Book> adBookList = as.adBookList(param);
			printAdBookList(adBookList);
			// 다음페이지/ 이전페이지/ 첫페이지/ 마지막페이지/ 페이지선택/ 나가기
			String select = ScanUtil
					.nextLine("1:이전페이지  2:다음페이지 \n11:첫 페이지로 이동 99:마지막페이지로 이동\n페이지 검색:>>\n나가기: exit\n>> ");
			switch (select) {
			case "1":
				if (page == 1)
					System.out.println("첫페이지 입니다");
				else
					page--;
				break;
			case "2":
				if (page == lastPage)
					System.out.println("마지막 페이지 입니다");
				else
					page++;
				break;
			case "11":
				page = 1;
				break;
			case "99":
				page = lastPage;
				break;
			case ">>":
				page = ScanUtil.nextInt("이동할 페이지: ");
				break;
			case "exit":
				exit = true;
				break;
			default:
				System.out.println("잘못 입력하셨습니다");
				break;
			}
			if (exit)
				break;
			param.clear();
		}

		return View.ADMIN_BOOK;
	}

	// 관리자 로그인
	public View adminLogin() {
		printAdminLogin();
		List<Object> param = new ArrayList<Object>();

		while (true) {
			String id = ScanUtil.nextLine("ID>>");
			if (chk.idChk(id)) {
				param.add(id);
				break;
			}
		}
		while (true) {
			String pass = ScanUtil.nextLine("PASS>>");
			if (chk.passChk(pass)) {
				param.add(pass);
				break;
			}
		}

//		boolean chk = as.login(param);
		if (as.login(param) == null) {
			System.out.println("해당 아이디가 없습니다.");
			return View.ADMIN_LOGIN;
		} else {
			sessionStorage.put("adminid", param.get(0));
			System.out.println(sessionStorage.get("adminid") + "님 어서오십시오.");
			return View.ADMIN_MENU;
		}
	}

	// 관리자 : 새로운 도서 등록
	public View bookUpdate() {
		String update = ScanUtil.nextLine("도서등록을 진행하시겠습니까?(y/n)>> ");
		if (chk.ynChk(update).equalsIgnoreCase("n"))
			return View.ADMIN_BOOK;
		while (true) {
			// input check
			List<Object> newBook = new ArrayList<Object>();
//			newBook.add(ScanUtil.nextLine("책번호 >>")); //11바이트
			while (true) {
				String bookNo = ScanUtil.nextLine("책번호 >>");
				if (chk.chkBookNo(bookNo)) {
					newBook.add(bookNo);
					break;
				}
				System.out.println("형식에 맞게 입력해주세요");
			}

//			newBook.add(ScanUtil.nextLine("책제목 >>")); //200바이트
			while (true) {
				String title = ScanUtil.nextLine("책제목 >>");
				if (chk.chkBookName(title)) {
					newBook.add(title);
					break;
				}
				System.out.println("형식에 맞게 입력해주세요");
			}
//			newBook.add(ScanUtil.nextLine("작가 >>")); // 50바이트
			while(true) {
				String auth = ScanUtil.nextLine("작가 >>");
				if(chk.chkAuthName(auth)) {
					newBook.add(auth);
					break;
				}
				System.out.println("형식에 맞게 입력해주세요");
			}
//			newBook.add(ScanUtil.nextLine("출판사 >>"));// 100바이트
			while(true) {
				String pub = ScanUtil.nextLine("출판사 >>");
				if(chk.chkPubName(pub)) {
					newBook.add(pub);
					break;
				}
				System.out.println("형식에 맞게 입력해주세요");
			}
//			newBook.add(ScanUtil.nextLine("출판일(YY/MM/DD)>>")); // date format check
			while(true) {
				String date = ScanUtil.nextLine("출판일>>");
				if(chk.chkDate(date)) {
					newBook.add(date);
					break;
				}
				System.out.println("날짜 형식에 맞게 입력해주세요");
			}
//			newBook.add(ScanUtil.nextLine("책분류(100~900)>>")); // 100`900사이
			while(true) {
				String cate = ScanUtil.nextLine("책분류>>");
				String s = (String) newBook.get(0);
//				System.out.println(cate.charAt(0));
//				System.out.println(s.charAt(0));
				if(chk.chkCate(cate)) {
					if(cate.charAt(0) == s.charAt(0)) {
						newBook.add(cate);
						break;
					}
					else {
						System.out.println("분류를 정확히 입력해주세요");
						continue;
					}
				}
				else {
					System.out.println("형식에 맞게 입력해주세요");
				}
			}
//			newBook.add(ScanUtil.nextLine("추천도서로 둥록하시겠습니까?(Y/N)>>"));
			while(true) {
				String yn = ScanUtil.nextLine("추천도서로 둥록하시겠습니까?(Y/N)>>");
				yn = chk.ynChk(yn);
				if(yn.equalsIgnoreCase("y") ||
						yn.equalsIgnoreCase("n")) {
					newBook.add(yn);
					break;
				}
				System.out.println("형식에 맞게 입력해주세요");
			}

			System.out.println("책번호\t제목\t작가\t출판사\t출판일\t책분류\t추천도서등록");
			System.out.println(newBook.get(0) + "\t" + newBook.get(1) + "\t" + newBook.get(2) + "\t" + newBook.get(3)
					+ "\t" + newBook.get(4) + "\t" + newBook.get(5) + "\t" + newBook.get(6));

			String check = ScanUtil.nextLine("입력하신 정보로 등록하시겠습니까?(y/n)>> ");
			if (chk.ynChk(check).equalsIgnoreCase("n")) {
				String again = ScanUtil.nextLine("계속 등록하시겠습니까?(y/n)>> ");
				if(chk.ynChk(again).equalsIgnoreCase("y"))continue;
				else {
					return View.ADMIN_MENU;
				}
			}

			if (as.bookUpdate(newBook)) {
				System.out.println("등록되었습니다");
//				adBookList();
				String again = ScanUtil.nextLine("계속 등록하시겠습니까?(y/n)>> ");
				if (chk.ynChk(again).equalsIgnoreCase("n"))
					break;
			} else {
				String again = ScanUtil.nextLine("잘못입력된 정보가 있습니다. 다시 입력하시겠습니까?(y/n)>> ");
				if (chk.ynChk(again).equalsIgnoreCase("n"))
					break;
			}
		}
		return View.ADMIN_BOOK;
	}

	// 관리자 : 도서 삭제
	public View bookDelete() {
		String update = ScanUtil.nextLine("도서 삭제를 진행하시겠습니까?(y/n)>> ");
		if (chk.ynChk(update).equalsIgnoreCase("n"))
			return View.ADMIN_BOOK;
//		adBookList();
		adBookList2();
		String select = ScanUtil.nextLine("삭제할 도서의 책 아이디를 입력하세요>> ");

		if (as.bookDelete(select)) {
			System.out.println("삭제되었습니다");
		} else {
			System.out.println("해당하는 책이 존재하지 않습니다. 다시 확인해 주세요");
		}

		return View.ADMIN_MENU;
	}

	// 관리자 : 추천도서 등록
	public View rcBookUpdate() {
		String update = ScanUtil.nextLine("도서 등록을 진행하시겠습니까?(y/n)>> ");
		if (chk.ynChk(update).equalsIgnoreCase("n"))
			return View.ADMIN_BOOK;
//		adBookList();
		adBookList2();
		String select = ScanUtil.nextLine("추천할 도서의 책 아이디를 입력하세요>> ");
		if (as.reBookUpdate(select)) {
			System.out.println("등록되었습니다");
		} else {
			System.out.println("해당하는 책이 존재하지 않습니다. 다시 확인해 주세요");
		}

		return View.REC_BOOK;
	}

	// 관리자 : 희망도서 조회
	public View wishBook() {
		if (as.wishBookList() != null) {
			List<BookRequest> wishList = as.wishBookList();
			printWishBookList(wishList);
		} else {
			System.out.println("희망도서가 없습니다.");
		}

		String select = ScanUtil.nextLine("도서를 등록하시겠습니까?(y,n)>> ");
		if (chk.ynChk(select).equalsIgnoreCase("y")) {
			bookUpdate();
			String str = ScanUtil.nextLine("계속 등록하시겠습니까?>> ");
			if (chk.ynChk(str).equalsIgnoreCase("y"))
				return View.WISHBOOK_LIST;
			else {
				System.out.println("도서관리 페이지로 이동합니다");
				return View.ADMIN_BOOK;
			}
		} else {
			System.out.println("처음 화면으로 돌아갑니다.\n\n\n\n\n\n");
			return View.ADMIN_BOOK;
		}
	}

///// 관리자 : 회원관리

	// 관리자 :전체회원 출력하고 회원삭제, 회원정보수정 메뉴
	public View adMember() {
		List<Member> MeberList = as.adMemberList();
		printMemberAll(MeberList);
		printAdMember();

		int select = ScanUtil.nextInt("메뉴를 선택하세요.");
		switch (select) {
		case 1:
			return View.ADMEMBER_DEL;
		case 2:
			return View.ADMEMBER_RESET;
		case 3:
			return View.ADMIN_MENU;
		default:
			System.out.println("잘못 입력 하였습니다. 처음으로 돌아갑니다");
			return View.ADMIN_MEMBER;
		}
	}

	// 관리자 : 회원삭제
	public View memDel() {

		String select = ScanUtil.nextLine("삭제할 회원 아이디를 입력하세요>> ");
		if (as.memSelect(select) != null) {
			List<Member> Selmem = as.memSelect(select);
			printSelMem(Selmem);

			String del = ScanUtil.nextLine("정말 삭제하시겠습니까?(Y/N)");
			if (del.equalsIgnoreCase("y")) {
				as.memDel(select);
				System.out.println("완료되었습니다");
				return View.ADMIN_MEMBER;
			}
			System.out.println("취소되었습니다");
			return View.ADMIN_MEMBER;
		} else {
			System.out.println("찾는 회원이 없습니다");
			return View.ADMEMBER_DEL;
		}
	}

	// 관리자 : 비밀번호 수정
	public View memReset() {
		String select = ScanUtil.nextLine("비번을 초기화할 회원 아이디를 입력하세요.");
		if (as.memSelect(select) != null) {
			List<Member> Selmem = as.memSelect(select);
			printSelMem(Selmem);

			String reset = ScanUtil.nextLine("정말 초기화하시겠습니까? y/n");
			if (reset.equalsIgnoreCase("y")) {
				as.memReset(select);
				System.out.println("초기화가 완료되었습니다.");
			}
		}

		return View.ADMIN_MENU;
	}

	// 관리자 메뉴
	public View adminMenu() {
		printAdmin();
		int select = ScanUtil.nextInt("메뉴를 선택하세요.");
		switch (select) {
		case 1:
			return View.ADMIN_BOOK; // 도서관리
		case 2:
			return View.ADMIN_MEMBER; // 회원관리
		case 99:
			return View.LOG_OUT; // 회원관리
		default:
			System.out.println("잘못입력하였습니다. 관리자 메뉴로 이동합니다");
			printLn(10);
			return View.ADMIN_MENU;
		}
	}

	public void adBookList2() {
//		System.out.println(bc.countBook());
		List<Object> param = new ArrayList<Object>();
		System.out.println("관리자전체도서조회");
		int page = 1;
		int lastPage = (bc.countBook() / 15) + 1;

		boolean exit = false;
		// 여기서 파라메터로 이동할 페이지 넘겨주기
		while (true) {
			System.out.println(page + "/" + lastPage);
			param.add((page - 1) * 15 + 1);
			param.add(page * 15);
			List<Book> adBookList = as.adBookList(param);
			printAdBookList(adBookList);
			// 다음페이지/ 이전페이지/ 첫페이지/ 마지막페이지/ 페이지선택/ 나가기
			String select = ScanUtil
					.nextLine("1:이전페이지  2:다음페이지 \n11:첫 페이지로 이동 99:마지막페이지로 이동\n페이지 검색:>>\n나가기: exit\n>> ");
			switch (select) {
			case "1":
				if (page == 1)
					System.out.println("첫페이지 입니다");
				else
					page--;
				break;
			case "2":
				if (page == lastPage)
					System.out.println("마지막 페이지 입니다");
				else
					page++;
				break;
			case "11":
				page = 1;
				break;
			case "99":
				page = lastPage;
				break;
			case ">>":
				page = ScanUtil.nextInt("이동할 페이지: ");
				break;
			case "exit":
				exit = true;
				break;
			default:
				System.out.println("잘못 입력하셨습니다");
				break;
			}
			if (exit)
				break;
			param.clear();
		}
	}
}

//System.out.println("새로운 도서 등록");
////input check
//List<Object> newBook = new ArrayList<Object>();
//newBook.add(ScanUtil.nextLine("책번호 >>")); //바이트체크
//newBook.add(ScanUtil.nextLine("책제목 >>")); //200바이트
//newBook.add(ScanUtil.nextLine("작가 >>")); //50바이트
//newBook.add(ScanUtil.nextLine("출판사 >>"));//100바이트
//newBook.add(ScanUtil.nextLine("출판일(YY/MM/DD)>>")); //date format check
//newBook.add(ScanUtil.nextLine("책분류(100~900)>>")); // 100`900사이
//newBook.add(ScanUtil.nextLine("추천도서로 둥록하시겠습니까?(Y/N)>>"));	
//
//System.out.println("책번호\t제목\t작가\t출판사\t출판일\t책분류\t추천도서등록");
//System.out.println(newBook.get(0)+"\t"+newBook.get(1)+"\t"+newBook.get(2)+"\t"+newBook.get(3)+"\t"+
//									newBook.get(4)+"\t"+newBook.get(5)+"\t"+newBook.get(6));
//
//String check = ScanUtil.nextLine("입력하신 정보로 등록하시겠습니까?(y/n)>> ");
//if(chk.ynChk(check).equalsIgnoreCase("n")) continue;
//
//if(as.bookUpdate(newBook)) {
//	System.out.println("등록되었습니다");
//	adBookList();
//	return View.ADMIN_BOOK;
//} else {
//	String again = ScanUtil.nextLine("잘못입력된 정보가 있습니다. 다시 입력하시겠습니까? ");
//	return View.BOOK_UPDATE;
//}
