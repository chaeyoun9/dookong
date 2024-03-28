package com.dookong.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class AnswerDAO {
	
		//SqlSessionFactory 불러오기 
			SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			
			public List<String> checkAn(int tt_idx,String mb_id) {

				// 전체 테이블중 일부분만 확인할 수 있는 selectOne() 사용!
				List<String> result = sqlSession.selectList("answerCnt");

				
				sqlSession.close();
				System.out.println(result);
				return result;

			}
}
