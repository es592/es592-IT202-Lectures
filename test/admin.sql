SHOW DATABASES;

CREATE Table admins (
    adminID         INT(11)         NOT NULL    AUTO_INCREMENT,
    emailAddress    VARCHAR(255)    NOT NULL    UNIQUE,
    password        CHAR(64)        NOT NULL,
    firstName       VARCHAR(60)     NOT NULL,
    lastName        VARCHAR(60)     NOT NULL,
     PRIMARY KEY (adminID)
);