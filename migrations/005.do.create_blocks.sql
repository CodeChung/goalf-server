CREATE TABLE blocks (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    user_id INTEGER
        REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    goal_id INTEGER
        REFERENCES goals(id) ON DELETE CASCADE,
    reminder_id INTEGER
        REFERENCES reminders(id) ON DELETE CASCADE,    
    date DATE DEFAULT now(),
    type TEXT NOT NULL,
    value jsonb NOT NULL,
    dimension TEXT NOT NULL,
    index INTEGER NOT NULL
)