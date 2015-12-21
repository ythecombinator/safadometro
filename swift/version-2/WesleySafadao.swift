func wesleySafadao(dia dia: Int, mes: Int, ano: Int) -> (safado: Double, anjo: Double) {
    func soma(n: Int) -> Int {
        return (2...n).reduce(1, combine: +)
    }

    let safadeza = Double(soma(mes)) + Double(ano) / 100.0 * Double(50 - dia)
    let anjo = 100.0 - safadeza
    return (safadeza, anjo)
}
