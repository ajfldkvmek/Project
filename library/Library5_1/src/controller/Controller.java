package controller;

import util.ScanUtil;
import util.View;

import java.util.HashMap;
import java.util.Map;

import print.Print;

public class Controller extends Print {

	static public Map<String, Object> sessionStorage = new HashMap<>();
	
	MemberController mc = new MemberController();
	AdminController ac = new AdminController();
	BookController bc = new BookController();
	EventController ec = new EventController();
	RoomController rc = new RoomController();

	public static void main(String[] args) {
		new Controller().start();
	}
	

	public void Controller() {
	}

	private void start() {
		View view = View.HOME;
		while (true) {
			switch (view) {
			
			case LOG_OUT:
				view = logout();
				break;
				
			case HOME:
				view = home();
				break;
				
			case ADMIN_LOGIN:
				view = ac.adminLogin();
				break;
				
			case ADMIN_MENU:
				view = ac.adminMenu();
				break;
				
			case ADMIN_BOOK:
				view = ac.adminBook();
				break;
				
			case ADMIN_BOOKLIST:
				view = ac.adBookList();
				break;
				
			case BOOK_UPDATE:
				view = ac.bookUpdate();
				break;
				
			case BOOK_DELETE:
				view = ac.bookDelete();
				break;
				
			case RCBOOK_UPDATE:
				view = ac.rcBookUpdate();
				break;
				
			case WISHBOOK_LIST:
				view = ac.wishBook();
				break;
				
			case ADMIN_MEMBER:
				view = ac.adMember();
				break;

			case ADMEMBER_DEL:
				view = ac.memDel();
				break;

			case ADMEMBER_RESET:
				view = ac.memReset();
				break;
				
			case MEMBER_HOME:
				view = mc.memberHome();
				break;
				
			case MEMBER_LOGIN:
				view = mc.memberLogin();
				break;
				
			case MEMBER_JOIN:
				view = mc.memberJoin();
				break;
				
			case MEMBER_UPDATE:
				view = mc.memberUpdate();
				break;
				
			case MEMBER_MENU:
				view = mc.memberMenu();
				break;

			case BOOK_RENT:
				view = bc.bookRent();
				break;	
				
			case MYBOOKRESERVE:
				view = bc.myBookReserve();
				break;
			
			case MEMBER_LOGOUT:
				view = logout();
				break;
//			case BOOK_RESERVE:
//				view = bc.bookreserve();
//				break;
				
			case REC_BOOK:
				view = bc.recBook();
				break;	
				
			case BEST_BOOK:
				view = bc.bestBook();
				break;	
				
			case NEW_BOOK:
				view = bc.newBook();
				break;	
				
			case SEARCH_BOOK:
				view = bc.searchBook();
				break;	
				
			case REQ_BOOK:
				view = bc.reqBook();
				break;
								
			case MYBOOKLIST:
				view = bc.myBookList();
				break;
				
			case BOOK_RETURN:
				view = bc.returnBook();
				break;			
				
			case BOOK_EXTEND:
				view = bc.extendBook();
				break;
				
			case ROOM:
				view = rc.room();
				break;
				
			case RESERVE_ROOM:
				view = rc.reserveRoom();
				break;

			case OUT_ROOM:
				view = rc.outRoom();
				break;
				
			case CHECK_ROOM:
				view = rc.checkRoom();
				break;
				
			case MEMBER_OUT:
				view = mc.memberOut();
				break;
				
			case EVENT:
				view = ec.event();
				break;
				
			case RESERVE_EVENT:
				view = ec.reserceEvent();
				break;
			default:
				break;
			}
		}
	}

	private View home() {
		printHome();
		int select = ScanUtil.nextInt("메뉴를 선택하세요.");
		switch (select) {
		case 2:
			return View.ADMIN_LOGIN;
			
		case 1:
			return View.MEMBER_HOME;

		default:
			return View.HOME;
		}
	}

	private View logout() {
		sessionStorage.clear();
		return View.HOME;
	}
}