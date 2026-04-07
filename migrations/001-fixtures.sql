INSERT INTO users (
  first_name,
  middle_name,
  last_name,
  username,
  pwd_hash,
  is_admin
)
VALUES
  ('Super', NULL, 'Admin', 'superadmin', '$2b$12$wxHYfwspiqt8VSEobdh3puV3Bq36ph.QzGYVlVdZi8wxyU0JUnmVy', TRUE),
  ('John', 'William', 'Doe', 'j.doe', '$2b$12$sJx8dGT0SjyrWpXGfWrijO/ckkskOlaaS4PZjsH6KYcj/FbOvY8oW', FALSE),
  ('Stephen', NULL, 'King', 's.king', '$2b$12$sJx8dGT0SjyrWpXGfWrijO/ckkskOlaaS4PZjsH6KYcj/FbOvY8oW', FALSE),
  ('Peter', NULL, 'Parker', 'p.parker', '$2b$12$sJR69gYT5SWcjawPNhFNZereBEqn4imq4kSYKH7oonvFaX..ijUoO', FALSE);

INSERT INTO students (name) VALUES
  ('Chuck'), ('James'), ('Thor'), ('Clint'),
  ('Richie'), ('Bill'), ('Ben'), ('Eddie');

INSERT INTO courses (title, description) VALUES
  ('Math', '2+2 = 5'),
  ('Grammar', 'Wi learn haw tu write korektli'),
  ('Physics', 'E=mc^2');

INSERT INTO marks(student_id, course_id, points) VALUES
  (1, 1, 4), (1, 1, 5), (1, 1, 3), (1, 1, 4),
  (1, 2, 2), (1, 2, 3), (1, 3, 5), (1, 3, 5);
