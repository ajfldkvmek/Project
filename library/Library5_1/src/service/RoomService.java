package service;

import java.util.List;
import dao.RoomDAO;
import vo.Room;
import vo.RoomReserve;


public class RoomService {
	
	private static RoomService singleTon = null;

	public RoomService() {
	};

	public static RoomService getInstance() {
		if (singleTon == null) {
			singleTon = new RoomService();
		}
		return singleTon;
	}

	RoomDAO roomDAO = new RoomDAO();	
	
	
	public List<Room> showRoom() {
		return roomDAO.showRoom();
	}

	public boolean reserveRoom(List<Object> param) {
		int result = roomDAO.reserveRoom(param);
		if(result == 0) return false;
		else return true;
//		return roomDAO.reserveRoom(id, select);
	}

	public RoomReserve mySeat(String id) {
		return roomDAO.mySeat(id);	
	}

	public boolean outRoom(List<Object> param) {
		int result = roomDAO.outRoom(param);
		if(result == 0) return false;
		else return true;
	}

	public RoomReserve checkRoom(List<Object> param) {
		if(roomDAO.checkRoom(param) == null) {
			return null;
		}
		else
			return roomDAO.checkRoom(param);
	}


}