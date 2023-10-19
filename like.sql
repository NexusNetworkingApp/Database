CREATE TABLE `like` (
    like_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sender_id BIGINT NOT NULL,
    receiver_id BIGINT NOT NULL,
    like_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    like_message VARCHAR(500) NULL,
    prompt ENUM('picture', 'biography', 'education', 'work', 'skill', 'interest') NOT NULL,
    FOREIGN KEY (sender_id) REFERENCES account(account_id) ON DELETE CASCADE,
    FOREIGN KEY (receiver_id) REFERENCES account(account_id) ON DELETE CASCADE
);
