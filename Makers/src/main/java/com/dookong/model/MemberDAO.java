package com.dookong.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.dookong.db.SqlSessionManager;



public class MemberDAO {

	
	//SqlSessionFactory 불러오기 : DB관련 기능을 사용할 수 있는 세션을 만들어주는 공장.
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		
	
		public String login(MemberDTO dto) {

			// 전체 테이블중 일부분만 확인할 수 있는 selectOne() 사용!
			String result = sqlSession.selectOne("login", dto);


			return result;

		}
		
		public int join(MemberDTO dto) {
			// 1. sqlSession 빌려오기!

			// 2. sql문장 전달!
			int result = sqlSession.insert("join", dto);

			// 3. 결과 처리
			if (result > 0) {
				System.out.println("회원 가입 성공!");
			}

			// 4. sqlSession 반납!
			sqlSession.close();

			return result;

			
		}
		
//		// 회원 닉네임 조회하는 메서드
//		public String findNick(String mb_id,String mb_pw) {
//			String result =sqlSession.selectOne("findNick",Map.of("mb_id",mb_id,"mb_pw",mb_pw));
//			sqlSession.close();
//			return result;
//		}
}
