package com.dookong.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class Wrong_answerDAO {

	//SqlSessionFactory 불러오기 
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public List<String> Wrong(String created_at , String mb_id){
		 List<String> result = sqlSession.selectList("wrongCnt");
		 if(result==null) {
			 System.out.println("오답담기 실패");
		 }else {
			 System.out.println("오답담기 성공");
		 }
		 sqlSession.close();
		 System.out.println(result);
		 return result;
	}
}
