CREATE TABLE coach_student (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    coach_id UUID NOT NULL REFERENCES users(id),
    student_id UUID NOT NULL REFERENCES users(id),
    linked_at TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_coach_student UNIQUE (coach_id, student_id)
);