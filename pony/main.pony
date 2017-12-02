actor Main
  new create(env: Env) =>
    let s = Wesley.safadeza(1, 6, 96)
    let a = Wesley.angel(s)
    let message = Wesley.formatMessage(s, a)
    env.out.print(message)

