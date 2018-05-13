CREATE TABLE bridges (
  "id" INT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (START WITH 1021 INCREMENT BY 97),
  "from" INT NOT NULL REFERENCES "elements" ("id"),
  "to" INT NOT NULL REFERENCES "elements" ("id"),
  "relation" SMALLINT NOT NULL REFERENCES "relations" ("id"),
  "tags" VARCHAR(300) DEFAULT '',
  "desc" TEXT DEFAULT '',
  "created_at" TIMESTAMP NOT NULL,
  "created_by" INT,
  "updated_at" TIMESTAMP NOT NULL,
  "updated_by" INT,
  "status" SMALLINT DEFAULT 0
);
