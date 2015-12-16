# safadômetro

> Implementation in Emacs 24 elisp 

## Table of Contents

- [The Problem](#the-problem)
- [License](#license)

## The Problem

Sometimes, you want to know how **safad(o/a)** - a Brazilian Portuguese word for
*naughty* - someone is. A very popular Brazilian musician desbribes himself as
being `99%` an angelical and perfect person; but the other `1%` is naughty.

  [Check it out!](http://www.vagalume.com.br/marcos-e-belutti/aquele-um-por-cento-part-wesley-safadao.html).

A clever professor from a state university in Brazil propposed a calculation of
how *safado* someone is based on their birthdate.

The *magical formula*:

- the `sum` formula takes a `int` argument, and will return the sum of all previously natural numbers. e.g. `sum(5) = 5 + 4 + 3 + 2 + 1`.

- the `safadeza` will calculate:

  `safadeza = sum(month) + (year / 100) * (50 - day)`

- the `angel` formula:

  `angel = 100 - safadeza`

The implemantation should show something like:
- You are %f percent naughty, and %f percent angelical

## License

[safadômetro](https://github.com/mabrasil/safadometro) is distributed under the
MIT License, available in this repository. All contributions are assumed to be also licensed under
the MIT License.

> Wesley Oliveira da Silva, also known as *Wesley Safadão*, is a Brazilian singer, songwriter, producer, and businessman. The *safadômetro* project does not have any rights over anything related to the him; images, logos, and everything related to the him have All Rights Reserved to *Wesley Safadão & Banda Garota Safada*.
