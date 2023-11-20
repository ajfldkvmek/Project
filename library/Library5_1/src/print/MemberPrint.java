
package print;

import util.View;
import vo.Member;

public class MemberPrint {

	public void printVar() {
		System.out.println("------------------------------------");
	}

	public void printLn(int num) {
		for (int i = 0; i < num; i++)
			System.out.println();
	}

	public void printMemberMenu() {

		System.out.println("1. 도서대출");
		System.out.println("2. 내 대출 목록");
		System.out.println("3. 예약 도서 조회");
		System.out.println("4. 열람실 예약");
		System.out.println("5.문화행사 예약");
		System.out.println("6. 정보수정");
		System.out.println("7. 로그아웃");
		System.out.println("8. 탈퇴");
	}

	public void printMBHome() {
		printVar();
		System.out.println("로그인해주세요.");

	}

	public void printMemberHome() {
		printVar();
		System.out.println("1.회원 로그인");
		System.out.println("2.회원 가입");
	}

	// 회원정보수정
	public void printMbUpdateDetail() {
		printVar();
		printLn(2);
		System.out.println("1.비번");
		System.out.println("2.이름");
		System.out.println("3.전화번호");
		System.out.println("4.전체정보");
		System.out.println("99.뒤로가기");
		printLn(3);
		printVar();
	}
	
	public void printMyInfo(Member mb) {
		System.out.println("아이디\t이름\t전화번호");
		System.out.println(mb.getMem_id()+"\t"+mb.getMem_name()+"\t"+mb.getMem_telno());
	}
}
