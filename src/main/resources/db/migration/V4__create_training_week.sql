CREATE TABLE training_week (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    cycle_id UUID NOT NULL REFERENCES training_cycle(id),
    week_number INT NOT NULL,
    start_date DATE NOT NULL
);