Imports System.Linq

Public Class Safadao
    Public Dim Ano As Integer
    Public Dim Mes As Integer
    Public Dim Dia As Integer

    Public Dim Safadeza As Double
    Public Dim Anjo As Double

    Sub New(dia As Integer, mes As Integer, ano As Integer)
        Me.Dia = dia
        Me.Mes = mes
        Me.Ano = ano

        Me.Safadeza = CalcSafadeza()
        Me.Anjo = CalcAnjo()
    End Sub

    Private Function SumMonth() As Integer
        return Enumerable.Range(1, Me.Mes).Sum()
    End Function

    Private Function CalcAnjo() As Double
        Return 100 - Me.Safadeza
    End Function

    Private Function CalcSafadeza() As Double
        Return SumMonth() + (Me.Ano / 100d) * (50 - Me.Dia)
    End Function

    Sub SaySafadeza()
        Console.WriteLine(String.Format("Você é {0}% safado e {1}% anjo", Safadeza, Anjo))
    End Sub
End Class
