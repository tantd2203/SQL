SELECT * FROM leetcode.views;
CREATE TABLE views (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

INSERT INTO article_views (article_id, author_id, viewer_id, view_date) VALUES 
(1, 3, 5, '2019-08-01'),
(1, 3, 6, '2019-08-02'),
(2, 7, 7, '2019-08-01'),
(2, 7, 6, '2019-08-02'),
(4, 7, 1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),
(3, 4, 4, '2019-07-21');
-- Result
select distinct author_id as id  from views 
where  author_id = viewer_id
order by id

