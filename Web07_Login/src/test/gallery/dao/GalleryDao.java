package test.gallery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.gallery.dto.GalleryDto;
import test.users.dto.UsersDto;
import test.util.DbcpBean;

public class GalleryDao {
	private static GalleryDao dao;
	private GalleryDao() {}
	public static GalleryDao getInstance() {
		if(dao==null) {
			dao=new GalleryDao();
		}
		return dao;
	}

	//전체 row의 갯수를 리턴하는 메소드
	public int getCount() {
		int count=0;
		//필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "SELECT NVL(MAX(ROWNUM), 0) AS count"
					+ " FROM board_gallery";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			//select문 수행하고 결과 받아오기
			rs=pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기
			if(rs.next()) {
				count=rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return count;
	}

	
	//이미지 정보를 DB에 저장하는 메소드
	public boolean insert(GalleryDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			//Connection Pool에서 Connection객체를 하나 가지고 온다.
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO board_gallery"
					+ " (num, writer, caption, imagePath, regdate)"
					+ " VALUES(board_gallery_seq.NEXTVAL, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getCaption());
			pstmt.setString(3, dto.getImagePath());
			//sql  문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기 
			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();//Connection 반납하기
			} catch (Exception e) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	//이미지 목록을 리턴하는 메소드
	public List<GalleryDto> getList(GalleryDto dto){
		//파일 목록을 담을 Arraylist 객체 생성
				List<GalleryDto> list=new ArrayList<>();
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs=null;
				int flag = 0;
				try {
					conn = new DbcpBean().getConn();
					//실행할 sql 문 준비하기 
					String sql ="SELECT *"
							+" FROM"
							+	"(SELECT result1.*, ROWNUM AS rnum" 
							+ "   FROM "
							+ "		(SELECT num,writer,caption,imagePath,regdate"
							+ " 	FROM board_gallery"
							+ " 	ORDER BY num DESC) result1)"
							+ " WHERE rnum BETWEEN ? AND ?";
					pstmt = conn.prepareStatement(sql);
					//? 에 바인딩 할 값이 있으면 바인딩한다.
					pstmt.setInt(1, dto.getStartRowNum());
					pstmt.setInt(2, dto.getEndRowNum());
					//select문 수행하고 결과 받아오기
					rs=pstmt.executeQuery();
					//반복문 돌면서 결과 값 추출하기
					while(rs.next()) {
						GalleryDto tmp=new GalleryDto();
						tmp.setNum(rs.getInt("num"));
						tmp.setWriter(rs.getString("writer"));
						tmp.setCaption(rs.getString("caption"));
						tmp.setImagePath(rs.getString("imagePath"));
						tmp.setRegdate(rs.getString("regdate"));
						//ArrayList객체에 누적시킨다.
						list.add(tmp);
					}
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						try {
							if (rs != null)
								rs.close();
							if (pstmt != null)
								pstmt.close();
							if (conn != null)
								conn.close();
						} catch (Exception e) {
						}
					}
					return list;	
	}
}
