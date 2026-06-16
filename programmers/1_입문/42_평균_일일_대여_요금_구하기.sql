-- 평균 일일 대여 요금 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:18:41

-- 코드를 입력하세요
SELECT ROUND(AVG(daily_fee))
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'