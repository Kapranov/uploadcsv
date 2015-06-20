CREATE TABLE "regions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "iso" varchar, "country" varchar, "name" varchar, "region1" varchar, "region2" varchar, "iso2" varchar, "fips" varchar, "hasc" varchar, "stat" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('1');

