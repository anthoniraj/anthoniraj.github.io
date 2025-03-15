-- SQLite
-- Table for storing multiple choice questions
CREATE TABLE questions (
    event_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    question_text TEXT NOT NULL,
    option_1 TEXT,
    option_2 TEXT,
    option_3 TEXT,
    option_4 TEXT,
    option_5 TEXT,
    option_6 TEXT,
    option_7 TEXT,
    PRIMARY KEY (event_id, question_id)
);

-- Table for storing participants' answers
CREATE TABLE answers (
    event_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    option TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (event_id, question_id, ip_address, timestamp)
);

INSERT INTO questions (event_id, question_id, question_text, option_1, option_2, option_3, option_4)
VALUES (1, 1, 'Which statement about AI do you think is MOST true?',
        'AI will replace most jobs in the future.',
        'AI will make life easier and create new jobs.',
        'AI will become smarter than humans soon.',
        'AI is just a tool; humans will always control it.');

INSERT INTO questions (event_id, question_id, question_text, option_1, option_2, option_3, option_4, option_5, option_6)
VALUES (1, 2, 'Which AI-powered tool do you use the most in your daily life?',
        'Voice Assistants (Siri, Alexa, Google Assistant)',
        'AI Chatbots (ChatGPT, Gemini, Deep Seek)',
        'Social Media AI (Instagram, YouTube, Facebook Recommendations)',
        'AI-Powered Search Engines (Google, Copilot)',
        'AI in Shopping (Amazon, Flipkart recommendations)',
        'I don’t use AI');