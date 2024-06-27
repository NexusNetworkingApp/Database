CREATE TABLE message (
    message_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sender_id BIGINT NOT NULL,
    receiver_id BIGINT NOT NULL,
    content VARCHAR(500) NOT NULL,
    message_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) NOT NULL,
    version INT NOT NULL DEFAULT 0,
    FOREIGN KEY (sender_id) REFERENCES account(account_id),
    FOREIGN KEY (receiver_id) REFERENCES account(account_id)
);

CREATE INDEX idx_sender_id ON message(sender_id);
CREATE INDEX idx_receiver_id ON message(receiver_id);
CREATE INDEX idx_message_date ON message(message_date);