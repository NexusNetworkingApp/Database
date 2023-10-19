CREATE TABLE account (
     account_id BIGINT AUTO_INCREMENT PRIMARY KEY,
     account_type ENUM('individual', 'organization') NOT NULL,
     individual_id BIGINT,
     organization_id BIGINT,
     FOREIGN KEY (individual_id) REFERENCES individual(individual_id) ON DELETE CASCADE,
     FOREIGN KEY (organization_id) REFERENCES organization(organization_id) ON DELETE CASCADE
    );
