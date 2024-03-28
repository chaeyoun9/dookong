package com.dookong.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class QuestionDAO {

	// 선택한 tt_idx 기준 데이터 select하는 메서드
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	// 문제 데이터 출력
	public List<QuestionDTO> allQustion(int tt_dix) {
		List<QuestionDTO> questions = null;

		try {
			questions = sqlSession.selectList("questionSelect",tt_dix);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return questions;
	}
	
}
