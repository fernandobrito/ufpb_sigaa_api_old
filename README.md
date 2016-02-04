# UFPB SIGAA API

**Pet-project. Use at your own risk. Low test coverage ratio.**

Web service to expose some data manually parsed from the academic web system (SIGAA) used on my home university (UFPB). 

## Technologies

Developed using Sinatra. Hosted on Heroku.

## End points

| Method |          URL          |         Description         |
|:------:|:---------------------:|:---------------------------:|
|   GET  |     /api/curricula    | Get all curricula available |
|   GET  | /api/curricula/\<code\> |  Get curriculum with \<code\> |

### Curriculum

```
{ 
  'code': '160064',
  'program': 'CIÊNCIAS DA COMPUTAÇÃO (BACHARELADO)/CI - João Pessoa - MT',
  'faculty': 'Centro de Informática',
  'semesters': 8
}
```

## Features

## To-do
