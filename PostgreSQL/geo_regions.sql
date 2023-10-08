---
--- Estrutura da tabela "geo_regions"
---
DROP TABLE IF EXISTS "geo_regions";

CREATE TABLE geo_regions(
    id bigserial NOT NULL,
    created_at timestamptz DEFAULT NULL,
	updated_at timestamptz DEFAULT NULL,
    "name" varchar(60) NOT NULL,
    /* Keys */
    CONSTRAINT region_name_unique UNIQUE (name),
    CONSTRAINT region_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE geo_regions IS 'Regiões';

---
--- Inserindo dados na tabela "geo_regions"
---
INSERT INTO
    "geo_regions"(id, name)
VALUES
    (1, 'North'),
    (2, 'Northeast'),
    (3, 'Southeast'),
    (4, 'South'),
    (5, 'Midwest');