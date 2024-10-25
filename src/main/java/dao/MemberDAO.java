package dao;

import java.util.List;

import domain.MemberVO;

public interface MemberDAO {

	int join(MemberVO mvo);

	MemberVO login(MemberVO mvo);

	int lastLogin(String id);

	int update(MemberVO mvo);

	List<MemberVO> getList();

	int delete(String id);

}
