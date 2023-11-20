package vo;

import lombok.Data;

@Data

public class Book {
	private int num;
	private String book_no;
	private String title;
	private String author;
	private String text;
	private String publisher;
	private String pub_date;
	private int rent_count;
	private String book_stat;
	private String recom_book;
	private String resv_mem_id;
	private String cate_no;
	private String book_del;
	private String due_date;

	private int allBook;

}
