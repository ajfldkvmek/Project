package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.ConvertUtils;
import util.JDBCUtil;
import vo.Member;

public class MemberDAO {
	private static MemberDAO singleTon = null;

	private MemberDAO() {
	};

	public static MemberDAO getInstance() {
		if (singleTon == null) {
			singleTon = new MemberDAO();
		}
		return singleTon;
	}

	String sqlHead = "select mem_id,mem_pw,mem_name,mem_telno,to_char(join_date,'yyyy-mm-dd') "
			+ "join_date ,mem_del from member";
	JDBCUtil jdbc = JDBCUtil.getInstance();

	// 관리자가 회원전체 목록보기
	public List<Member> adMemberList() {

		List<Map<String, Object>> memList = jdbc.selectList(sqlHead);
		return ConvertUtils.convertToList(memList, Member.class);
	}

	// 관리자가 멤버 한명만 선택해서 불러오기
	public List<Member> memSelect(String select) {
		String sql = sqlHead + " where mem_id = ?";
		List<Object> param = new ArrayList<Object>();
		param.add(select);
		if (jdbc.selectList(sql, param) != null) {
			List<Map<String, Object>> list = jdbc.selectList(sql, param);
			return ConvertUtils.convertToList(list, Member.class);
		} else
			return null;
	}

	// 관리자가 회원 삭제
	public void memDel(String select) {
		String sql = "update member set mem_del = 'Y' where mem_id= ?";
		List<Object> param = new ArrayList<Object>();
		param.add(select);
		jdbc.update(sql, param);

	}

	// 회원 로그인
	public Member login(List<Object> param) {

		String sql = "select mem_id, mem_pw, count from member where mem_id = ? and MEM_DEL = 'N'";

		Map<String, Object> map = jdbc.selectOne(sql, param);

		if (map != null)
			return ConvertUtils.convertToVo(map, Member.class);
		else
			return null;
	}

	// 회원가입
	public int sign(List<Object> param) {
		String sql = " insert into member(mem_id, mem_pw, mem_name, mem_telno)\r\n" + " values (?,?,?,?) ";

		int result = jdbc.update(sql, param);
//		Member mb = ConvertUtils.convertToVo(map, Member.class);
		return result;
	}

	public int memberUpdate(List<Object> param, int select) {
		String sql= "update member set";

		if (select == 1||select ==4) {
			sql+=" mem_pw = ? ";
		}
		if (select == 2||select ==4) {
			if(select==4) sql +=",";
			sql += " mem_name =  ? ";
		}
		if (select == 3||select ==4) {
			if(select==4) sql +=",";
			sql+=" mem_telno = ? " ;
		}
		sql += "where mem_id = ?";
		int result = jdbc.update(sql, param);
		return result;

	}

	public Member newInfo(List<Object> newInfo) {
		String sql = "select mem_id, mem_name, mem_telno from member where mem_id = ?";
		Map<String, Object> map = jdbc.selectOne(sql, newInfo);
		return ConvertUtils.convertToVo(map, Member.class);
	}
	

	public void delete(List<Object> param) {

		String sql = "update member set mem_del = 'y' where mem_id = ?";
		jdbc.update(sql, param);
	}

	public void memReset(String select) {
		String sql = "update member set mem_pw = '0000' where mem_id = ? " ;
		List<Object> param = new ArrayList<Object>();
		param.add(select);
		jdbc.update(sql, param);
	}
}
