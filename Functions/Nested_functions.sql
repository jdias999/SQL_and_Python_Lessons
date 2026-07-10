--Exemplo de array

WITH skills AS (
    SELECT 'python' AS skill
    UNION ALL
    SELECT 'sql'
    UNION ALL
    SELECT 'r'
)

SELECT ARRAY_AGG(skill) as skills_array --tranformar a Cte em array, porém em uma ordem não fixa de index
FROM skills;

--Exemplo de struct

SELECT { skill: 'python', type: 'programming'} AS skill_struct;

WITH skill_struct AS (
SELECT 
    STRUCT_PACK (
        skill := 'Python',
        type := 'Programming'
    ) AS S
)

SELECT 
    S.skill,
    S.type
FROM skill_struct;

----------------------------------------------------------------------------------------------

WITH skill_table AS (
    SELECT 'python' AS skills, 'programming' AS types
    UNION ALL
    SELECT 'sql', 'query_language'
    UNION ALL
    SELECT 'r', 'programming'
)
SELECT 
    STRUCT_PACK (
        skill := skills,
        type := types
    ) 
FROM skill_table;

--