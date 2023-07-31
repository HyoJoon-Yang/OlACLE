-- 코드를 입력하세요
SELECT
    animal_id ,
    name ,
    CASE
        WHEN sex_upon_intake LIKE 'Neutered%' Then 'O'
        WHEN sex_upon_intake LIKE 'Spayed%' Then 'O'
        WHEN sex_upon_intake LIKE 'Intact%' THEN 'X'
    END
FROM
    animal_ins
ORDER BY 
    animal_id