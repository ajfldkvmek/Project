package print;

import java.util.List;

import vo.Book;
import vo.BookRent;

public class BookPrint {

	public void printVar() {
		System.out.println("------------------------------------");
	}
	
	public void printLn(int num) {
		for(int i=0; i<num; i++) System.out.println();
	}
	
	
	public void printTitle(){
		System.out.println("순번\t책번호\t\t제목\t\t작가\t출판사\t출판일\t\t대출상태");
	}
	//도서대출 view
	public void printBookRent(){
		printVar();
		System.out.println("1.추천도서");
		System.out.println("2.인기도서");
		System.out.println("3.신착도서");
		System.out.println("4.도서검색");
		System.out.println("99.뒤로가기");
		printVar();
	}
	//회원이 보는 추천도서
	public void printRecBook(List<Book> recBkList) {
		printVar();
		printTitle();
		for(Book reBook : recBkList) {
			System.out.println(reBook.getNum()+"\t"+reBook.getBook_no()+"\t"+reBook.getTitle()+"\t\t"+reBook.getAuthor()
			+"\t"+reBook.getPublisher()+"\t"+reBook.getPub_date()+"\t"+reBook.getBook_stat());
		}
		printVar();
	}
	//회원이 보는 인기도서
	public void printBestBook(List<Book> bestList) {
		printVar();
		System.out.println("인기도서 BEST20");
		printTitle();
		for(Book beBook : bestList) {
			System.out.println(beBook.getNum()+"\t"+beBook.getBook_no()+"\t"+beBook.getTitle()+"\t\t"+beBook.getAuthor()
			+"\t"+beBook.getPublisher()+"\t"+beBook.getPub_date()+"\t"+beBook.getBook_stat());
		}
		
		printVar();
	}
	//회원이 보는 신착 도서
	public void printNewBook(List<Book> newBookList) {
		printVar();
		System.out.println("이달에 들어온 신착도서");
		printTitle();
		for(Book newBook : newBookList) {
			System.out.println(newBook.getNum()+"\t"+newBook.getBook_no()+"\t"+newBook.getTitle()+"\t\t"+newBook.getAuthor()
			+"\t"+newBook.getPublisher()+"\t"+newBook.getPub_date()+"\t"+newBook.getBook_stat());
		}
		printVar();
		
	}
	//회원이 보는 검색한 도서 / 추천도서 / 인기도서
	public void printScBook(List<Book> ScBookList) {
		printVar();
		System.out.println("검색된 도서 목록");
		printTitle();
		for(Book scBook : ScBookList) {
			System.out.println(scBook.getNum()+"\t"+scBook.getBook_no()+"\t"+scBook.getTitle()+"\t\t"+scBook.getAuthor()
			+"\t"+scBook.getPublisher()+"\t"+scBook.getPub_date()+"\t"+scBook.getBook_stat());
		}
		
		printVar();
		
	}
	//회원이 도서 목록에서 선택한 도서
	public void printSelBook(List<Book> selBookList) {
		printVar();	
		System.out.println("선택한 도서");
		printTitle();
		for(Book selBook : selBookList) {
			System.out.println(selBook.getNum()+"\t"+selBook.getBook_no()+"\t"+selBook.getTitle()+"\t"+selBook.getAuthor()
			+"\t"+selBook.getPublisher()+"\t"+selBook.getPub_date()+"\t"+selBook.getBook_stat());
		}		
		printVar();
		
	}
//	System.out.println("순번\t책번호\t\t제목\t작가\t출판사\t출판일\t대출상태");
	//+br.getRet_date()+"\t"
	public void printMyBookList(List<BookRent> myBookList) {
		printVar();	
		System.out.println("순번\t책번호\t\t제목\t\t대여일\t\t반납예정일\t\t연장횟수");
		for(BookRent br : myBookList) {
			System.out.println(br.getNo()+"\t"+br.getBook_no()+"\t"+br.getTitle()+"\t\t"
								+br.getRent_date()+"\t\t"+(br.getDue_date())+"\t"+br.getExten_count());
		}
	}
	
	public void printReqMenu() {
		printVar();	
		System.out.println("1.희망도서신청");
		System.out.println("2.다시 검색하기");
		printVar();	
	}
	    
	public void printResrveBook(List<Book> resvBook) {
		printVar();
		System.out.println("책번호\t\t책제목\t작가\t출판사\t예정반납일");
		for(Book book : resvBook) {
			System.out.println(book.getBook_no()+"\t"+book.getTitle()+"\t"+book.getAuthor()+"\t"+
								book.getPublisher()+"\t"+(book.getDue_date()));
		}
		printLn(5);
		printVar();
	}
	
}
