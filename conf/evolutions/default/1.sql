# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table card (
  id                            varchar(255) not null,
  name                          varchar(255),
  summary                       varchar(255),
  thumbnail                     varchar(255),
  type                          integer,
  constraint pk_card primary key (id)
);


# --- !Downs

drop table if exists card;

