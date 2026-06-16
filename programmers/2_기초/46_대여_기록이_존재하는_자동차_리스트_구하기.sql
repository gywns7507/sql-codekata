-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:29:44

-- 코드를 입력하세요
SELECT DISTINCT A.car_id
FROM CAR_RENTAL_COMPANY_CAR A
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY B
ON A.CAR_ID = B.CAR_ID
WHERE CAR_TYPE = '세단'
AND MONTH(B.start_date) = 10
ORDER BY A.car_id DESC