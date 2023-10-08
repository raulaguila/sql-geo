---
--- Estrutura da tabela "geo_cities"
---
DROP TABLE IF EXISTS "geo_cities";

CREATE TABLE geo_cities(
    id bigserial NOT NULL,
    created_at timestamptz DEFAULT NULL,
	updated_at timestamptz DEFAULT NULL,
    "name" varchar(60) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    capital BOOLEAN NOT NULL,
    state_id bigint NOT NULL,
    timezone_id bigint NOT NULL,
    /* Keys */
    CONSTRAINT city_state_fk FOREIGN KEY (state_id) REFERENCES geo_states(id),
    CONSTRAINT city_timezone_fk FOREIGN KEY (timezone_id) REFERENCES geo_timezones(id),
    CONSTRAINT city_name_state_unique UNIQUE (name, state_id),
    CONSTRAINT city_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE geo_cities IS 'Cidades';

---
--- Inserindo dados na tabela "geo_cities"
---
INSERT INTO
    "geo_cities"(id, name, latitude, longitude, capital, timezone_id, state_id)
VALUES
    (1, 'Manaus', -3.11866, -60.0212, true, 138, 3);