package kh.semi.bobn.community.model.service;
//Service에서 하는 일 : DB연결 - Dao메소드 호출(SQL문 실행) - DB해제
import java.sql.Connection;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import kh.semi.bobn.community.model.dao.NtPlatingDao;
import kh.semi.bobn.community.model.vo.NtPlatingContentVo;
import kh.semi.bobn.community.model.vo.NtPlatingImgVo;
import kh.semi.bobn.community.model.vo.NtPlatingListVo;

public class NtPlatingService {
	
	//게시글등록
	public int insertPlatingContent(NtPlatingContentVo ntpcVo) {
		System.out.println("PlatingService vo :" + ntpcVo);

		//db 연결
		Connection conn = getConnection();
		
		//conn, vo들고 dao로 감
		int result = new NtPlatingDao().insertPlatingContent(conn, ntpcVo);
		System.out.println("PlatingService result :" + result);
		
		//db 해제
		close(conn);
		
		return result;
		
	}
	//이미지등록
	public int insertPlatingImg(NtPlatingImgVo ntpiVo) {
		System.out.println("PlatingService vo :" + ntpiVo);

		//db 연결
		Connection conn = getConnection();
		
		//conn, vo들고 dao로 감
		int result = new NtPlatingDao().insertPlatingImg(conn, ntpiVo);
		System.out.println("PlatingService result :" + result);
		
		//db 해제
		close(conn);
		
		return result;
		
	}
	
	//게시글 조회
		public ArrayList<NtPlatingListVo> listPlatingContent() {

			//db 연결
			Connection conn = getConnection();
			
			//conn가지고 dao로 감
			ArrayList<NtPlatingListVo> ntpcVolist = new NtPlatingDao().listPlatingContent(conn);
			System.out.println("PlatingService ntpcVolist :" + ntpcVolist);
			
			//db 해제
			close(conn);
			
			return ntpcVolist;
			
		}
}
