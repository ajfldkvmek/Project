package vo;

import lombok.Data;

@Data
public class Member {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_telno;
	private String join_date;
	private String mem_del;
	private int count;
}
