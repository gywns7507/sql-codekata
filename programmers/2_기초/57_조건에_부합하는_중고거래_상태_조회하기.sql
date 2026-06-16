-- 조건에 부합하는 중고거래 상태 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:30:24

-- 코드를 입력하세요
SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE
        WHEN A.STATUS = 'SALE' THEN '판매중'
        WHEN A.STATUS = 'DONE' THEN '거래완료'
        WHEN A.STATUS = 'RESERVED' THEN '예약중'
        END AS STATUS
FROM USED_GOODS_BOARD A
WHERE DATE_FORMAT(DATE(CREATED_DATE), '%Y-%m-%d') = '2022-10-05'
ORDER BY BOARD_ID DESC