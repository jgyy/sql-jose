CREATE TABLE IF NOT EXISTS information(
    info_id SERIAL PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    person VARCHAR(50) NOT NULL UNIQUE
);
ALTER TABLE IF EXISTS information
    RENAME TO new_info;