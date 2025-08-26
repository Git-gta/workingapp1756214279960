CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    target_audience VARCHAR(255),
    logo_prompt TEXT,
    color_scheme VARCHAR(50)
);

CREATE TABLE Features (
    feature_id INT PRIMARY KEY,
    feature_name VARCHAR(255)
);

CREATE TABLE Tech_Stack (
    tech_id INT PRIMARY KEY,
    tech_name VARCHAR(255)
);

CREATE TABLE Project_Features (
    project_id INT,
    feature_id INT,
    PRIMARY KEY (project_id, feature_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    FOREIGN KEY (feature_id) REFERENCES Features(feature_id)
);

CREATE TABLE Project_Tech_Stack (
    project_id INT,
    tech_id INT,
    PRIMARY KEY (project_id, tech_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    FOREIGN KEY (tech_id) REFERENCES Tech_Stack(tech_id)
);