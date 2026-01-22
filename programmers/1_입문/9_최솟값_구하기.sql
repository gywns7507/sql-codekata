-- 최솟값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- 작성자: 김효준
-- 작성일: 2026. 01. 22. 09:38:28

-- 코드를 입력하세요
SELECT
    DATETIME AS 시간
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;