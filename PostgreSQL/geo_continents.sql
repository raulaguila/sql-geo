---
--- Estrutura da tabela "geo_continents"
---
DROP TABLE IF EXISTS "geo_continents";

CREATE TABLE geo_continents(
    id bigserial NOT NULL,
    created_at timestamptz DEFAULT NULL,
    updated_at timestamptz DEFAULT NULL,
    "name" varchar(60) NOT NULL,
    /* Keys */
    CONSTRAINT continent_name_unique UNIQUE (name),
    CONSTRAINT continent_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE geo_continents IS 'Continentes';

---
--- Inserindo dados na tabela "geo_continents"
---
INSERT INTO
    "geo_continents"(id, name)
VALUES
    (1, 'Africa'),
    (2, 'Antarctica'),
    (3, 'Asia'),
    (4, 'Central America'),
    (5, 'Europe'),
    (6, 'North America'),
    (7, 'Oceania'),
    (8, 'South America');

ALTER SEQUENCE geo_continents_id_seq RESTART WITH 9;