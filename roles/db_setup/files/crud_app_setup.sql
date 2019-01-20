CREATE TABLE "users" (
	"id" serial NOT NULL,
	"login" varchar(255) NOT NULL UNIQUE,
	"mail" varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL,
	"id_role" integer NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "role" (
	"id" serial NOT NULL,
	"name" VARCHAR(255) NOT NULL UNIQUE,
	CONSTRAINT role_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "users" ADD CONSTRAINT "users_fk0" FOREIGN KEY ("id_role") REFERENCES "role"("id");

insert into role values(1, 'default'), (2, 'administrator');
insert into users values(1, 'admin', 'def@def.def', '$argon2i$v=19$m=102400,t=2,p=8$rrW21joHYAwBoBQixNj73w$fjxFQc0d9iWz9iV6OVUZIA', 2);


