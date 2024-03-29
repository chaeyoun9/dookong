package com.dookong.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/ProfilePictureUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ProfilePictureUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "profile_images";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		// 파일 업로드 경로 설정
		String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;

		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			// 업로드된 파일 처리
			Collection<Part> parts = request.getParts();
			for (Part part : parts) {
				String fileName = extractFileName(part);
				if (fileName != null && !fileName.isEmpty()) {
					// 파일 업로드
					String filePath = uploadPath + File.separator + fileName;
					part.write(filePath);

					// 데이터베이스에 파일 경로 저장
					saveFilePathToDatabase(filePath);

					out.println(fileName + " 파일 업로드 및 경로 저장 성공");

					// 콘솔에 저장된 파일 경로 출력
					System.out.println("저장된 파일 경로: " + filePath);
				}
			}
		} catch (Exception e) {
			out.println("파일 업로드 실패: " + e.getMessage());
			e.printStackTrace();
		} finally {
			out.close();
			// 리소스 해제
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 파일 이름 추출
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return null;
	}

	// 데이터베이스에 파일 경로 저장
	private void saveFilePathToDatabase(String filePath) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			// JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 데이터베이스 연결
			conn = DriverManager.getConnection("jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:xe", "mp_21K_bigdata22_p2_5", "smhrd5");

			// SQL 쿼리 작성
			String sql = "INSERT INTO profile_images (file_path) VALUES (?)";

			// PreparedStatement 생성
			pstmt = conn.prepareStatement(sql);

			// 파라미터 설정
			pstmt.setString(1, filePath);

			// 쿼리 실행
			pstmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			// 리소스 해제
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
