package print;

import java.util.List;

import vo.Book;
import vo.BookRequest;
import vo.Member;

public class AdminPrint {
	
	
	public void printVar() {
		System.out.println("------------------------------------");
	}
	
	public void printLn(int num) {
		for(int i=0; i<num; i++) System.out.println();
	}
	
	public void printAdminLogin() {
		System.out.println("아이디와 비번을 입력해주세요.");
		printLn(1);
		printVar();
	}
	
	
	public void printAdmin() {
		printVar();
		System.out.println("1.도서관리");
		System.out.println("2.회원관리");
		System.out.println("99.로그아웃");
		printVar();
	}
	
	public void printAdminBook() {
		printVar();
		System.out.println("1.도서조회");
		System.out.println("2.도서등록");
		System.out.println("3.도서삭제");
		System.out.println("4.추천도서 등록");
		System.out.println("5.희망도서 조회");	
		System.out.println("6.이전 메뉴로 돌아가기");
		printLn(2);
		printVar();
	}

	
	public void printAdBookList(List<Book> adBookList) {
		printVar();
		System.out.println("책번호 \t책아이디\t\t제목\t\t작가\t출판사\t출판일\t\t대여횟수\t대출상태"
				+ "\t추천도서\t예약회원\t분류코드\t삭제도서");
		for(Book bookList : adBookList) {
	
			System.out.println(bookList.getNum()+"\t"+bookList.getBook_no()+"\t"+bookList.getTitle()+"\t\t"+bookList.getAuthor()+"\t"+
					bookList.getPublisher()+"\t"+bookList.getPub_date()+"\t"+bookList.getRent_count()
					+"\t"+bookList.getBook_stat()+"\t"+bookList.getRecom_book()+"\t"+bookList.getResv_mem_id()
					+"\t"+bookList.getCate_no()+"\t"+bookList.getBook_del());
		}
		printVar();
				
	}
	
	public void printWishBookList(List<BookRequest> wishList) {
		printVar();
		System.out.println("신청번호\t\t제목\t\t작가\t\t회원아이디\t\t출판사\t\t등록여부");
		for(BookRequest wishBook : wishList) {
			System.out.println(wishBook.getReq_id()+"\t"+wishBook.getTitle()+"\t"+wishBook.getAuthor()+"\t"+
					wishBook.getMem_id()+"\t"+wishBook.getPublisher()+"\t"+wishBook.getRegist());
		}
		printVar();
	}

	public void printMemberAll(List<Member> MeberList) {
		printVar();
		System.out.println("회원아이디\t비밀번호\t회원이름\t전화번호\t가입일\t탈퇴여부");
		for(Member member : MeberList) {
			System.out.println(member.getMem_id()+"\t"+member.getMem_pw()+"\t"+member.getMem_name()
			+"\t"+member.getMem_telno()+"\t"+member.getJoin_date()+"\t"+member.getMem_del());
		}
		printVar();
	}
	
	public void printAdMember() {
		printVar();
		System.out.println("1.회원삭제");
		System.out.println("2.회원비밀번호초기화");
		System.out.println("3.이전 메뉴로 돌아가기");
		printVar();
		
	}
	
	public void printSelMem(List<Member> selmem) {
		printVar();
		System.out.println("회원아이디\t비밀번호\t회원이름\t전화번호\t가입일\t탈퇴여부");
		for(Member member : selmem)
			System.out.println(member.getMem_id()+"\t"+member.getMem_pw()+"\t"+member.getMem_name()
			+"\t"+member.getMem_telno()+"\t"+"\t"+member.getJoin_date()+"\t"+member.getMem_del());
		printVar();
	}

}
