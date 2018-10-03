USE codeup_test_db;

-- All albums in your table.
-- SELECT 'All Albums' AS 'In my table';
-- SELECT album_name FROM albums;
--
-- -- All albums released before 1980
-- SELECT 'All Albums Released' AS 'Before 1980';
-- SELECT album_name FROM albums WHERE release_date < 1980;
--
-- -- All albums by Michael Jackson
-- SELECT 'All Albums by' AS 'Michael Jackson';
-- SELECT album_name FROM albums WHERE agit rtist = 'Michael Jackson';

-- UPDATE STATEMENTS
UPDATE albums
SET sales = (sales * 10);

UPDATE albums
SET release_date = 1800
WHERE release_date BETWEEN 1980 AND 1989;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';