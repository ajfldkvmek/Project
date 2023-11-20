package dao;

//import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.ConvertUtils;
import util.JDBCUtil;
import vo.Admin;
//import vo.Book;
//import vo.BookRequest;
//import vo.Member;

public class AdminDAO {
	private static AdminDAO singleTon = null;

	private AdminDAO() {
	};

	public static AdminDAO getInstance() {
		if (singleTon == null) {
			singleTon = new AdminDAO();
		}
		return singleTon;
	}
	JDBCUtil jdbc = JDBCUtil.getInstance();

	//관리자 로그인
	public Admin login(List<Object> param) {
		String sql = "select * from admin where admin_id = ? and admin_pw = ?";//오류노트:물음표를 ""처리함
		
		if(jdbc.selectOne(sql, param) != null) {
			Map<String, Object> map = jdbc.selectOne(sql, param);		
			Admin ad = ConvertUtils.convertToVo(map,Admin.class);
			return ad;
		} else {
			return null;
		}
	}
}
