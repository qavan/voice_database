CREATE TABLE dbo.ui_d_cd_tasks (
	id integer NOT NULL,
	c_address text NOT NULL,
	c_client_id text,
	d_prev_date date,
	n_prev_value numeric(12,6),
	d_current_date date NOT NULL,
	n_current_value numeric(12,6) NOT NULL,
	b_done boolean NOT NULL
);

ALTER TABLE dbo.ui_d_cd_tasks ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
	SEQUENCE NAME dbo.ui_d_cd_tasks_id_seq
	START WITH 1
	INCREMENT BY 1
	NO MAXVALUE
	NO MINVALUE
	CACHE 1
);

ALTER TABLE dbo.ui_d_cd_tasks OWNER TO postgres;

--------------------------------------------------------------------------------

ALTER TABLE dbo.ui_d_cd_tasks
	ADD CONSTRAINT ui_d_cd_tasks_pkey PRIMARY KEY (id);
