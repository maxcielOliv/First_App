final CreateTable = '''
  CREATE TABLE clientes(
    id INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    telefone CHAR(16) NOT NULL,
    email VARCHAR(150) NOT NULL,
    urlAvatar VARCHAR(300) NOT NULL
  )
''';

final insert = '''
  INSERT INTO clientes(nome, telefone, email, urlAvatar)
  VALUES('Maxciel','093992113930','maxcieloliveira@hotmail.com',
  'https://cdn.pixabay.com/photo/2021/09/07/16/38/man-6604399_960_720.png')

''';
