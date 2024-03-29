package com.dookong.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class TakeTestsDAO {
	
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
	
		public List<TakeTestsDTO> take(String mb_id) {
			List<TakeTestsDTO> TakeTests = null;

			try {
				TakeTests = sqlSession.selectList("selectScore", mb_id);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			if(TakeTests != null) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
			return TakeTests;
		}
		
	}
