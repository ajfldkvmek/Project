package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.ConvertUtils;
import util.JDBCUtil;
import vo.Event;

public class EventDAO {

	private static EventDAO singleTon = null;

	public EventDAO() {
	};

	public static EventDAO getInstance() {
		if (singleTon == null) {
			singleTon = new EventDAO();
		}
		return singleTon;
	}
	
	
	JDBCUtil jdbc = JDBCUtil.getInstance();
	
	public List<Event> reserveEvent() {

		String sql = "select evt_no, evt_name, to_char(evt_time, 'yyyy.mm.dd hh:mi') evt_time from event";
		List<Map<String, Object>> list = jdbc.selectList(sql);		
		return ConvertUtils.convertToList(list, Event.class);		
	}

}
