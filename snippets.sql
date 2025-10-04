SELECT question_text,
  COUNT(DISTINCT user_id)
FROM survey_responses
GROUP BY 1;