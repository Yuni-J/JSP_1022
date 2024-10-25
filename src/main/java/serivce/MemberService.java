package serivce;

import java.util.List;

import domain.MemberVO;

public interface MemberService {

	int join(MemberVO mvo);

	MemberVO login(MemberVO mvo);

	int lastLogin(String id);

	int update(MemberVO mvo);

	List<MemberVO> getMyList();

	int delete(String id);

}
