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

