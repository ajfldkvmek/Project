package service;

import java.util.List;

import controller.Controller;
import dao.MemberDAO;
import vo.Member;

public class MemberService {
	private static MemberService singleTon = null;

	private MemberService() {
	};

	public static MemberService getInstance() {
		if (singleTon == null) {
			singleTon = new MemberService();
		}
		return singleTon;
	}

	MemberDAO mbDAO = MemberDAO.getInstance();
	// 회원로그인

	public Member login(List<Object> param) {
		return mbDAO.login(param);
	}

	// 회원가입
	public boolean sign(List<Object> param) {
		int reuslt = mbDAO.sign(param);
		if (reuslt == 0) {
			return false;
		} else
			return true;
	}

	public boolean memberUpdate(List<Object> param, int select) {
		
		int result = mbDAO.memberUpdate(param, select);
		if(result ==0) {
			return false;
		}
		return true;
	}

	public Member newInfo(List<Object> newInfo) {
		return mbDAO.newInfo(newInfo);
	}
	
	public void delete(List<Object> param) {
		mbDAO.delete(param);
	}
}
