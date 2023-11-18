CREATE TABLE job (
    job_id BIGINT AUTO_INCREMENT PRIMARY KEY ,
    organization_id BIGINT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    type ENUM('internship', 'temporary', 'part-time', 'full-time', 'seasonal') NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    post_duration INT NOT NULL,
    post_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (organization_id) REFERENCES organization(organization_id) ON DELETE CASCADE
);
