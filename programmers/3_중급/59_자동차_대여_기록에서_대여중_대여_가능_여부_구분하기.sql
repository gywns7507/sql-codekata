-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:45:43

-- 코드를 입력하세요
SELECT CAR_ID,
    MAX(CASE
            WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE THEN '대여중' 
            ELSE '대여 가능'
        END) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;