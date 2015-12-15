package br.com.umporcentovagabundo;

public class WesleySafadao {

    private final Integer day;
    private final Integer month;
    private final Integer year;

    public WesleySafadao(Integer day, Integer month, Integer year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    private Integer getPercentualSafadeza() {
        Integer safadeza = 0;
        for (Integer current = month; current > 0; current--)
            safadeza += current;
        return safadeza + ((year / 100) * (50 - day));
    }

    private Integer getPercentualAnjo() {
        return 100 - getPercentualSafadeza();
    }

    public void dizQualPercentualSafadezaEAnjo() {
        System.out.println(
            String.format(
                "Você é %1$s%% safado e %2$s%% anjo",
                getPercentualSafadeza(),
                getPercentualAnjo()));
    }

}
