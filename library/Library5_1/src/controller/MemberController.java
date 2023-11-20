package controller;

import java.util.ArrayList;
import java.util.List;

import oracle.net.ns.SessionAtts;
import print.MemberPrint;
import service.MemberService;
import service.exceptChk;

import service.BookService;

import util.ScanUtil;
import util.View;
import vo.Member;

public class MemberController extends MemberPrint {

	MemberService mbService = MemberService.getInstance();
	exceptChk chk = exceptChk.getInstance();
	
	//회원메뉴
	public View memberMenu() {
		printMemberMenu();
		int select = ScanUtil.nextInt("메뉴를 선택하세요>> ");
		switch (select) {

		case 1://대출페이지(인기,신규,추천도서, 도서검색)
			return View.BOOK_RENT;			
		case 2://내 대출목록
			return View.MYBOOKLIST;
		case 3:
			return View.MYBOOKRESERVE;
		case 4:// 열람실 예약
			return View.ROOM;
		case 5:// 문화행사 예약
			return View.EVENT;
		case 6:// 정보수정
			return View.MEMBER_UPDATE;		
		case 7:// 회원 로그아웃
			return View.MEMBER_LOGOUT;
		case 8://회원탈퇴
			return View.MEMBER_OUT;
		default:
			return View.MEMBER_MENU;
			
		}
	}

	//대출권수 확인
	public int checkCount() {
		int count = (int) Controller.sessionStorage.get("count");
		System.out.println("대출 권수: "+count+ "/5");
		return count;
	}
	
	//회원가입
	public View memberJoin() {
		List<Object> param = new ArrayList<Object>();
		System.out.println("회원 정보 입력");
//		mem_id, mem_pw, mem_name, mem_telno
		
		while(true) {
			String id = ScanUtil.nextLine("id>>");
			if(chk.idChk(id)) {
				param.add(id);
				break;
			} 
			else {
				System.out.print("잘못된 아이디입니다. 다시 입력해 주세요\n>>");
			}
		}
		
		while(true) {
			String pass = ScanUtil.nextLine("pass>>");
			if(chk.passChk(pass)) {
				param.add(pass);
				break;
			}
			else
				System.out.println("비밀번호를 다시 입력하여 주세요");
		}
		
		while(true) {
			String name = ScanUtil.nextLine("name>>");
			if(chk.nameChk(name)) {
				param.add(name);
				break;
			}
			else
				System.out.println("이름 다시 입력하여 주세요");
		}
		
		while(true) {
			String telno = ScanUtil.nextLine("telno>>");
			if(chk.phoneChk(telno)) {
				param.add(telno);
				break;
			}
			else 
				System.out.println("번호를 다시 입력해주세요");
		}
		
		boolean ck = mbService.sign(param);
		if (ck) {
			System.out.println("도서관 가입을 환영합니다.");
			return View.HOME;
		} else {
			System.out.println("회원 가입에 실패하였습니다.");
			return View.MEMBER_JOIN;
		}
		
	}

	//회원로그인
	public View memberLogin() {
		List<Object> param = new ArrayList<Object>();
		System.out.println("----- 로그인 -------- ");
		String id = "";
		String pass = "";
		while(true) {
			id = ScanUtil.nextLine("id>> ");
			if(chk.idChk(id)) {
				param.add(id);
				break;
			}
		}
		
		while(true) {
			pass = ScanUtil.nextLine("pass>> ");
			if(chk.passChk(pass)) {
//				param.add(pass);
				break;
			}
		}
		Member mb = mbService.login(param);
		//null일경우 회원가입 물어보고
		if (mb == null) {
			System.out.println("회원 정보가 없습니다.");
			String selyn = ScanUtil.nextLine("회원가입 하시겠습니까(y/n)");
			if (selyn.equalsIgnoreCase("y")) {
				return View.MEMBER_JOIN;
			} else return View.HOME;
		} 
		
		while(true) {
			if(mb.getMem_id().equals(id) && mb.getMem_pw().equals(pass)) {
				//아이디 세션에 저장
				Controller.sessionStorage.put("id", mb.getMem_id());
				Controller.sessionStorage.put("count", mb.getCount());
//				System.out.println(Controller.sessionStorage.get("id"));
				break;
			} else {
				System.out.println("아이디 or 비밀번호를 확인해 주세요");
				return View.MEMBER_LOGIN;
			}
		}
		return View.MEMBER_MENU;
	}

	public View memberHome() {
		printMemberHome();
		int select = ScanUtil.nextInt("메뉴를 선택하세요>> ");
		switch (select) {
		case 1:
			return View.MEMBER_LOGIN;
		case 2:
			return View.MEMBER_JOIN;
		default:
			System.out.println("다시 입력해주세요");
			return View.MEMBER_HOME;
		}
	}
	
	//회원정보수정
	public View memberUpdate() {
		
		String str= (String) Controller.sessionStorage.get("id");
		if(str == null) {
			System.out.println("로그인 데이터가 없습니다. 로그인 해주세요");
			Controller.sessionStorage.clear();
			return View.MEMBER_LOGIN;
		}
		
		String syn = ScanUtil.nextLine("수정하시겠습니까? y/n");
		syn = chk.ynChk(syn);
		int select;
		if(syn.equalsIgnoreCase("n")) return View.MEMBER_MENU;
		
		if (syn.equalsIgnoreCase("y")) {
			printMbUpdateDetail();
			while(true) {
				select = ScanUtil.nextInt("수정정보를 선택하세요");
				if(select == 99) return View.MEMBER_MENU;
				if(select > 4 || select < 1) {
					System.out.println("정확한 값을 입력해주세요");
					continue;
				}
				else break;
			}
						
			List<Object> param = new ArrayList<>();
			
			if (select == 1 || select == 4) {
				while(true) {
					String pass = ScanUtil.nextLine("pass>>");
					if(chk.passChk(pass)) {
						param.add(pass);
						break;
					} 
				}
			}
			
			if (select == 2 || select == 4) {
				while(true) {
					String name = ScanUtil.nextLine("name>>");
					if(chk.nameChk(name)) {
						param.add(name);
						break;
					}
				}
			}
			if (select == 3 || select == 4) {
				while(true) {
					String phone = ScanUtil.nextLine("phone>>");
					if(chk.phoneChk(phone)) {
						param.add(phone);
						break;
					}
				}
			}
			param.add(str);
			
			boolean b = mbService.memberUpdate(param, select);
			List<Object> newInfo = new ArrayList<Object>();
			newInfo.add(Controller.sessionStorage.get("id"));
			Member mb = mbService.newInfo(newInfo);
			
			mbService.memberUpdate(param, select);
			
			if(true) {
				System.out.println("정보수정 완료");
				Controller.sessionStorage.put("member", mb);
				printMyInfo(mb);
			} else {
				System.out.println("정보수정이 실패했습니다. 다시 수정해주세요");
				return View.MEMBER_UPDATE;
			}
		}
		
		return View.MEMBER_MENU;
	}
	
	public View memLogOut() {
		String id = (String) Controller.sessionStorage.get("id");
		String syn = ScanUtil.nextLine( id +"로그아웃하시겠습니까? y/n");
		if (syn.equalsIgnoreCase("y")) {
			Controller.sessionStorage.clear();
			System.out.println("*****로그아웃하셨습니다.******");
			return View.HOME;
		} else
			
			return View.MEMBER_MENU;
	}
	
	//탈퇴
	public View memberOut() {
		String id = (String) Controller.sessionStorage.get("id");

		String syn = ScanUtil.nextLine(id + "님 회원 탈퇴하시겠습니까?y/n");
		if (syn.contentEquals("y")) {
			List<Object> param = new ArrayList();
			param.add(id);
			mbService.delete(param);
			System.out.println("회원탈퇴가 성공적으로 이루어졌습니다.");
		}
		return View.HOME;
	}

}
