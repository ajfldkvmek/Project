package print;

import java.util.List;

import vo.Member;

public class Print {
	
	public void printVar() {
		System.out.println("------------------------------------");
	}
	
	public void printLn(int num) {
		for(int i=0; i<num; i++) System.out.println();
	}
	
	public void printHome() {
		printVar();
		System.out.println("1. 회원");
		System.out.println("2. 관리자");
		printVar();
	}
	
	
	
	
//	public void printBusList(List<Member> busList) {
//		System.out.println("출발지\t도착지\t시간\t등급\t가격\t좌석수");
//		for (Member member : busList) {
//		}
//	}
//	
//	public void printReserveMenu() {
//		System.out.println("1. 예매");
//		System.out.println("2. 출발/행선지 변경");
//		System.out.println("3. 홈");
//	}
//	
}
