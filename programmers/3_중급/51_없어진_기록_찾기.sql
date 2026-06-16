-- 없어진 기록 찾기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:45:09

-- 코드를 입력하세요
SELECT B.ANIMAL_ID, B.NAME
FROM ANIMAL_INS A
RIGHT JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.ANIMAL_ID IS NULL