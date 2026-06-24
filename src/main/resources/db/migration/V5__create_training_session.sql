CREATE TABLE training_session (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    week_id UUID NOT NULL REFERENCES training_week(id),
    day_of_week VARCHAR(15) NOT NULL,
    session_type VARCHAR(20) NOT NULL,
    total_distance_meters INT,
    status VARCHAR(20) NOT NULL DEFAULT 'PENDING'
);