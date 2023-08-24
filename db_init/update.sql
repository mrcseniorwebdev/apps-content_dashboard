-- Switch to the content_dashboard database
USE content_dashboard;

-- 1. Create the roles table
CREATE TABLE IF NOT EXISTS roles (
    rid int NOT NULL AUTO_INCREMENT,
    role_label varchar(255),
    PRIMARY KEY (rid)
);

-- Populate roles table if empty
DELIMITER //
CREATE PROCEDURE InsertRolesIfEmpty()
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM roles;
    IF total = 0 THEN
        INSERT INTO roles (role_label) VALUES ('regular');
        INSERT INTO roles (role_label) VALUES ('marketing');
        INSERT INTO roles (role_label) VALUES ('admin');
    END IF;
END //
DELIMITER ;

CALL InsertRolesIfEmpty();

-- Cleanup
DROP PROCEDURE InsertRolesIfEmpty;

-- 2. Create the role_assignments table
CREATE TABLE IF NOT EXISTS role_assignments (
    raid int NOT NULL AUTO_INCREMENT,
    rid int NOT NULL,
    uid int NOT NULL,
    FOREIGN KEY (rid) REFERENCES roles(rid),
    FOREIGN KEY (uid) REFERENCES users(uid),
    PRIMARY KEY (raid)
);

INSERT INTO role_assignments (rid, uid) VALUES (3, 1);


-- 3. Add the published column to the content_queue table
ALTER TABLE content_queue
ADD COLUMN published int NOT NULL DEFAULT 1;  -- Assuming default value as 0 for already existing records
