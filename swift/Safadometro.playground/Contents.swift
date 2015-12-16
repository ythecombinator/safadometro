func sum(v:Int) -> Int {
    var s = 0
    for var i = v; i > 0; i-- {
        s += i;
    }
    return s
}

func safadao(day:Int, month:Int, year:Int) -> (anjo:Float, safado:Float) {
    var safado:Float
    var anjo:Float
    
    let s = sum(month)
    
    safado = Float(s) + (Float(year) / 100) * (50 - Float(day))
    anjo = 100 - safado
    
    
    return (anjo:anjo, safado:safado)
}


let resultado = safadao(7, month: 8, year: 95)
print(resultado.safado)
print(resultado.anjo)
