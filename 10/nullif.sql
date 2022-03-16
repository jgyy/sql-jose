CREATE TABLE IF NOT EXISTS depts (
    first_name VARCHAR(50),
    department VARCHAR(50)
);
--
INSERT INTO depts (
    first_name,
    department
)
VALUES
('Vinton', 'A'),
('Lauren', 'A'),
('Clarie', 'B');
--
SELECT (
        SUM(
            CASE
                WHEN department = 'A' THEN 1
                ELSE 0
            END
        ),
        NULLIF(
            SUM(
                CASE
                    WHEN department = 'B' THEN 1
                    ELSE 0
                END
            ),
            0
        )
    ) AS department_ratio
FROM depts