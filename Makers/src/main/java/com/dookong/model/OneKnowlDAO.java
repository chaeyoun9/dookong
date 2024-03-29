package com.dookong.model;

import java.util.List;
import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class OneKnowlDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	
	public int rd() {
		
		List<OneKnowlDTO> result = sqlSession.selectList("select_all");
		
		int randomSequence = 0;
		
		if (result != null) {
			// System.out.println("전체 출력 성공!");
			int maxNum = result.size();
			System.out.println(maxNum);
			randomSequence = new Random().nextInt(maxNum)+1;
			// System.out.println("TEST "+ randomSequence);
		}
		return randomSequence;
	}
	
	
	public OneKnowlDTO printk(int know_seq) {
        System.out.println(know_seq+"tytyty");
		OneKnowlDTO result = sqlSession.selectOne("select_num",know_seq);
		System.out.println(result+" Test2");
		if (result != null) {
			// System.out.println("문제 출력 성공!");
		} else {
			// System.out.println("문제 출력 실패!");
		}

		sqlSession.close();

		return result;

	}

}
