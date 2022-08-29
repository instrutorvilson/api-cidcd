create table compromisso (id  bigserial not null, data date, local varchar(255), contato_id int8, primary key (id));
create table contato (id  bigserial not null, created_at TIMESTAMP WITHOUT TIME ZONE, email varchar(50) not null, fone varchar(14), nome varchar(40) not null, update_at TIMESTAMP WITHOUT TIME ZONE, primary key (id));
create table pessoa (id  bigserial not null, nome varchar(255), primary key (id));
alter table compromisso add constraint FKaf1da55rexmmsomxacd9d2qu5 foreign key (contato_id) references contato;
insert into contato(nome, email, fone)values('maria','maria@gmail.com','1234-5678');
