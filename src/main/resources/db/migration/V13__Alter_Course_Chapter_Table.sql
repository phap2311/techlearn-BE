---- Drop foreign key constraint from tbl_chapter before modifying columns
--ALTER TABLE tbl_chapter
--    DROP FOREIGN KEY FK_TBL_CHAPTER_ON_COURSE;
--
---- Modify tbl_course
--ALTER TABLE tbl_course
--    DROP PRIMARY KEY,
--    CHANGE `id` id_course BIGINT NOT NULL,
--    ADD PRIMARY KEY (id_course),
--    CHANGE `name` name_course VARCHAR(255) NULL,
--    CHANGE image thumbnail_URL VARCHAR(255) NULL,
--    CHANGE `description` description_course MEDIUMTEXT NULL,
--    ADD COLUMN price_course DECIMAL(10, 2) NULL,
--    ADD COLUMN point INT NULL,
--    ADD COLUMN currency_unit VARCHAR(10) NULL,
--    ADD COLUMN is_active BIT(1) NULL,
--    ADD COLUMN is_public BIT(1) NULL,
--    DROP COLUMN time;
--
---- Modify tbl_chapter
--ALTER TABLE tbl_chapter
--    DROP PRIMARY KEY,
--    DROP COLUMN `description`,
--    CHANGE `name` name_chapter VARCHAR(255) NULL,
--    ADD COLUMN `order` INT NULL,
--    CHANGE `id` id_chapter BIGINT NOT NULL,
--    ADD PRIMARY KEY (id_chapter),
--    CHANGE COLUMN course_id id_course BIGINT NULL;
--
---- Recreate foreign key constraint on tbl_chapter
--ALTER TABLE tbl_chapter
--    ADD CONSTRAINT FK_TBL_CHAPTER_ON_COURSE
--        FOREIGN KEY (id_course) REFERENCES tbl_course(id_course) ON DELETE SET NULL ON UPDATE CASCADE;
--
--ALTER TABLE tbl_user
--    ADD COLUMN point INT NULL;