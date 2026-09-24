-- Schemat bazy danych dla agencji marketingowej Unseen (PostgreSQL / Supabase / SQLite compatible)

CREATE TABLE IF NOT EXISTS content_pillars (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    target_audience VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS reel_scripts (
    id SERIAL PRIMARY KEY,
    pillar_id INT REFERENCES content_pillars(id),
    title VARCHAR(200) NOT NULL,
    hook_visual TEXT NOT NULL,
    hook_audio TEXT NOT NULL,
    body_script TEXT NOT NULL,
    cta_text TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'draft', -- draft, reviewed, ready_to_render, rendered, published
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS publications (
    id SERIAL PRIMARY KEY,
    script_id INT REFERENCES reel_scripts(id),
    platform VARCHAR(50) NOT NULL, -- instagram, tiktok, youtube_shorts, facebook
    remote_post_id VARCHAR(255),
    views_count INT DEFAULT 0,
    likes_count INT DEFAULT 0,
    comments_count INT DEFAULT 0,
    leads_generated INT DEFAULT 0,
    published_at TIMESTAMP
);

-- Przykładowe filary tematyczne
INSERT INTO content_pillars (name, description, target_audience) VALUES
('Automatyzacja Zamówień i Zdjęć', 'Wprowadzanie zamówień i faktur przez zrobienie zdjęcia aparatem', 'Właściciele hurtowni, sklepów, restauracji, usługodawcy'),
('AI Voice & Obsługa Klienta', 'Odbieranie i dzwonienie przez boty, szybkie odpowiedzi na e-maile', 'Lokalne firmy usługowe, serwisy, gabinety, agencje'),
('Spersonalizowane Narzędzia MŚP', 'Szybkie strony, kalkulatory wycen, pilnowanie procesów bez drogich korpo-systemów', 'Mikro i mali przedsiębiorcy szukający oszczędności czasu');
