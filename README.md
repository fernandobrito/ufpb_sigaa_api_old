# UFPB SIGAA API

**Pet-project. Use at your own risk. Low test coverage ratio.**

Web service to expose some data manually parsed from the academic web system (SIGAA) used on my home university (UFPB). 

http://ufpb-sigaa-api.herokuapp.com/

## Technologies

Developed using Sinatra. Hosted on Heroku. Data is stored in JSON, which were parsed from `sigaa_parser` (source not available yet).

## End points

| Method |          URL          |         Description         |
|:------:|:---------------------:|:---------------------------:|
|   GET  |     /api/curricula    | Get all curricula available (short) |
|   GET  | /api/curricula/\<id\> |  Get curriculum with \<id\> (full) |

### Curriculum

#### Short description
Returned (in an array) when listing all curricula.
```
{
  "id": "160064",
  "program": "CIÊNCIAS DA COMPUTAÇÃO (BACHARELADO)/CI - João Pessoa - MT",
  "faculty": "CENTRO DE INFORMÁTICA (CI)",
  "semesters": 8
}
```

#### Full description
Returned when viewing a specific curriculum. Same as short, plus courses and additional data. 
```
{ 
  (same as short),
  "courses": [
    (see courses)
  ]
}
```

### Course

At the moment, a course exists only in the context of a curriculum, so it has a semester and only the prerequisites of this curriculum. In the future we might want to create a more abstract course, holding the prerequisites for all curricula in which this course is present.

Courses which are optional to this specific curriculum have `'semester': 0`.

```
{
  "id": "1107147",
  "name": "LINGUAGEM PROGRAMACAO I",
  "category": "Básica Profissional",
  "semester": 2,
  "workload": "60h(4cr) aula 0h(0cr) lab.",
  "type": "DISCIPLINA",
  "prerequisites": ["1107132", "1105421"]
}
```

## Features

## Development

App is automaticly deployed to Heroku using branch `deploy`. Please do not break the build ;)

### Vocabulary (pt-BR)

* Um curso (exemplo: Bacharelado em Ciência da Computação) é chamado de 'Program';
* Um curso pode ter mais de uma estrutura curricular (mas somente uma vigente). Uma estrutura curricular é chamada de 'Curriculum'. Note que o plural é 'Curricula'; 
* Uma disciplina é chamada de 'Course';
* Um centro ao qual o curso pertence é chamado de 'Faculty'.

### To-do
* Add CI integration (and activate it on Heroku)
