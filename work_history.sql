CREATE TABLE work_history (
   work_history_id BIGINT AUTO_INCREMENT PRIMARY KEY,
   individual_id BIGINT NOT NULL,
   title VARCHAR(255) NOT NULL,
   description VARCHAR(255) NULL,
   FOREIGN KEY (individual_id) REFERENCES individual(individual_id) ON DELETE CASCADE
);
