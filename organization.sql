CREATE TABLE organization (
    organization_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    organization_name VARCHAR(255) NOT NULL,
    founded_date DATE NOT NULL,
    industry VARCHAR(255) NOT NULL,
    receive_notifications BOOLEAN NOT NULL,
    biography VARCHAR(255) NULL,
    last_active TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    verified BOOLEAN NOT NULL DEFAULT FALSE,
    location INT NOT NULL
);
