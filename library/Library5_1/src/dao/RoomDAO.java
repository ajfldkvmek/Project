 package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.ConvertUtils;
import util.JDBCUtil;
import util.ScanUtil;
import vo.Member;
import vo.Room;
import vo.RoomReserve;

public class RoomDAO {
	private static RoomDAO singleTon = null;

	public RoomDAO() {
	};

	public static RoomDAO getInstance() {
		if (singleTon == null) {
			singleTon = new RoomDAO();
		}
		return singleTon;
	}

	JDBCUtil jdbc = JDBCUtil.getInstance();

	public List<Room> showRoom() {

		String sql = "select * from room";
		List<Map<String, Object>> list = jdbc.selectList(sql);

		return ConvertUtils.convertToList(list, Room.class); 
	}

	public void outSeat(List<Object> param) {
//		List<Object> param = new ArrayList<Object>();
//		param.add(seat);
		String sql = "update room\r\n" + 
				"set seat_stat = 'y'\r\n" + 
				"where seat_no = (select seat_no from room_resv\r\n" + 
				"                    where resv_no = ?)";
		jdbc.update(sql, param);
	}
	
	public void inSeat(String seat) {
		List<Object> param = new ArrayList<Object>();
		param.add(seat);
		String sql = "Update room\r\n" + 
					"set seat_stat = 'n'\r\n" + 
					"where seat_no = ?";
		jdbc.update(sql, param);
	}


	public int reserveRoom(List<Object> param) {
		String sql = "insert into room_resv(resv_no, mem_id, seat_no) values(?, ?, ?)";
		int result = jdbc.update(sql, param);
		inSeat((String) param.get(2));

		return result;
	}

	public RoomReserve mySeat(String id) {
		String sql = "select * from room_resv";
		List<Object> param = new ArrayList<Object>();
		param.add(id);

		Map<String, Object> map = jdbc.selectOne(sql, param);

		return ConvertUtils.convertToVo(map, RoomReserve.class);
	}

	//퇴실시작
	public int outRoom(List<Object> param) {
		String sql = "Update room_resv set out_time = sysdate where resv_no = ?";
		int result = jdbc.update(sql, param);
		outSeat(param);
		return result;
	}

	public RoomReserve checkRoom(List<Object> param) {
		String sql = "select resv_no, seat_no, mem_id from room_resv where mem_id = ? and out_time is null";
		Map<String, Object> map = jdbc.selectOne(sql, param);
		if(map == null) return null;
		else {
			return ConvertUtils.convertToVo(map, RoomReserve.class);
		}
		
	}

}
