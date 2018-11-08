func sum(v: Int) -> Int {
    return (0...v).reduce(0, +)
}

func safadao(day: Int, month: Int, year: Int) -> (anjo: Double, safado: Double) {
    let s = sum(v: month)

    let safado = Double(s) + (Double(year)/100) * (50 - Double(day))
    let anjo = 100 - safado

    return (anjo: anjo, safado: safado)
}
