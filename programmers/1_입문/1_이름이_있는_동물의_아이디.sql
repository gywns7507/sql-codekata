-- 이름이 있는 동물의 아이디
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59407
-- 작성자: 김효준
-- 작성일: 2026. 01. 22. 09:35:16

-- 코드를 입력하세요
SELECT ANIMAL_ID 
FROM ANIMAL_INS 
WHERE NAME IS NOT NULL 
ORDER BY ANIMAL_ID