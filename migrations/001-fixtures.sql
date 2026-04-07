INSERT INTO users (
  first_name,
  middle_name,
  last_name,
  username,
  pwd_hash,
  is_admin
)
VALUES
  ('Super', NULL, 'Admin', 'superadmin', '$2b$12$YmGAeNG2544d5pDTHSJ2verEoWRyDAtSXwhFVk/DQ4QbCExnkpJ6e', TRUE),
  ('John', 'William', 'Doe', 'j.doe', '$2b$12$8KIeUSaDDBOt.viGQgBr2usYi5vI1H1CWc6PMTaxfBKCOA6s6k9yC', FALSE),
  ('Stephen', NULL, 'King', 's.king', '$2b$12$8KIeUSaDDBOt.viGQgBr2usYi5vI1H1CWc6PMTaxfBKCOA6s6k9yC', FALSE),
  ('Peter', NULL, 'Parker', 'p.parker', '$2b$12$G97QUjRRfCUh3Kz88x6sOu9xJ18L.MnvZ.8PRI5Tw8GJJKEj7HF4i', FALSE);

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
