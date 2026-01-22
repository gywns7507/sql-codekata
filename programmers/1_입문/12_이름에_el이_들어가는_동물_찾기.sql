-- 이름에 el이 들어가는 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 작성자: 김효준
-- 작성일: 2026. 01. 22. 09:39:18

-- 코드를 입력하세요
SELECT
    ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%EL%' AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME