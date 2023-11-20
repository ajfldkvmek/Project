package print;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.ScanUtil;
import vo.Room;
import vo.RoomReserve;

public class RoomPrint {

	public void printSeat(List<Room> list) {
		char ch = 'a';
		System.out.println("\t---------------창문--------------");
		System.out.println("\t1\t2\t3\t4\t5");
		for(int i = 0; i < list.size(); i++) {
			if(i%5 == 0) System.out.print((char)((i/5)+ch)+"\t");
			if(list.get(i).getSeat_stat().equals("y")) {
				System.out.print("□\t");
			} else {
				System.out.print("■\t");
			}
			if((i+1)%5 == 0) System.out.println();
		}
		
		System.out.println("                            ||");
		System.out.println("                          <출입구>");
	}


	public void printMySeat(RoomReserve rr) {
		System.out.println("예약번호\t\t회원아이디\t좌석번호");
		System.out.println(rr.getResv_no()+"\t"+rr.getMem_id()+"\t"+rr.getSeat_no()+"\t");
	}
	
	public void roomPrint() {
		System.out.println("1.열람실 예약");
		System.out.println("2.사용종료");
		System.out.println("3.내 예약 확인");
	}
}
