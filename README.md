# safadômetro

Sometimes, you want to know how **safad(o/a)** - a Brazilian Portuguese word for
*naughty* - someone is. A very popular Brazilian musician desbribes himself as
being `99%` an angelical and perfect person; but the other `1%` is naughty - as
you can see [in the lyrics](http://www.vagalume.com.br/marcos-e-belutti/aquele-um-por-cento-part-wesley-safadao.html).

A very clever professor from a state university in Brazil proposed a way o calculing
how *safado* some is based on his/her date of birth.

The *magical formula* needs:

- A `sum` function which takes an `int` a returns the sum of it with all its
previous positive integers, e.g. `sum(5)= 5+4+3+2+1`.

- A `safadeza` function which is given by:

  `safadeza = sum(month) + (year / 100) * (50 - day)`

- An `angel` function which is given by:

  `angel = 100 - safadeza`

So this repo is for writing code that shows others how *safado* they are.

I look forward to seeing what you come up with c:

