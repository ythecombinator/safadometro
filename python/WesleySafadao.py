def wesley_safadao(day, month, year):
    safadeza = sum(range(1, month+1)) + (year / 100) * (50 - day)
    anjo = 100 - safadeza
    return (safadeza, anjo)


def say_safadeza(day, month, year):
    safadeza, anjo = wesley_safadao(day, month, year)
    print("Você é %.2f%% safado e %.2f%% anjo" % (safadeza, anjo))
