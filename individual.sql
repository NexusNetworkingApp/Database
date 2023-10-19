CREATE TABLE individual (
    individual_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(255) NULL,
    receive_notifications BOOLEAN NOT NULL,
    biography VARCHAR(255) NULL,
    last_active TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    location INT NOT NULL
);
