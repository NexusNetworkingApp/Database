CREATE TABLE message (
    message_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sender_id BIGINT NOT NULL,
    receiver_id BIGINT NOT NULL,
    content VARCHAR(500) NOT NULL,
    message_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES account(account_id) ON DELETE CASCADE,
    FOREIGN KEY (receiver_id) REFERENCES account(account_id) ON DELETE CASCADE
);
