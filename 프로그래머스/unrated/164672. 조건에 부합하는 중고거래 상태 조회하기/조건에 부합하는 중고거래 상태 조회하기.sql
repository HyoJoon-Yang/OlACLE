-- -- 코드를 입력하세요
-- SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
-- CASE 
--     WHEN STATUS = 'SALE' THEN '판매중'
--     WHEN STATUS = 'RESERVED' THEN '예약중'
--     WHEN STATUS = 'DONE' THEN '거래완료'
-- END AS STATUS
-- FROM USED_GOODS_BOARD 
-- WHERE CREATED_DATE LIKE '2022-10-05'
-- ORDER BY BOARD_ID DESC;

SELECT board_id, writer_id, title, price,
CASE WHEN status = 'SALE' THEN '판매중'
     WHEN status = 'RESERVED' THEN '예약중'
     WHEN status = 'DONE' then '거래완료'
END AS status
from used_goods_board
where to_char(created_date,'yyyy-mm-dd') = '2022-10-05'
order by 1 desc;