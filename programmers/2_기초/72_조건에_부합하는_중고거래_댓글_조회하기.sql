-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:30:33

-- 코드를 입력하세요
SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, TO_CHAR(B.CREATED_DATE, 'YYYY-MM-DD') AS CREATED_DATE
  FROM USED_GOODS_BOARD A, USED_GOODS_REPLY B    
 WHERE A.BOARD_ID = B.BOARD_ID AND TO_CHAR(A.CREATED_DATE, 'YYYY-MM') = '2022-10'
 ORDER BY B.CREATED_DATE, A.TITLE