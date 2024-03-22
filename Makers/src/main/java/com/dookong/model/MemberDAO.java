package com.dookong.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.model.SqlSessionManager;

public class MemberDAO {

	
	//SqlSessionFactory 불러오기 : DB관련 기능을 사용할 수 있는 세션을 만들어주는 공장.
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
		//각 기능을 수행하는 세션을 저장하는 변수.
		SqlSession sqlSession;
	
	public MemberDTO login(MemberDTO memberDTO) {
		
		sqlSession = sqlSessionFactory.openSession(true);
		MemberDTO loginMember =null;
		
		try {//쿼리를 실행했을때 결과가 없을 수 도 있으므로.
			loginMember = sqlSession.selectOne("login", memberDTO);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return loginMember;
	}
}
