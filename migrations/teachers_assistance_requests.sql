CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);


-- INSERT INTO teachers (id, name, is_active, start_date, end_date) VALUES (1, 'Helmer Rodriguez', true, '2018-02-12T08:00:00.000Z', null);
-- INSERT INTO teachers (id, name, is_active, start_date, end_date) VALUES (2, 'Rosalyn Raynor', true, '2018-02-12T08:00:00.000Z', null);

-- INSERT INTO assistance_requests (id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback) VALUES (1, 1, 1, 6, '2018-02-12T08:00:00.000Z', '2018-02-12T08:06:00.000Z', '2018-02-12T08:13:20.000Z', 'Good', 'Good');
-- INSERT INTO assistance_requests (id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback) VALUES (2, 1, 2, 9, '2018-02-12T08:00:00.000Z', '2018-02-12T08:02:00.000Z', '2018-02-12T08:08:40.000Z', 'Good', 'Great');