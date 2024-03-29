package com.dookong.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class Wrong_answerDAO {

	// SqlSessionFactory 불러오기
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
//
//	public List<QuestionDTO> Wrong(String created_at, String mb_id) {
//		
//		// WrongQuestions 변수가 null 값이 아니면 성공 메세지 출력
//		List<QuestionDTO> WrongQuestions = null;
//
//		try {
//			// DB에서 오답 횟수 가져오기
//			List<String> result = sqlSession.selectList("wrongCnt");
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			sqlSession.close();
//		}
//		
//		// 오답 목록이 비어 있는지 확인
//		if (WrongQuestions == null) {
//			// 오답 목록이 비어 있다면 오답담기 실패 메시지 출력
//			System.out.println("오답담기 실패");
//		} else {
//			// 오답 목록이 비어 있지 않다면 오답담기 성공 메시지 출력
//			System.out.println("오답담기 성공");
//		}
//		
//		// 오답 목록을 반환 함
//		return WrongQuestions;
//	}
	
	public List<QuestionDTO> allWrong(String mb_id) {
		List<QuestionDTO> wrongList = null;

		try {
			wrongList = sqlSession.selectList("wrongListSelect",mb_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return wrongList;
		
		
	}
}
