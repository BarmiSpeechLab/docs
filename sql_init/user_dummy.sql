CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    create_at DATETIME(6) DEFAULT NULL,
    updated_at DATETIME(6) DEFAULT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    is_tutorial_finished BIT(1) DEFAULT NULL,
    nickname VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    profile_img_url VARCHAR(255) DEFAULT NULL,
    role ENUM('TUTOR', 'USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users (email, nickname, password, role, is_tutorial_finished, create_at, updated_at) VALUES
('Amy@test.com', 'Amy', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'TUTOR', b'1', NOW(), NOW()),
('Bell@test.com', 'Bell', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'TUTOR', b'1', NOW(), NOW()),
('Cathy@test.com', 'Cathy', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'TUTOR', b'1', NOW(), NOW()),
('Dolla@test.com', 'Dolla', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'TUTOR', b'1', NOW(), NOW()),
('Emily@test.com', 'Emily', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'TUTOR', b'1', NOW(), NOW()),
('Fiary@test.com', 'Fiary', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'TUTOR', b'1', NOW(), NOW()),
('sowon@test.com', 'sowon', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'USER', b'0', NOW(), NOW()),
('sarang@test.com', 'sarang', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'USER', b'0', NOW(), NOW()),
('gahui@test.com', 'gahui', '$2a$10$Y/I4XJcGPK96pIbl3RxSxOAK9F9QfDDKXkRPvHVU/rc1YJEYZmnLO', 'USER', b'0', NOW(), NOW());