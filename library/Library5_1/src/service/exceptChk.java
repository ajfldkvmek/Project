package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import util.ScanUtil;

public class exceptChk {

	private static exceptChk instance = null;

	private exceptChk() {
	}

	public static exceptChk getInstance() {
		if (instance == null)
			instance = new exceptChk();
		return instance;
	}

	public static int loginCount = 0;
	
	public String ynChk(String yn) {
		
		if(yn.equalsIgnoreCase("y")) {
			return yn;
		} else if(yn.equalsIgnoreCase("n")) {
			return yn;
		} else {
			yn = ScanUtil.nextLine("잘못된 입력입니다 다시 입력해주세요(y or n)>> ");
		}
		return yn;
	}
	
	//room out
	public boolean outChk(String select) {
		
		while(true) {
			if(select.equalsIgnoreCase("y")) {
				return true;
			} else if(select.contentEquals("n")) {
				return false;
			} else {
				System.out.print("잘못된 입력입니다 다시 입력해주세요>>");
			}
		}
	}
	
	//id체크
	public boolean idChk(String id) {
		if (id.getBytes().length > 20)
			return false;
		for (char ch : id.toCharArray()) {

			if ('0' <= ch && ch <= '9') {

			} else if ('a' <= ch && ch <= 'z') {

			} else if ('A' <= ch && ch <= 'Z') {

			} else {
				return false;
			}
		}
		return true;
	}
	
	//비번체크
	public boolean passChk(String pw) {
		if (pw.getBytes().length > 30)
			return false;
		for (char ch : pw.toCharArray()) {

			if ('0' <= ch && ch <= '9') {

			} else if ('a' <= ch && ch <= 'z') {

			} else if ('A' <= ch && ch <= 'Z') {

			} else {
				return false;
			}
		}
		return true;
	}
	
	//이름길이 체크
	public boolean nameChk(String name) {
		if (6 <= name.getBytes().length && name.getBytes().length <= 30)
			return true;
		return false;
	}
	
	//번호체크
	public boolean phoneChk(String telno) {

		telno = telno.replaceAll("-", "");
		if (telno.length() != 11) 
			return false;
		try {
			Integer.parseInt(telno);
			return true;
		} catch (NumberFormatException ex) {
			return false;
		}
	}
	
	public boolean chkBookNo(String bookNo) {

		Exception e = new Exception("잘못된 책번호");

		String[] str = bookNo.split("\\.");
		if(str.length != 3) return false;
		boolean err1 = bookNo.length() == 9;
		boolean err2 = bookNo.getBytes().length == 11;
		boolean err3 = str.length == 3;
		boolean err5 = str[1].length() == 1;
		boolean err6 = str[1].getBytes().length == 3;
		boolean err8 = checkNum(str[0]);
		boolean err9 = checkNum(str[2]);
		
		boolean bookNochk=err1&&err2&&err3
					&&err5&&err6&&err8&&err9;
		
		
		return bookNochk;
	}
	
	public boolean checkNum(String str) {
		boolean b = true;
		if (str.length() != 3)
			b = false;
		try {
			Integer.parseInt(str);
		} catch (NumberFormatException ex) {
			b = false;
		}
		return b;
	}
	
	public boolean chkBookName(String str) {
		boolean err = str.getBytes().length <= 200;
		return err;
	}

	public boolean chkAuthName(String str) {
		boolean err = str.getBytes().length <= 50;
		return err;
	}

	public boolean chkPubName(String str) {
		boolean err = str.getBytes().length <= 100;
		return err;
	}

	public boolean chkDate(String str) {
		if(str.length() != 8) return false;
		try {
	         SimpleDateFormat  sdf = new  SimpleDateFormat("yy.MM.dd");
	         sdf.setLenient(false);
	          sdf.parse(str);
	          return true;
		} catch (ParseException  e){
			return false;
		}
		
	}

	public boolean chkCate(String str) {

		boolean err = checkNum(str);

		return err;
	}
}
