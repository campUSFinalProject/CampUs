package kibwa.campus.service.impl;

import kibwa.campus.dto.BoardDTO;
import kibwa.campus.persistance.mapper.IBoardMapper;
import kibwa.campus.service.IBoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service(value = "BoardService")
public class BoardService implements IBoardService {

    private final IBoardMapper boardMapper;

    @Autowired
    public BoardService(IBoardMapper boardMapper) {
        this.boardMapper = boardMapper;
    }

    // 게시판 글 조회
    @Override
    public List<BoardDTO> getBoardList() throws Exception{
        return boardMapper.getBoardList();
    }

    // 게시판 글 작성
    @Transactional
    @Override
    public void insertBoard(BoardDTO bDTO) throws Exception {
        log.info(this.getClass().getName() + ".insertBoard!");
        boardMapper.insertBoard(bDTO);
    }
}
