# safadômetro

> Polyglot implementations of *"safadeza"* calculus.

![Aquele 1%](cover.png)

## Table of Contents

- [The Problem](#the-problem)
- [Motivation](#motivation)
- [Contributing](#contributing)
- [Status](#status)
- [Importance](#importance)
- [License](#license)

## The Problem

Sometimes, you want to know how **safad(o/a)** - a Brazilian Portuguese word for
*naughty* - someone is. A very popular Brazilian musician desbribes himself as
being `99%` an angelical and perfect person; but the other `1%` is naughty - as
you can see [in the lyrics](http://www.vagalume.com.br/marcos-e-belutti/aquele-um-por-cento-part-wesley-safadao.html).

A very clever professor from a state university in Brazil proposed a way o calculing
how *safado* some is based on his/her date of birth.

The *magical formula* needs:

- A `sum` function which takes an `int` a returns the sum of it with all its
previous positive integers, e.g. `sum(5) = 5 + 4 + 3 + 2 + 1`.

- A `safadeza` function which is given by:

  `safadeza = sum(month) + (year / 100) * (50 - day)`

- An `angel` function which is given by:

  `angel = 100 - safadeza`

_The last two functions **MUST** return a float_

So this repo is for writing code that shows others how *safado* they are.

I look forward to seeing what you come up with c:

## Motivation

![Where everything started.](question.jpg)

> The programming question which quotes Wesley Safadão and turned to be a hit
on the web.

It all started when a professor from the Quixadá campus of the Federal University
of Ceará - *Universidade Federal do Ceará (UFC)* - Jefferson de Carvalho called
everyone's attention by using a hit of the *sertanejo* and *forró music* to teach
imperative programming logic to his students.

He was inspired by the song *[Aquele 1%](http://www.vagalume.com.br/marcos-e-belutti/aquele-um-por-cento-part-wesley-safadao.html)*,
which is a success from the duo Marcos & Belutti featuring a very popular
Brazilian musician, Wesley Safadão, to write his logical challenge.

> If you'd like to find out more content about this funny story, [there are](http://g1.globo.com/ceara/noticia/2015/12/professor-cita-wesley-safadao-em-questao-de-logica-e-vira-hit-na-web.html)
[lots](http://revistagalileu.globo.com/blogs/buzz/noticia/2015/12/professor-universitario-usa-wesley-safadao-em-prova-de-programacao.html)
[of](http://gazetaonline.globo.com/_conteudo/2015/12/entretenimento/cultura_e_famosos/3917154-professor-cita-wesley-safadao-e-questao-de-logica-e-bomba-na-web.html)
[good resources](http://www.opovo.com.br/app/divirta-se/2015/12/04/noticiasdivirtase,3544424/professor-da-ufc-elabora-questao-de-prova-fazendo-referencia-a-wesley.shtml)
[on the web](http://www.ibahia.com/detalhe/noticia/professor-cita-wesley-safadao-em-questao-de-prova-e-faz-sucesso/?cHash=74e1cc909aa2269eb81a4401b282d892)
[about it](http://maisregiao.com.br/professor-cita-wesley-safadao-em-questao-de-prova-e-faz-sucesso/).

## Contributing

### Basic Requirements

- You **MUST** be listening to the [music](http://www.vagalume.com.br/marcos-e-belutti/aquele-um-por-cento-part-wesley-safadao.html) while coding.
- If you have to stop listening, close the editor - your time is over!
- Please, don' use tabs. Tabs are from Satan. Use spaces. - actually,
just follow the basic [styleguide](.editorconfig).

### Adding a New Implementation

1. Just think of your own interpretation of the problem.
1. Check if anyone has suggested this before [here](https://github.com/mabrasil/safadometro/pulls).
1. Fork this project!
1. Create a new folder with the name of the language you've used in your solution, e.g. `javascript/`.
1. If the language you want to implement already has an implemention, make `version-*` in the folder!
1. **Put the implementation and the example in separated files**.
1. Tick the language - with `- [x]` in *GitHub Flavored Markdown* - in which
you've implemented [here](STATUS.md).
1. Commit your changes: `git commit -m 'Add JavaScript version'`.
1. Push to the branch: `git push origin master`.
1. Submit a pull request :)

> If you'd like to contribute with a language in which the algorithm has already
been implemented - but you have a *new/special/different/whatever* way of making -,
you can make it! Just create a new folder inside the folder of the language, e.g.
`javascript/browser`, `javascript/node`, `javascript/react` etc.

### Adding a New Language

1. Check if anyone has suggested this before [here](https://github.com/mabrasil/safadometro/pulls).
1. Fork this project!
1. Add the language to the [languages tracking file](STATUS.md) - **don't forget to obey alphabetical order**.
1. Commit your changes: `git commit -m 'Add JavaScript to listed languages'`.
1. Push to the branch: `git push origin master`.
1. Submit a pull request :)

## Status

You can check a list of languages in which the problem's been implemented - or
should've been - [here](STATUS.md).

## Importance

This project may seem useless, but, amazingly, **it is not**.

In about two days it achieved something interesting: a deterministic algorithm said
to be *simple* which when implemented in [40+ languages](STATUS.md), tells us a lot!
E.g.

- It shows us a different *programming logig* from the imperative one we are
probably used to think, such as declarative.

- It allows us to think in different paradigms from the ones we are probably used
to think, e.g. functional and logical ones.

- It allows us to study and analyze *new implementations* in *new langs*, for example:
a taste of [Smalltalk](https://github.com/mabrasil/safadometro/blob/master/smalltalk/WesleySafadao.st)'s pure Object
Orientation - *hooray for Allan Kay, Adele Goldberg et al!* - or a bit of
functional programming in [Haskell](https://github.com/mabrasil/safadometro/blob/master/haskell/WesleySafadao.hs) - and
its beautiful *type system, monads etc.* - or the different *logic* that a
language based on Horn Clauses such as [Prolog](https://github.com/mabrasil/safadometro/blob/master/prolog/WesleySafadao.pl) reveals.

- Or, amazingly, the underground languages that we don't know - after all, getting to
know a [DSL written in JS, which has a different approach to prototype-based OO](https://github.com/mabrasil/safadometro/blob/master/siren/Safadão.siren)
or a [declarative DSL written in TypeScript and LiveScript which has a type system inspired by Idris and aims printers](https://github.com/mabrasil/safadometro/blob/master/capybara/WesleySafadao.capy) is not something you do every day.

So the lesson is: **that kind of initiative shows us that in modern times not only
with *FizzBuzz-alike* implementations you can learn programming logic/languages/
paradigms**.

## License

[safadômetro](https://github.com/mabrasil/safadometro) is distributed under the
MIT License, available in this repository. All contributions are assumed to be also licensed under
the MIT License.

> Wesley Oliveira da Silva, also known as *Wesley Safadão*, is a Brazilian singer, songwriter, producer, and businessman. The *safadômetro* project does not have any rights over anything related to the him; images, logos, and everything related to the him have All Rights Reserved to *Wesley Safadão & Banda Garota Safada*.
