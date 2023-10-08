---
--- Estrutura da tabela "geo_states"
---
DROP TABLE IF EXISTS "geo_states";

CREATE TABLE geo_states(
    id bigserial NOT NULL,
    created_at timestamptz DEFAULT NULL,
	updated_at timestamptz DEFAULT NULL,
    "name" varchar(60) NOT NULL,
    acronym varchar(2),
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    country_id bigint NOT NULL,
    region_id bigint NOT NULL,
    /* Keys */
    CONSTRAINT state_country_fk FOREIGN KEY (country_id) REFERENCES geo_countries(id),
    CONSTRAINT state_region_fk FOREIGN KEY (region_id) REFERENCES geo_regions(id),
    CONSTRAINT state_name_unique UNIQUE (name),
    CONSTRAINT state_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE geo_states IS 'Estados e Províncias';

COMMENT ON COLUMN geo_states.acronym IS 'ISO 3166-1 Alpha2';

---
--- Inserindo dados na tabela "geo_states"
---
INSERT INTO
    "geo_states"(id, name, acronym, latitude, longitude, country_id, region_id)
VALUES
    (1, 'Acre', 'AC', -8.77, -70.55, 30, 1),
    (2, 'Alagoas', 'AL', -9.71, -35.73, 30, 2),
    (3, 'Amazonas', 'AM', -3.07, -61.66, 30, 1),
    (4, 'Amapá', 'AP', 1.41, -51.77, 30, 1),
    (5, 'Bahia', 'BA', -12.96, -38.51, 30, 2),
    (6, 'Ceará', 'CE', -3.71, -38.54, 30, 2),
    (7, 'Distrito Federal', 'DF', -15.83, -47.86, 30, 5),
    (8, 'Espírito Santo', 'ES', -19.19, -40.34, 30, 3),
    (9, 'Goiás', 'GO', -16.64, -49.31, 30, 5),
    (10, 'Maranhão', 'MA', -2.55, -44.30, 30, 2),
    (11, 'Minas Gerais', 'MG', -18.10, -44.38, 30, 3),
    (12, 'Mato Grosso do Sul', 'MS', -20.51, -54.54, 30, 5),
    (13, 'Mato Grosso', 'MT', -12.64, -55.42, 30, 5),
    (14, 'Pará', 'PA', -5.53, -52.29, 30, 1),
    (15, 'Paraíba', 'PB', -7.06, -35.55, 30, 2),
    (16, 'Pernanbuco', 'PE', -8.28, -35.07, 30, 2),
    (17, 'Piauí', 'PI', -8.28, -43.68, 30, 2),
    (18, 'Paraná', 'PR', -24.89, -51.55, 30, 4),
    (19, 'Rio de Janeiro', 'RJ', -22.84, -43.15, 30, 3),
    (20, 'Rio Grande do Norte', 'RN', -5.22, -36.52, 30, 2),
    (21, 'Rôndonia', 'RO', -11.22, -62.80, 30, 1),
    (22, 'Roraima', 'RR', 1.89, -61.22, 30, 1),
    (23, 'Rio Grande do Sul', 'RS', -30.01, -51.22, 30, 4),
    (24, 'Santa Catarina', 'SC', -27.33, -49.44, 30, 4),
    (25, 'Sergipe', 'SE', -10.90, -37.07, 30, 2),
    (26, 'São Paulo', 'SP', -23.55, -46.64, 30, 2),
    (27, 'Tocantins', 'TO', -10.25, -48.25, 30, 1);