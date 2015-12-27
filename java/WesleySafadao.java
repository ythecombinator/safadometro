package br.com.umporcentovagabundo;

public class WesleySafadao {

    private final Integer dia;
    private final Integer mes;
    private final Integer ano;

    private WesleySafadao(Integer dia, Integer mes, Integer ano) {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    private Integer getPercentualSafadeza() {
        Integer safadeza = 0;
        for (Integer atual = mes; atual > 0; atual--)
            safadeza += atual;
        return safadeza + (int) ((ano / 100f) * (50 - dia));
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

    public static WesleySafadao baseadoNaData(
                    Integer dia,
                    Integer mes,
                    Integer ano) {
        return new WesleySafadao(dia, mes, ano);
    }

}
