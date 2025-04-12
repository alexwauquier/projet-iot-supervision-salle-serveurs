CREATE TABLE dht11 (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    temperature FLOAT NOT NULL,
    humidite    FLOAT NOT NULL,
    horodatage  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    email       VARCHAR(100) NOT NULL UNIQUE,
    username    VARCHAR(50) NOT NULL UNIQUE,
    password    VARCHAR(255) NOT NULL,
    is_admin    BOOLEAN NOT NULL DEFAULT 0
);

INSERT INTO users (email, username, password, is_admin)
VALUES ('admin@admin.com', 'admin', '$2y$10$E6jsX3GNI3fdiK1G4HTRfuP4vjjeOswEFzrOiCI.kj6/xc7uts.Bm', 1);
