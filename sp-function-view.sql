-- stored procedure getContent2020

DELIMITER $$
CREATE PROCEDURE getContent2020()
BEGIN
SELECT ig_username, COUNT(ig_username) AS total_content_2020 
FROM tbl_scraping WHERE ig_username = "Surabaya" AND (taken_at BETWEEN '2020-01-01' AND '2021-01-01');
end $$

CALL getContent2020();

-- Create Function cekNama()
BEGIN
	IF namaSatu = namaDua THEN
    	RETURN 'nama sama';
    ELSE
    	RETURN 'nama tidak sama';
    END IF;
END;

-- Create view
CREATE VIEW view_user AS SELECT id_user,name,user_type,ig_username FROM tbl_users;