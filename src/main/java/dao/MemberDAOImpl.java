package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import domain.MemberVO;
import orm.DatabaseBuilder;

public class MemberDAOImpl implements MemberDAO {
	private static final Logger log = LoggerFactory.getLogger(MemberDAOImpl.class);
	private SqlSession sql;
	
	public MemberDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}

	@Override
	public int join(MemberVO mvo) {
		log.info("join dao in");
		int isOk = sql.insert("MemberMapper.join", mvo);
		if(isOk > 0) sql.commit();
		return isOk;
	}

	@Override
	public MemberVO login(MemberVO mvo) {
		log.info("login dao in!!");
		return sql.selectOne("MemberMapper.login", mvo);
	}

	@Override
	public int lastLogin(String id) {
		log.info("lastLogin dao in!!");
		int isOk = sql.update("MemberMapper.last", id);
		if(isOk>0) sql.commit();
		return isOk;
	}

	@Override
	public int update(MemberVO mvo) {
		log.info("member info update dao in!!{}",mvo);
		int isOk = sql.update("MemberMapper.update", mvo);
		if(isOk > 0) sql.commit();
		return isOk;
	}

	@Override
	public List<MemberVO> getList() {
		log.info("member list dao in!!");
		return sql.selectList("MemberMapper.list");
	}

	@Override
	public int delete(String id) {
		log.info("member deledte dao in!!");
		int isOk = sql.delete("MemberMapper.delete", id);
		if(isOk>0) sql.commit();
		return isOk;
	}
}
