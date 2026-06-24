CREATE TABLE training_cycle (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    coach_id UUID NOT NULL REFERENCES users(id),
    student_id UUID NOT NULL REFERENCES users(id),
    name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    base_distance_meters INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);