-- Explore dataset
PRAGMA table_info(university_rankings);
SELECT COUNT(*) AS total_rows
FROM university_rankings;
SELECT DISTINCT year
FROM university_rankings
ORDER BY year;
SELECT COUNT(DISTINCT country) AS distinct_countries
FROM university_rankings;
SELECT * FROM university_rankings 
LIMIT 10;

-- Basic statistics by year to understand score distribution
SELECT 
  year,
  ROUND(AVG(score),2) AS avg_score,
  MIN(score) AS min_score,
  MAX(score) AS max_score
FROM university_rankings
GROUP BY year
ORDER BY year;

-- Insert new university (Duke MIDS, 2014)
INSERT INTO university_rankings (world_rank, institution, country, score, year)
VALUES (350, 'Duke Tech', 'USA', 60.5, 2014);
SELECT * FROM university_rankings 
WHERE institution='Duke Tech' AND year=2014;

-- Policy question: Japan universities in top 200 (2013)
SELECT COUNT(*) AS jp_top200_2013
FROM university_rankings
WHERE country='Japan' AND year=2013 AND world_rank<=200;

-- Update Oxford’s 2014 score (+1.2)
SELECT institution, year, score
FROM university_rankings
WHERE year=2014 AND institution LIKE 'University of Oxford%';
UPDATE university_rankings
SET score = ROUND(score + 1.2, 2)
WHERE year=2014 AND institution LIKE 'University of Oxford%';
SELECT institution, year, score
FROM university_rankings
WHERE year=2014 AND institution LIKE 'University of Oxford%';

--️ Delete 2015 rows with score < 45
DELETE FROM university_rankings
WHERE year = 2015 AND score <45;
SELECT COUNT(*) AS remaining_below45_2015
FROM university_rankings
WHERE year=2015 AND score<45;

SELECT COUNT(*) AS total_final FROM university_rankings;