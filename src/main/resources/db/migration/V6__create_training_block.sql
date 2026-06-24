CREATE TABLE training_block (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id UUID NOT NULL REFERENCES training_session(id),
    block_order INT NOT NULL,
    distance_meters INT NOT NULL,
    repetitions INT NOT NULL DEFAULT 1,
    intensity_type VARCHAR(20) NOT NULL,
    pace_seconds_per_km INT,
    heart_rate_zone VARCHAR(20)
);