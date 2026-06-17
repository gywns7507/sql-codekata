-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 작성자: 김효준
-- 작성일: 2026. 06. 17. 14:56:03

-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/', B.BOARD_ID, '/', B.FILE_ID, B.FILE_NAME, B.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD A
JOIN USED_GOODS_FILE B
ON A.BOARD_ID = B.BOARD_ID
WHERE A.VIEWS = (
SELECT MAX(VIEWS)
FROM USED_GOODS_BOARD)
ORDER BY B.FILE_ID DESC