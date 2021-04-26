CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,   -- A unique identifier
  name VARCHAR(255) NOT NULL,       -- The name of the cohort
  start_date DATE,                  -- The cohorts' start date
  end_date DATE                     -- The cohorts' end date
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,   -- A unique identifier
  name VARCHAR(255) NOT NULL,       -- The full name of the student
  email VARCHAR(255),               -- The students' email address
  phone VARCHAR(32),                -- The students' phone number
  github VARCHAR(255),              -- The students' github profile url
  start_date DATE,                  -- The students' start date of the Bootcamp
  end_date DATE,                    -- The students' end date of the Bootcamp
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE  -- The id of the cohort that the student is enrolled in
);