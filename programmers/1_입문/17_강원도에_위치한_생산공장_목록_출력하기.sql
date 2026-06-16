-- 강원도에 위치한 생산공장 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131112
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 15:38:42

-- 코드를 입력하세요
SELECT
    FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '%강원%'
ORDER BY FACTORY_ID