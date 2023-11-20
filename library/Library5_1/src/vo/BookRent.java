package vo;

import lombok.Data;

@Data
public class BookRent {

	 private String book_no;
	 private String mem_id;
	 private String rent_no;
	 
	 private String rent_date;
	 private String ret_date;
	 private String due_date;
	 
	 private int exten_count;
	 
	 private String title;
	 private int no;
}
