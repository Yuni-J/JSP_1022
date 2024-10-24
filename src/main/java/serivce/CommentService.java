package serivce;

import java.util.List;

import domain.CommentVO;

public interface CommentService {

	int post(CommentVO cvo);

	List<CommentVO> getList(int bno);

<<<<<<< HEAD
	int modify(CommentVO cvo);

	int delete(int cno);

=======
>>>>>>> origin/main
}
