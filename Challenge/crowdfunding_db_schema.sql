CREATE TABLE "backers" (
	"backer_id" VARCHAR(40) NOT NULL,
	"cf_id" INT NOT NULL,
	"first_name" VARCHAR(50) NOT NULL,
	"last_name" VARCHAR(50) NOT NULL,
	"email" VARCHAR(100) NOT NULL,
	CONSTRAINT "pk_backers" PRIMARY KEY ("backer_id"),
	CONSTRAINT "fk_backers" FOREIGN KEY ("cf_id") REFERENCES "campaign" ("cf_id"));
SELECT * FROM backers;