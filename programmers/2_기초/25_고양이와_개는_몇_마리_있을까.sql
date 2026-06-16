-- 고양이와 개는 몇 마리 있을까
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:21:27

-- 코드를 입력하세요
SELECT
    ANIMAL_TYPE,
    COUNT(*)
FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ('Cat', 'Dog')
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE