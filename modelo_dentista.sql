create table Paciente (
id_pac int primary key auto_increment,
nome_pac varchar(100),
cpf_pac varchar(30),
telefone_pac int(30),
email_pac varchar(100)
);

create table Dentista (
id_den int primary key auto_increment,
nome_den varchar(100),
cpf_den varchar(30),
especialidade_den varchar(100)
);

create table Agenda (
id_age int primary key auto_increment,
data_age date,
hora time,
tipo_age varchar(100),
id_pac_fk int,
foreign key (id_pac_fk) references Paciente (id_pac),
id_den_fk int,
foreign key (id_den_fk) references Dentista (id_den)
);

create table Consulta (
id_con int primary key auto_increment,
valor_con float,
data_con date,
id_pac_fk int,
foreign key (id_pac_fk) references Paciente (id_pac),
id_den_fk int,
foreign key (id_den_fk) references Dentista (id_den)
);

create table Recebimento (
id_rec int primary key auto_increment,
data_rec date,
tipo_rec varchar(100),
valor_rec float,
id_con_fk int,
foreign key(id_con_fk) references Consulta (id_con)
);

create table Procedimento (
id_pro int primary key auto_increment,
nome_pro varchar(100),
materiais_pro varchar(100),
valor_pro float
);

create table consulta_procedimento (
id_con_fk int,
foreign key(id_con_fk) references Consulta (id_con),
id_pro_fk int,
foreign key(id_pro_fk) references Procedimento (id_pro)
);