package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

//import oracle.net.ns.SessionAtts;
import print.RoomPrint;
import service.RoomService;
import service.exceptChk;
import util.ScanUtil;
import util.View;
import vo.Room;
import vo.RoomReserve;

public class RoomController extends RoomPrint {

	Random rand = new Random();
	RoomService rs = new RoomService();
	exceptChk chk = exceptChk.getInstance();

	public View room() {
		roomPrint();
		int select = ScanUtil.nextInt("메뉴를 선택하세요(뒤로가기: 99)>> ");

		switch (select) {
		case 1:
			return View.RESERVE_ROOM; // 예약하기
		case 2:
			return View.OUT_ROOM;
		case 3:
			return View.CHECK_ROOM; // 좌석 확인하기
		case 99:
			return View.MEMBER_MENU;
		default:
			return View.ROOM;
		}
	}

	public View reserveRoom() {
		List<Room> list = rs.showRoom();
		printSeat(list); // 좌석 목록 받아와서 출력

		List<Object> param = new ArrayList<Object>();
		String id = (String) Controller.sessionStorage.get("id");
		String seat = ScanUtil.nextLine("좌석을 선택해 주세요(□:사용가능  ■:사용중 뒤로가기:99)>> ");
		if(seat.contentEquals("99")) return View.ROOM;
		int random = rand.nextInt(99999);
		// resvR (random number)
		if (rand.nextInt(99999) < 10000) {
			random += 10000;
		}
		String resvNo = "resvR" + random;

		param.add(resvNo);
		param.add(id);
		param.add(seat);
		// 입력한 값(좌석)에 해당하는 상태값이 y이면 사용가능
		boolean ck = false;

		while (true) {
			for (Room room : list) {
				if (seat.equalsIgnoreCase(room.getSeat_no()) && room.getSeat_stat().equalsIgnoreCase("Y")) {
					// 면 사용가능
					ck = rs.reserveRoom(param);
					System.out.println("예약이 완료되었습니다.");
					Controller.sessionStorage.put("resv_no", resvNo);
					break;
				}
			}
			if (ck)
				break;
			else {
				System.out.print("이미 사용중인 좌석입니다.\n ");
				return View.RESERVE_ROOM;
			}
				
		}

		return View.ROOM;
	}

	public View outRoom() {
		List<Object> param = new ArrayList<Object>();
		String id = (String) Controller.sessionStorage.get("id");
		param.add(id);
		String resvNo = rs.checkRoom(param).getResv_no();
		if(resvNo == null) {
			System.out.println("예약한 좌석이 없습니다");
			return View.RESERVE_ROOM;
		}
		param.clear();
		String select = ScanUtil.nextLine("퇴실 하시겠습니까?(y/n)>> ");
		boolean outChk = chk.outChk(select);
		if (outChk) {
			param.add(resvNo);
			outChk = rs.outRoom(param);
			if (outChk == true)
				System.out.println("퇴실이 완료되었습니다");
			return View.MEMBER_MENU;
		} else {
			return View.ROOM;
		}
	}

	public View checkRoom() {
		String str = (String) Controller.sessionStorage.get("id");
		List<Object> param = new ArrayList<Object>();
		param.add(str);
		if (rs.checkRoom(param) != null) {
			RoomReserve rr = rs.checkRoom(param);
			printMySeat(rr);
			return View.MEMBER_MENU;
		} else {
			String s = ScanUtil.nextLine("예약한 좌석이 없습니다. 예약하시겠습니까?(y/n)>> ");
			if(chk.ynChk(s).equalsIgnoreCase("y")) {
				return View.RESERVE_ROOM;
			}
			else {return View.MEMBER_MENU;}
		}
	}
}