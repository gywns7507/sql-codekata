-- 중복 제거하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 작성자: 김효준
-- 작성일: 2026. 01. 22. 09:36:01

-- 코드를 입력하세요
SELECT COUNT(DISTINCT NAME)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL