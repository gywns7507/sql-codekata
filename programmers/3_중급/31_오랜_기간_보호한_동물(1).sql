-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:41:30

-- 코드를 입력하세요
SELECT A.NAME, A.DATETIME
FROM ANIMAL_INS A
LEFT OUTER JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.DATETIME IS NULL
ORDER BY A.DATETIME
LIMIT 3