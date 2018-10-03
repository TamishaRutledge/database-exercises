USE codeup_test_db;

-- All albums in your table.
SELECT 'All Albums' AS 'In my table';
SELECT album_name FROM albums;

-- All albums released before 1980
SELECT 'All Albums Released' AS 'Before 1980';
SELECT album_name FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT 'All Albums by' AS 'Michael Jackson';
SELECT album_name FROM albums WHERE agit rtist = 'Michael Jackson';