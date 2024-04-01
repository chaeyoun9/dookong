package com.dookong.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dookong.db.SqlSessionManager;

public class TakeTestsDAO {
    private final SqlSessionFactory sqlSessionFactory;

    public TakeTestsDAO() {
        this.sqlSessionFactory = SqlSessionManager.getSqlSession();
    }

    // 첫 번째 쿼리 실행 메서드 (회차별 점수)
    public List<TakeTestsDTO> take(String mb_id) {
        List<TakeTestsDTO> TakeTests = null;
        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        try {
            TakeTests = sqlSession.selectList("selectScore", mb_id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

        if (TakeTests != null) {
            System.out.println("성공");
        } else {
            System.out.println("실패");
        }

        return TakeTests;
    }
    
    // 두 번째 쿼리 실행 메서드 (과목별 평균 점수)
    public List<TakeTestsDTO> take2(String md_id){
    	List<TakeTestsDTO> TakeTests = null;
    	SqlSession sqlSession = sqlSessionFactory.openSession(true);

        try {
            TakeTests = sqlSession.selectList("selectScore2");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

        if (TakeTests != null) {
            System.out.println("성공");
        } else {
            System.out.println("실패");
        }

        return TakeTests;
    }
}
