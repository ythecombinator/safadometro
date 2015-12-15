using System;
using System.Linq;

namespace Safadometro
{
  public class WesleySafadao
  {
    public int day;
    public int month;
    public int year;

    public WesleySafadao(int day, int month, int year)
    {
      this.day = day;
      this.month = month;
      this.year = year;
    }

    public int sumMonth()
    {
      return Enumerable.Range(1, this.month).Sum();
    }

    public float safadeza
    {
      get
      {
        return this.sumMonth() + (this.year / 100f) * (50 - this.day);
      }
    }

    public float anjo
    {
      get
      {
        return 100 - this.safadeza;
      }
    }

    public void saySafadeza()
    {
      Console.WriteLine("Você é {0}% safado e {1}% anjo", this.safadeza.ToString ("0.00"),
                        this.anjo.ToString ("0.00"));
    }
  }
}
