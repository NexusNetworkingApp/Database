CREATE TABLE skill (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    individual_id BIGINT NOT NULL,
    description VARCHAR(255) NOT NULL,
    FOREIGN KEY (individual_id) REFERENCES individual(individual_id) ON DELETE CASCADE
);
