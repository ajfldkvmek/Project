package controller;

import java.util.ArrayList;
import java.util.List;

import print.EventPrint;
import service.EventService;

import util.ScanUtil;
import util.View;
import vo.Event;


public class EventController extends EventPrint {

	EventService es = new EventService();
	
	public View event() {
		printEvent();
		
		System.out.println("이번 달 예산 초과로 진행되는 이벤트가 존재하지 않습니다.");
		return View.MEMBER_MENU;
		
	}

	public View reserceEvent() {
		
		List<Event> list = es.reserveEvent();
		printEventList(list);
		
		return View.EVENT;
	}

}
