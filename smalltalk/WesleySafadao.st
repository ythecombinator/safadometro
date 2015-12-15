Object subclass: WesleySafadao [
  | day month year |
  <comment:
    'Eu sou a classe responsável por ver o quão safado ou anjo você é'>

  new [
    <category: 'constructor'>
    ^ self
  ]
]

WesleySafadao extend [
  day: d month: m year: y [
    <category: 'initialisation'>
    day := d.
    month := m.
    year := y
  ]

  formatFraction: f [
    ^ f asFloat printString
  ]

  safadeza [
    | sum |
    sum := (Interval from: 1 to: month) inject: 0 into: [ :x :y |
      x + y
    ].
    ^ (sum + ((year / 100) * (50 - day)))
  ]

  anjo [
    ^ 100 - self safadeza
  ]

  printResult [
    ('Você é ', (self formatFraction: (self safadeza)), '%') print.
    (' vagabundo e ', (self formatFraction: (self anjo)), '% anjo') printNl
  ]
]
