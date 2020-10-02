create table recurso (
	id serial primary key,
	nome varchar(200),
    idcategoria bigInt references categoria
);
 
create table categoria (
    id serial primary key,
    nome varchar(200)
);

create table usuario (
    id serial primary key,
    nome varchar(300),
    email varchar(200)
    celular varchar(50)
);

create table diatrabalho (
	id serial primary key,    
	dia integer,
    horainicio time,
    horafim time
);

create table locacao (
	id serial primary key,
	idrecurso bigint references recurso,
	datacadastro timestamp,
    datalocacao timestamp,
    datadevolucao timestamp,
    idusuario bigint references usuario,
    situacao integer
)
        -Agendado
        -Locado
        -Devolvido
        -Cancelado
)