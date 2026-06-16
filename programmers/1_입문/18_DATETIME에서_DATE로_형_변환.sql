-- DATETIME에서 DATE로 형 변환
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 15:38:58

-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    NAME,
    DATE_FORMAT(DATE(DATETIME), '%Y-%m-%d') AS '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID