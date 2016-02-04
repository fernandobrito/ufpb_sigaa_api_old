# UFPB SIGAA API

**Pet-project. Use at your own risk. Low test coverage ratio.**

Web service to expose some data manually parsed from the academic web system (SIGAA) used on my home university (UFPB). 

## Technologies

Developed using Sinatra. Hosted on Heroku.

## End points

| Method |          URL          |         Description         |
|:------:|:---------------------:|:---------------------------:|
|   GET  |     /api/curricula    | Get all curricula available (short) |
|   GET  | /api/curricula/\<code\> |  Get curriculum with \<code\> (full) |

### Curriculum

#### Short
Returned when listing all curricula.
```
{ 
  'code': '160064',
  'program': 'CIÊNCIAS DA COMPUTAÇÃO (BACHARELADO)/CI - João Pessoa - MT',
  'faculty': 'Centro de Informática',
  'semesters': 8
}
```

#### Full
Returned when viewing a specific curriculum. Same as short, plus courses and additional data.
```
{ 
  (same as short),
  'courses': [
    (see courses)
  ]
}
```

### Course

```
{
  'code': '1107147',
  'name': 'LINGUAGEM PROGRAMACAO I',
  'category': 'Básica Profissional',
  'semester': 2,
  'workload': '60h(4cr) aula 0h(0cr) lab.',
  'type': 'DISCIPLINA',
  'prerequesites': [
    (other courses)
  ]
}
```

## Features

## Development

### Vocabulary (pt-BR)

* Um curso (exemplo: Bacharelado em Ciência da Computação) é chamado de 'Program';
* Um curso pode ter mais de uma estrutura curricular (mas somente uma vigente). Uma estrutura curricular é chamada de 'Curriculum'. Note que o plural é 'Curricula'; 
* Uma disciplina é chamada de 'Course';
* Um centro ao qual o curso pertence é chamado de 'Faculty'.

### To-do
