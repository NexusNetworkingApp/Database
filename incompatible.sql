CREATE TABLE incompatible (
    incompatible_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user1_id BIGINT NOT NULL,
    user2_id BIGINT NOT NULL,
    reason VARCHAR(500) NULL,
    FOREIGN KEY (user1_id) REFERENCES account(account_id) ON DELETE CASCADE,
    FOREIGN KEY (user2_id) REFERENCES account(account_id) ON DELETE CASCADE
);
