create database if not exists db_ianes;

use db_ianes;

create table if not exists tbl_escola(
  id int not null auto_increment primary key,
  nome varchar(190)not null,
  razao_social varchar(190),
  cnpj varchar(20)not null,
  unique index (id)
);

create table if not exists tbl_estado(
  id int not null auto_increment primary key,
  sigla varchar(3)not null,
  nome varchar(30)not null,
  unique index (id)
);

create table if not exists tbl_cidade(
  id int not null auto_increment primary key,
  sigla varchar(3)not null,
  nome varchar(50)not null,

  id_estado int not null,
  constraint FK_ESTADO_CIDADE
  foreign key (id_estado)
  references tbl_estado(id),
  unique index (id)
);

create table if not exists tbl_endereco_escola(
  id int not null auto_increment primary key,
  logradouro varchar(100)not null,
  bairro varchar(100)not null,
  cep varchar(20)not null,

  id_escola int not null,
  constraint FK_ESCOLA_ENDERECO_ESCOLA
  foreign key(id_escola)
  references tbl_escola(id),
  
  id_cidade int not null,
  constraint FK_CIDADE_ENDERECO_ESCOLA
  foreign key(id_cidade)
  references tbl_cidade(id),
  
  unique index(id)
);

create table if not exists tbl_tipo_telefone(
  id int not null auto_increment primary key,
  tipo_telefone varchar(10)not null,
  
  unique index(id)
);

create table if not exists tbl_telefone_escola(
  id int not null auto_increment primary key,
  ddd varchar(3)not null,
  numero varchar(20)not null,
  
  id_tipo_telefone int not null,
  constraint FK_TIPO_TELEFONE_TELEFONE_ESCOLE
  foreign key(id_tipo_telefone)
  references tbl_tipo_telefone(id),
  
  id_escola int not null,
  constraint FK_ESCOLA_TELEFONE_ESCOLA
  foreign key(id_escola)
  references tbl_escola(id),
  
  unique index(id)
);

create table if not exists tbl_email_escola(
  id int not null auto_increment primary key,
  email varchar(256)not null,
  
  id_escola int not null,
  constraint FK_ESCOLA_EMAIL_ESCOLA
  foreign key(id_escola)
  references tbl_escola(id),
  
  unique index(id)
);

create table if not exists  tbl_sexo(
  id int not null auto_increment primary key,
  sigla varchar(2)not null,
  nome varchar(20),
  
  unique index(id)
);

create table if not exists tbl_professor(
  id int not null auto_increment primary key,
  nome varchar(190)not null,
  cpf varchar(20)not null,
  rg varchar(20)not null,
  data_nascimento date not null,
  
  id_sexo int not null,
  constraint FK_SEXO_PROFESSOR
  foreign key (id_sexo)
  references tbl_sexo(id),
  
  id_escola int not null,
  constraint FK_ESCOLA_PROFESSOR
  foreign key(id_escola)
  references tbl_escola(id),

  unique index(id)
);

create table if not exists tbl_endereco_professor(
  id int not null auto_increment primary key,
  logradouro varchar(100)not null,
  bairro varchar(100)not null,
  cep varchar(20)not null,
  
  id_cidade int not null,
  constraint FK_CIDADE_ENDERECO_PROFESSOR
  foreign key(id_cidade)
  references tbl_cidade(id),
  
  id_professor int not null,
  constraint FK_PROFESSOR_ENDERECO_PROFESSOR
  foreign key(id_professor)
  references tbl_professor(id),
  
  unique index(id)
);

create table if not exists tbl_telefone_professor(
  id int not null auto_increment primary key,
  ddd varchar(2)not null,
  numero varchar(20),
  
  id_tipo_telefone int not null,
  constraint FK_TIPO_TELEFONE_TELEFONE_PROFESSOR
  foreign key(id_tipo_telefone)
  references tbl_tipo_telefone(id),
  
  id_professor int not null,
  constraint FK_PROFESSOR_TELEFONE_PROFESSOR
  foreign key(id_professor)
  references tbl_professor(id),
  
  unique index(id)
);

create table if not exists tbl_email_professor(
  id int not null auto_increment primary key,
  email varchar(256)not null,
  
  id_professor int not null,
  constraint FK_PROFESSOR_EMAIL_PROFESSOR
  foreign key(id_professor)
  references tbl_professor(id),
  
  unique index(id)
);

create table if not exists tbl_formacao(
  id int not null auto_increment primary key,
  nome varchar(100)not null,
  
  unique index(id)
); 
create table if not exists tbl_formacao_professor(
  id int not null auto_increment primary key,
  
  id_formacao int not null,
  constraint FK_FORMACAO_FORMACAO_PROFESSOR
  foreign key(id_formacao)
  references tbl_formacao(id),
  
  id_professor int not null,
  constraint FK_PROFESSOR_FORMACAO_PROFESSOR
  foreign key(id_professor)
  references tbl_professor(id),
  
  unique index(id)
);

create table if not exists tbl_funcao(
  id int not null auto_increment primary key,
  nome varchar(100)not null,
  descricao text,
  
  unique index(id)
);

create table if not exists tbl_funcionario(
  id int not null auto_increment primary key,
  nome varchar(190)not null,
  cpf varchar(20)not null,
  rg varchar(20)not null,
  data_nascimento date not null,
  email varchar(256),
  
  id_sexo int not null,
  constraint FK_SEXO_FUNCIONARIO
  foreign key(id_sexo)
  references tbl_sexo(id),
  
   id_escola int not null,
  constraint FK_ESCOLA_FUNCIONARIO
  foreign key(id_escola)
  references tbl_escola(id),
  
  
  id_funcao int not null,
  constraint FK_FUNCAO_FUNCIONARIO
  foreign key(id_funcao)
  references tbl_funcao(id),
  
  unique index(id)
);

create table if not exists tbl_telefone_funcionario(
  id int not null auto_increment primary key,
  ddd varchar(3) not null,
  numero varchar(20)not null,
  
  id_tipo_telefone int not null,
  constraint FK_TIPO_TELEFONE_TELEFONE_FUNCIONARIO
  foreign key(id_tipo_telefone)
  references tbl_tipo_telefone (id),
  
  id_funcionario int not null,
  constraint FK_FUNCIONARIO_TELEFONE_FUNCIONARIO
  foreign key(id_funcionario)
  references tbl_funcionario(id),
  
  unique index(id)
);

create table if not exists tbl_endereco_funcionario(
  id int not null auto_increment primary key,
  logradouro varchar(100)not null,
  bairro varchar(100)not null,
  cep varchar(20)not null,
  
  id_cidade int not null,
  constraint FK_CIDADE_EMDERECO_FUNCIONARIO
  foreign key(id_cidade)
  references tbl_cidade(id),
  
  id_funcionario int not null,
  constraint FK_FUNCIONARIO_ENDERECO_FUNCIONARIO
  foreign key(id_funcionario)
  references tbl_funcionario(id),
  
  unique index (id)
);


create table if not exists tbl_aluno(
  id int not null auto_increment primary key,
  nome varchar(190)not null,
  rg varchar(20)not null,
  cpf varchar(20)not null,
  data_nascimento date not null,
  email varchar(256)not null,
  
  id_sexo int not null,
  constraint FK_SEXO_ALUNO
  foreign key(id_sexo)
  references tbl_sexo(id),
  
  id_escola int not null,
  constraint FK_ESCOLA_ALUNO
  foreign key(id_escola)
  references tbl_escola(id),
  
  unique index(id)
  );
  
 create table if not exists tbl_telefone_aluno(
  id int not null auto_increment primary key,
  ddd varchar(3)not null,
  numero varchar(20)not null,
  
  id_tipo_telefone int not null,
  constraint FK_TIPO_TELEFONE_ALUNO_TELEFONE
  foreign key(id_tipo_telefone)
  references tbl_tipo_telefone(id),
  
  id_aluno int not null,
  constraint FK_ALUNO_TELEFONE_ALUNO
  foreign key(id_aluno)
  references tbl_aluno(id),
  
  unique index(id)
 );
 
create table if not exists tbl_tipo_curso(
  id int not null auto_increment primary key,
  nome varchar(190) not null,
  
  unique index(id)
);

create table if not exists tbl_curso(
  id int not null auto_increment primary key,
  nome varchar(100) not null,
  descricao text,
  duracao varchar(50) not null,
  
  id_escola int not null,
  constraint FK_RSCOLA_CURSO
  foreign key(id_escola)
  references tbl_escola(id),
  
  id_tipo_curso int not null,
  constraint FK_TIPO_CURSO_CURSO
  foreign key(id_tipo_curso)
  references tbl_tipo_curso(id),
    
  unique index(id)
);

create table if not exists tbl_professor_curso(
  id int not null auto_increment primary key,
  
  id_curso int not null,
  constraint FK_CURSO_PROFESSOR_CURSO
  foreign key(id_curso)
  references tbl_curso(id),
  
  id_professor int not null,
  constraint FK_PROFESSOR_PROFESSOR_CURSO
  foreign key(id_professor)
  references tbl_professor(id),
  
  unique index(id)
);

create table if not exists tbl_tipo_avaliacao(
  id int not null auto_increment primary key,
  nome varchar(100)not null,
  
  unique index (id)
);

create table if not exists tbl_avaliacao(
  id int not null auto_increment primary key,
  nota  varchar(3) not null,
  
  id_tipo_avaliacao int not null,
  constraint FK_TIPO_AVALIACAO_AVALIACAO
  foreign key(id_tipo_avaliacao)
  references tbl_tipo_avaliacao(id),
  
  unique index (id)
);

create table if not exists tbl_avaliacao_curso(
  id int not null auto_increment primary key,
  
  id_curso int not null,
  constraint FK_CURSO_AVALIACAO_CURSO
  foreign key(id_curso)
  references tbl_curso(id),
  
  id_avaliacao int not null,
  constraint FK_AVALIACAO_AVALIACAO_CURSO
  foreign key(id_avaliacao)
  references tbl_avaliacao(id),
  
  unique index(id)
);

create table if not exists tbl_sala(
  id int not null auto_increment primary key,
  numero int not null,
  andar int,
  
  unique index (id)
);

create table if not exists tbl_turma(
  id int not null auto_increment primary key,
  data_inicio date,
  data_termino date,
  hora_inicio time,
  hora_termino time,
  
  unique index(id)
);

create table if not exists tbl_curso_turma(
  id int not null auto_increment primary key,
  
  id_curso int not null,
  constraint FK_CURSO_CURSO_TURMA
  foreign key (id_curso)
  references tbl_curso(id),
  
  id_turma int not null,
  constraint FK_TURMA_CURSO_TURMA
  foreign key(id_turma)
  references tbl_turma(id),
  
  unique index(id)
);

create table if not exists tbl_aluno_avaliacao(
  id int not null auto_increment primary key,
  
  id_aluno int not null,
  constraint FK_ALUNO_ALUNO_AVALIACAO
  foreign key(id_aluno)
  references tbl_aluno(id),
  
  id_avaliacao int not null,
  constraint FK_AVALIACAO_ALUNO_AVALIACAO
  foreign key(id_avaliacao)
  references tbl_avaliacao(id),
  
  unique index(id)
);

create table if not exists tbl_aluno_curso(
  id int not null auto_increment primary key,
  
  id_aluno int not null,
  constraint FK_ALUNO_ALUNO_CURSO
  foreign key(id_aluno)
  references tbl_aluno(id),
  
  id_curso int not null,
  constraint FK_CURSO_ALUNO_CURSO
  foreign key(id_curso)
  references tbl_curso(id),
  
  unique index(id)
);

create table if not exists tbl_aluno_turma(
  id int not null auto_increment primary key,
  
  id_aluno int not null,
  constraint FK_ALUNO_ALUNO_TURMA
  foreign key(id_aluno)
  references tbl_aluno(id),
  
  id_turma int not null,
  constraint FK_TURMA_ALUNO_TURMA
  foreign key(id_turma)
  references tbl_turma(id),
  
  unique index(id)
);


insert tbl_tipo_curso(nome)
value('FORMAÇÂO INICIAL E CONTINUADA'),
	 ('APRENDIZAGEM INDUSRTIAL'),
     ('CURSOS TÉCNICOS');
     desc tbl_curso;

insert tbl_escola(nome, razao_social, cnpj) 
values('IANES', 'SERVIÇO NASCIONAL DE APRENDIZAGEM INDUSTRIAL', '	03.774.819/0001-02' );   


insert tbl_estado(sigla,nome)
        value('AC','ACRE'), 
			 ('AL', 'ALAGOAS'),
             ('AP', 'AMAPA'),
             ('AM','AMAZONAS'),
             ('BA','BAHIA'),
             ('CE', 'CEARA'),
             ('DF','DISTRITO FEDERAL'),
             ('ES', 'ESPIRITO SANTO'),
             ('GO', 'GOIAS'),
             ('MA', 'MARANHÂO'),
             ('MT', 'MATO GROSSO'),
             ('MS', 'MATO GROSSO DO SUL'),
             ('MG', 'MINAS GERAIS'),
             ('PA','PARA'),
             ('PB','PARAIBA'),
             ('PR','PARANA'),
             ('PE','PERNAMBUCO'),
             ('PI', 'PIAUI'),
             ('RJ','RIO DE JANEIRO'),
             ('RN','RIO GRANDE DO NORTE'),
             ('RS', 'RIO GRANDE DO SUL'),
             ("RO","RONDONIA"),
             ('RR','RORAIMA'),
             ('SC','SANTA CATARINA'),
             ('SP','SÂO PAULO'),
             ('SE','SERGIPE'),
             ('TO','TOCANTINS');
             
insert tbl_cidade(sigla, nome, id_estado)
           values('JAN','JANDIRA',25),
                 ('FMO','FRANCISCO MORATO', 25),
                 ('BAR','BARUERI', 25),
                 ('ITA','ITAPEVI', 25),
                 ('SP','SÂO PAULO', 25),
                 ('CB','CABO FRIO', 19),
                 ('NI', 'NITEROI', 19),
                 ('RJ', 'RIO DE JANEIRO', 19);
 
insert tbl_endereco_escola(logradouro, bairro, cep, id_escola, id_cidade)  
                    values('RUA ELTON SILVA, 905', 'CENTRO', '06600-025', 1, 1);

insert tbl_curso(nome, descricao, duracao, id_escola, id_tipo_curso)
          values('AUTOMAÇÂO HIDRAULICA INDUSTRIAL', 'O Curso de Aperfeiçoamento
                  Profissional Automação Hidráulica Industrial tem por objetivo 
                  o desenvolvimento de conhecimentos e habilidades básicas referentes 
                  aos componentes hidráulicos utilizados em máquinas, equipamentos e
                  dispositivos.', '40 HORAS', 1, 1),
                
                ('CONTROLADORES LOGICOS PROGRAMAVEIS','O Curso de Aperfeiçoamento Profissional
				  Controladores Lógicos Programáveis tem por objetivo o desenvolvimento de competências
                  relativas à programação e configuração de Controladores Lógicos Programáveis.', '60 HORAS', 1, 1),
                
                ('ELETRICA AUTOMOTIVA DE VEICULOS LEVES', 'O curso de Qualificação Profissional de Eletricista
                  Automotivo de Veículos Leves tem por objetivo o desenvolvimento de competências relativas à realização
                  de instalação e manutenção de sistemas carga, partida, sinalização e iluminação em veículos, interpretando
                  esquemas elétricos automotivos e utilizando ferramentas e equipamentos, seguindo normas e procedimentos
                  técnicos, ambientais e de saúde e segurança no trabalho.','160 HORAS', 1, 1),
                  
                 ('ELETRICISTA INSTALADOR','No curso Eletricista Instalador o aluno irá aprender interpretar circuitos
                   e diagramas elétricos, planta baixa de instalações elétricas prediais e a montagem de infraestrutura
                   básica para instalação elétrica predial. Ao final do curso, poderá elaborar croquis, executar e conferir
                   instalações elétricas prediais, de acordo com normas técnicas, ambientais, de qualidade e de segurança e
                   saúde no trabalho.', '160 HORAS', 1, 1),
                  
                  ('ANALISTA DE RECURSOS HUMANOS','O curso de Especialização Profissional Analista de Recursos Humanos tem por
                    objetivo o desenvolvimento de competências referentes ao planejamento, execução e orientação dos processos de
                    recursos humanos e seus subsistemas: recrutamento e seleção, treinamento e desenvolvimento, cargos e salários e
                    benefícios em conformidade com as normas de saúde e segurança no trabalho, de acordo com a legislação e procedimentos
                    internos da empresa.', '80 HORAS', 1, 1); 
           
           select * from tbl_tipo_curso;
            
      insert tbl_curso(nome, descricao, duracao, id_escola, id_tipo_curso)
          values('ELETRICISTA DE MANUTENÇÂO ELETRONICA', 'O curso de Aprendizagem Industrial Eletricista de Manutenção Eletroeletrônica tem
                  por objetivo proporcionar qualificação profissional na instalação e manutenção de sistemas eletroeletrônicos em baixa tensão,
                  de acordo com normas técnicas, de qualidade, de saúde e segurança no trabalho e de meio ambiente.', '1600 horas', 1, 2),
                  
                 ('FERRAMENTEIRO DE MOLDES PARA PLÁSTICOS', 'O Curso de Aprendizagem Industrial Ferramenteiro de Moldes para Plásticos tem por
                   objetivo proporcionar aos aprendizes qualificação profissional na construção, montagem, try out e manutenção de moldes para
                   plásticos, seguindo normas técnicas, de qualidade, de segurança do trabalho e de preservação ambiental.', '1600 Horas', 1, 2),
                  
                 ('MECÂNICO DE MANUTENÇÃO', 'O curso de Aprendizagem Industrial Mecânico de Manutenção tem por objetivo proporcionar qualificação
                   profissional para realizar a manutenção mecânica de máquinas, equipamentos e instalações, tendo em vista o aumento da confiabilidade
                   do processo produtivo, em conformidade às normas e procedimentos de saúde e segurança no trabalho, de meio ambiente e de qualidade.',
                   '1600 horas', 1, 2),
                   
                  ('MECÂNICO DE USINAGEM', 'O Curso de Aprendizagem Industrial Mecânico de Usinagem tem por objetivo proporcionar qualificação profissional 
                    na execução de atividades relacionadas à usinagem de peças em materiais ferrosos e não ferrosos, seguindo normas e procedimentos técnicos,
                    de manutenção, segurança, meio ambiente e qualidade.', '1600 horas', 1, 2);
                    
 insert tbl_curso(nome, descricao, duracao, id_escola, id_tipo_curso)
          values('TÉCNICO EM REDES DE COMPUTADORES','O Curso Técnico de Redes de Computadores tem por objetivo habilitar profissionais para administrar redes
                  de computadores on premise e na nuvem em consonância com as evoluções e necessidades do mercado de trabalho, considerando requisitos técnicos 
                  e normas de qualidade, de meio ambiente e de saúde e segurança no trabalho.', '1125 HORAS', 1, 3),
                  
				 ('TÉCNICO EM ADMINISTRAÇÃO', 'O curso técnico de Administração tem por objetivo habilitar profissionais em realizar e gerir processos administrativos
                   das áreas da indústria e de serviços, utilizando-se de técnicas e tecnologias apropriadas e de padrões éticos, legais, de qualidade e segurança, com
                   responsabilidade social e ambiental.', '1125 horas', 1, 3),
                 
                 ('TÉCNICO EM DESENVOLVIMENTO DE SISTEMAS', 'O Curso Técnico de Desenvolvimento de Sistemas tem por objetivo habilitar profissionais para analisar requisitos
                   funcionais e não funcionais de produtos, desenvolver e testar sistemas de software, de acordo com as especificações do projeto, considerando as boas práticas
                   do mercado de tecnologia da informação e as necessidades do usuário.','1200 HORAS', 1, 3),
                 
                 ('TÉCNICO EM ELETROELETRÔNICA', 'O Curso Técnico de Eletroeletrônica tem por objetivo habilitar profissionais para desenvolver projetos de sistemas
                 eletroeletrônicos de baixa tensão e atuar nos processos de instalação e manutenção de sistemas eletroeletrônicos, considerando a legislação, normas, padrões
                 e requisitos técnicos de qualidade, saúde, segurança e de meio ambiente.', '1200 HORAS', 1, 3);
                 
insert tbl_tipo_telefone(tipo_telefone)
				  values('FIXO'),('CELULAR');
			
              
insert tbl_telefone_escola(ddd, numero, id_tipo_telefone, id_escola)
                    values('11',' 4772-4700', 2, 1);
					
insert tbl_email_escola(email, id_escola)
          values('ianes.jandira@gmail.com', 1);     
     
insert tbl_sexo(sigla, nome)
       values('F', 'FEMININO'),('M', 'MASCULINO');
      
select * from tbl_professor;      
       
insert tbl_professor(nome, cpf, rg, data_nascimento, id_sexo, id_escola)
              values('Enrico Kaique Rodrigues', '773.176.747-70', '16.476.068-4', '1997-04-09', 2, 1),
                    ('Renan Augusto Thomas Nascimento', '285.619.311-08', '46.143.339-4','1949-06-12', 2, 1),
                    ('Rosângela Tereza Laís Vieira', '598.663.879-41', '32.438.445-2', '1969-04-23', 1, 1),
                    ('Alessandra Regina Alves', '390.755.710-70', '35.761.449-5','1977-01-16', 1, 1),
                    ('Elias Bruno da Rocha','171.034.088-66','13.045.107-1','1963-03-24', 2, 1),
                    ('Hadassa Helena da Costa', '033.277.926-23', '46.390.386-9', '1967-11-24', 1, 1),
                    ('Benício Giovanni Martin da Mata', '021.656.764-52', '28.324.150-0', '1976-10-29', 2, 1),
                    ('Cláudia Alícia Yasmin Viana', '462.759.068-71', '50.983.118-7', '1968-02-04', 1, 1),
                    ('Martin Tiago Cauê Pires', '844.923.966-40', '20.353.665-4', '1963-09-20', 2, 1),
                    ('Manuela Sophia Aragão', '105.814.326-30', '38.391.799-2', '1953-07-10', 1, 1);

insert tbl_email_professor(email, id_professor)
                     values('enricokaiquerodrigues@ianes.com', 1),
						   ('renanaugusto@ianes.com', 2),
                           ('rosângelatereza@ianes.com', 3),
                           ('alessandraregina@ianes.com', 4),
                           ('eliasbruno@ianes.com',5),
                           ('HadassaHelena@ianes.com', 6),
                           ('BenícioGiovanni@ianes.com',7),
                           ('CláudiaAlícia@ianes.com', 8),
                           ('MartinTiagoCauê@ianes.com',9),
                           ('ManuelaSophia@ianes.com', 10);
                        
insert tbl_telefone_professor(ddd, numero, id_tipo_telefone, id_professor)
                       values('11', '99277-8029', 2, 1),
                             ('11', '3551-4255', 1, 2),
                             ('11', '2756-7524', 1, 3),
                             ('11', '99530-8522', 2, 4),
                             ('11', '98610-0262', 2, 5),
                             ('11', '3882-6998', 1, 6),
                             ('11', '3636-5184', 1, 7),
                             ('11', '99747-8278', 2, 8),
                             ('11', '99249-8113', 2, 9),
                             ('11', '2503-3868', 1, 10);
                             
        
insert tbl_formacao(nome)
             values('ENGENHARIA DE REDES'),
				   ('GESTÂO DE TI'),
                   ('GESTÂO EM ADMINISTRAÇÂO'),
                   ('ANALISTA E DESENVOLVIMENTO DE SISTEMAS'),
                   ('GETÂO EM RH'),
                   ('ENGENHARIA ELETRICA'),
                   ('ENGENHARIA MECANICA'),
                   ('AUTOMAÇÂO INDUSTRIAL'),
				   ('NUTRIÇAO'),
                   ('MECANICA AUTOMOTIVA');


insert tbl_endereco_professor(logradouro, bairro, cep, id_cidade, id_professor)                  
                       values('RUA MONTE CARLO, 327', 'JARDIM SÃO JOÃO', '06634-030', 1, 1),
							 ('RUA TIBAGI, 936', 'VILA SÃO SILVESTRE', '06417-130', 2, 2),
                             ('TRAVESSA PARANANCITY, 547', 'PARQUE PAULISTANO', '08080-366', 4, 3),
                             ('RUA FRANCISCA TEIXEIRA CARVALHO, 819','NOVA ITAPEVI', '06694-170', 3, 4),
                             ('ALAMEDA PINTASSILGO, 137', 'TRANSURB', '06670-370', 3, 5),
                             ('RUA PEDRO ALEXANDRINO DE OLIVEIRA, 446', 'CONJUNTO HABITACIONAL JOVA RURAL', '02281-212', 4, 6),
                             ('RUA ANTONIO LOPES TEMPOS, 474', 'JARDIM GABRIELA I', '06624-370', 1, 7),
                             ('RUA ITAPITANGA, 699', 'SITIO PEDRA BONITA', '06620-295', 1, 8),
                             ('RUA MARIA RODRIGUES MACHADO, 202', 'JARDIM NOSSA SENHORA DE FATIMA', '06624-070', 1, 9),
                             ('RUA CAJAMAR, 738', 'PARQUE SANTA TEREZA', '06622-290', 1, 10);


insert tbl_formacao_professor(id_formacao, id_professor)
							values(1,2),
                                  (2,3),
                                  (3,1),
                                  (4,6),
                                  (5,5),
                                  (1,4),
                                  (6,10),
                                  (7,9),
                                  (8,8),
                                  (10,7);
                                  
insert tbl_funcao(nome, descricao)
		   values('AUXILIAR DE LIMPEZA', null),
				 ('AUXILIAR DE MANUNTENÇÃO', null),
                 ('AUXILIAR ADMINISTRATIVO', null),
                 ('CONTROLADOR DE ACESSO', null);
            
insert tbl_funcionario(nome, cpf, rg, data_nascimento, email, id_escola, id_sexo, id_funcao)                 
                values('Victor Marcelo Barbosa', '893.566.258-59', '38.085.478-8', '1998-11-13', 'victor_barbosa@tatyanecolo.com', 1, 2, 4),
                      ('Natália Emily Sophie Porto', '363.696.498-48', '34.126.139-7', '1990-01-04', 'natalia_porto@aprimor.com', 1, 1, 3),
                      ('Carolina Elisa Costa', '319.967.228-08', '35.683.557-1', '1996-01-02', 'carolina.elisa.costa@gruposandino.com.', 1, 1, 	1),
                      ('Marcos Vinicius Mário Jorge Ramos', '070.627.848-85', '25.457.294-7', '1984-06-17', 'marcosviniciusramos@mundivox.com.br', 1, 2, 2),
                      ('Raquel Márcia da Mota', '656.121.128-66', '43.753.719-5', '1987-11-08', 'raquel_damota@cppcoder.com', 1, 1, 1);
  
  select * from tbl_funcionario;
  
  select * from tbl_cidade;
  
  insert tbl_endereco_funcionario(logradouro, bairro, cep, id_cidade, id_funcionario)
                           values('Alameda Cipreste, 326', 'Altos de São Fernando', '06630-090', 1, 1),
								 ('Estrada Estadual Barueri-Itapevi, 1203', 'Jardim Nossa Senhora de Fátima', '06624-000', 1, 2),
                                 ('Rua Iguaçu, 899', 'Jardim Nossa Senhora de Fátima', '06624-050', 1, 3),
                                 ('Rua Visconde de Taunay, 514', 'Jardim das Margaridas', '06622-100', 1, 4),
                                 ('Rua Antônio Lopes, 828', 'Jardim Alvorada', '06612-090', 1, 5);

insert tbl_telefone_funcionario(ddd, numero, id_tipo_telefone, id_funcionario)
					values('11', '2523-2208', 1, 1),
						  ('11', '99534-0044', 2, 2),
                          ('11', '98961-4328', 2, 3),
                          ('11', '4488-6692', 1, 4),
                          ('11', '99155-4945', 2, 4);
                  
select * from tbl_aluno;       

insert tbl_aluno(nome, cpf, rg, data_nascimento, email, id_sexo, id_escola)                          
		  values('Luzia Jennifer Souza', '589.040.178-58', '25.154.312-2', '2004-06-01', 'luzia.jennifer.souza@estadao.com.br', 1, 1),
				('Rafael Vinicius Moraes', '699.688.908-12', '49.422.481-2', '2003-10-25', 'rafael_vinicius_moraes@marktechbr.com.br', 2, 1),
                ('Maitê Vitória Daiane Souza', '332.942.798-17', '28.307.851-0', '2000-09-12', 'maite.vitoria.souza@eldor.it', 1, 1),
                ('Aparecida Sônia Emilly Alves', '672.334.648-39', '40.270.822-2', '1999-03-26', 'aparecida_sonia_alves@band.com', 1, 1),
                ('Tiago Renato Duarte', '560.504.478-88', '18.106.573-3', '2002-11-04', 'tiagorenatoduarte@ativa.inf.br', 2, 1),
                ('Henrique Nathan Cardoso', '420.925.178-05', '42.672.998-5', '2003-10-30', 'henrique_cardoso@selaz.com.br', 2, 1),
                ('Carla Sônia Melo', '239.933.678-04', '50.548.605-2', '1999-10-01', 'carlasoniamelo@victorseguros.com.br', 1, 1),
                ('Thomas Vinicius Benício Viana', '943.867.898-04', '17.518.213-9', '2002-04-02', 'thomas.vinicius.viana@andressamelo.com.br', 2, 1),
                ('Lorena Stella Carolina Dias', '229.915.218-05', '49.429.714-1', '2003-09-12', 'lorena_stella_dias@wizardsjc.com.br', 1, 1),
                ('Francisca Natália Silva', '750.864.148-57', '12.220.992-8', '2004-01-20', 'francisca.natalia.silva@abareias.com.br', 1, 1);
             
insert tbl_aluno(nome, cpf, rg, data_nascimento, email, id_sexo, id_escola)
          values('Bruno Ruan Mário Bernardes', '116.793.538-10', '13.727.114-1', '1999-01-07', 'bruno-bernardes85@zf-lenksysteme.com', 2, 1),
				('Tomás Manoel Tiago Almada', '080.306.338-58', '23.823.732-1', '2005-10-02', 'tomasmanoelalmada@lubeka.com.br', 2, 1),
                ('Helena Lívia Laís Almada', '372.533.378-59', '50.414.724-9', '2003-10-20', 'helenaliviaalmada@salvagninigroup.com', 1, 1),
                ('Rosângela Elisa Marina Pinto', '711.156.838-96', '22.578.426-9', '2000-09-10', 'rosangelaelisapinto@hubersuhner.com', 1, 1),
                ('Caleb Antonio Nathan Campos', '641.427.888-25', '43.632.185-3', '2003-01-08', 'caleb_campos@paae.com.br', 2, 1),
                ('Luana Stella Simone Nunes', '456.311.688-20', '42.563.691-4', '2005-02-09', 'luana-nunes75@unitau.br', 1, 1),
                ('Samuel Márcio Rodrigo Corte Real', '647.476.158-06', '27.971.685-0', '2004-09-12', 'samuelmarciocortereal@agrosb.com.br', 2, 1),
                ('Nicolas Pedro Henrique Pereira', '967.013.248-78', '38.415.681-2', '2001-08-12', 'nicolaspedropereira@danzarin.com.br', 2, 1),
                ('Nicole Elisa Aparecida Fernandes', '096.335.918-56', '25.995.037-3', '1999-10-20', 'nicoleelisafernandes@runup.com.br', 1, 1),
                ('Priscila Camila da Cruz', '531.597.178-36', '19.082.453-0', '1998-10-10', 'priscila_dacruz@maptec.com.br', 1, 1);
                
insert tbl_aluno(nome, cpf, rg, data_nascimento, email, id_sexo, id_escola)
       values('Daniela Isabelle Stella Lima', '340.995.578-04', '29.824.168-7', '1999-10-20', 'daniela_isabelle_lima@findout.com.br', 1, 1),
             ('Anthony Pietro Miguel Peixoto', '639.426.498-96', '36.583.351-4', '2001-09-01', 'anthonypietropeixoto@danielstrauch.com', 2, 1),
             ('Sara Vanessa Eduarda Campos', '645.434.818-01', '30.755.170-2', '2003-09-10', 'saravanessacampos@coreval.com.br', 1, 1),
             ('Mirella Silvana da Mota', '207.413.658-71', '22.925.220-5', '2006-01-28', 'mirella-damota76@pop.com.br', 1, 1),
             ('Renan Murilo Antonio Cavalcanti', '906.333.078-23', '20.818.500-8', '2004-10-31', 'renan_cavalcanti@iaru.com.br', 2, 1),
             ('Marcelo Danilo Juan Corte Real', '553.072.328-45', '28.613.138-9', '2004-06-10', 'marcelo-cortereal78@sociedadeweb.com.br', 2, 1),
             ('Lorena Elaine Duarte', '695.100.008-50','34.720.929-4', '1999-10-10', 'lorenaelaineduarte@prifree.fr', 1, 1),
             ('Olivia Amanda da Paz', '935.939.628-10', '46.011.555-8', '2003-09-10', 'olivia.amanda.dapaz@johndeere.com', 1, 1),
             ('Lorenzo Levi Benedito da Luz', '953.888.238-57', '48.590.660-0', '2001-10-09', 'lorenzolevidaluz@zootecnista.com.br', 2, 1),
             ('Andreia Débora Novaes', '685.072.108-99', '40.294.327-2', '1999-01-04', 'andreia_novaes@henrimar.com.br', 1, 1);
             
insert tbl_sala(numero, andar)
		values('01', '00'),
			  ('02', '00'),
              ('03', '00'),
              ('04', '00'),
              ('05', '00'),
              ('06', '01'),
              ('07', '01'),
              ('08', '01'),
              ('09', '01'),
              ('10', '01'),
              ('11', '02'),
              ('12', '02'),
              ('13', '02'),
              ('14', '02'),
              ('15', '02');
              
insert tbl_tipo_avaliacao(nome)
				values('Prova'),
                      ('Projeto');
            select * from tbl_avaliacao;          
insert tbl_avaliacao(nota, id_tipo_avaliacao)                      
               values('1,0', 1),
					 ('2,0', 1),
                     ('3,0', 1),
                     ('4,0', 1),
                     ('5,0', 1),
                     ('6,0', 1),
                     ('7,0', 1),
                     ('8,0', 1),
                     ('9,0', 1),
                     ('10,0', 1),
                     ('0,0', 1);
                     
insert tbl_avaliacao(nota, id_tipo_avaliacao)                      
               values('1,0', 2),
					 ('2,0', 2),
                     ('3,0', 2),
                     ('4,0', 2),
                     ('5,0', 2),
                     ('6,0', 2),
                     ('7,0', 2),
                     ('8,0', 2),
                     ('9,0', 2),
                     ('10,0', 2),
                     ('0,0', 2);                     