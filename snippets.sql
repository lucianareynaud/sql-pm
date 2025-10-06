SELECT question_text,
  COUNT(DISTINCT user_id)
FROM survey_responses
GROUP BY 1;


--Liste todos os textos de modais de onboarding e mostre, para cada um, quantos usuários únicos o visualizaram, ordenando os resultados pelo nome do modal.

SELECT modal_text, 
COUNT(DISTINCT user_id) 
FROM onboarding_modals 
GROUP BY 1 
ORDER BY 1;

--We can use a CASE statement within our COUNT() aggregate so that we only count user_ids whose ab_group is equal to ‘control’
SELECT modal_text,
  COUNT(DISTINCT CASE
    WHEN ab_group = 'control' THEN user_id
    END) AS 'control_clicks'
FROM onboarding_modals
GROUP BY 1
ORDER BY 1;


--Add an additional column to your previous query that counts the number of clicks from the variant group and alias it as ‘variant_clicks’.




SELECT modal_text,
  COUNT(DISTINCT CASE
    WHEN ab_group = 'control' THEN user_id
    END) AS 'control_clicks',
  COUNT(DISTINCT CASE
    WHEN ab_group = 'variant' THEN user_id
    END) AS 'variant_clicks'

FROM onboarding_modals
GROUP BY 1
ORDER BY 1;

SELECT *
FROM browse AS 'b'
LEFT JOIN checkout AS 'c'
    ON c.user_id = b.user_id
LEFT JOIN purchase AS 'p'
    ON p.user_id = c.user_id
LIMIT 50;



