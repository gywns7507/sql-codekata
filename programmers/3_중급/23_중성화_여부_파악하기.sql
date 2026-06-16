-- 중성화 여부 파악하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59409
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:41:09

-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    NAME,
    CASE 
        WHEN SEX_UPON_INTAKE LIKE '%Neutered%' THEN 'O'
        WHEN SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
        ELSE 'X' END AS SEX_UPON_INTAKE
FROM ANIMAL_INS