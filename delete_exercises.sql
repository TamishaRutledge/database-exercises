USE codeup_test_db;
-- Write SELECT statements for:
-- Albums released after 1991
-- SELECT 'Albums release before 1991' AS 'In my table';
-- SELECT album_name FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date < 1991;
-- Albums with the genre 'disco'
-- SELECT album_name FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- SELECT 'Albums by Whitney Houson' AS 'In my table';
-- SELECT album_name FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';