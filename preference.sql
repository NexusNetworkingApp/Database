CREATE TABLE preference (
    preference_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_id BIGINT NOT NULL,
    radius INT NOT NULL DEFAULT 1,
    FOREIGN KEY (account_id) REFERENCES account(account_id) ON DELETE CASCADE
);
