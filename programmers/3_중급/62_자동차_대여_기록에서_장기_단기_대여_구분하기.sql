-- 자동차 대여 기록에서 장기/단기 대여 구분하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:46:19

-- 코드를 입력하세요
# 당일 빌려서 반납해도 1일 -> +1 해야함
# DATEDIFF : 날짜간 차이
SELECT
    HISTORY_ID,
    CAR_ID,
    DATE_FORMAT(DATE(START_DATE), '%Y-%m-%d') AS START_DATE,
    DATE_FORMAT(DATE(END_DATE), '%Y-%m-%d') AS END_DATE,
    CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
        END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE YEAR(START_DATE) = 2022 AND MONTH(START_DATE) = 09
ORDER BY HISTORY_ID DESC