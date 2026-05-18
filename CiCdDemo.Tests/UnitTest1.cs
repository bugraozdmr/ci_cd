using Xunit;

namespace CiCdDemo.Tests;

public class BasicTests
{
    [Fact]
    public void Test_Matematik_Dogru_Calisiyor_Mu()
    {
        int a = 5;
        int b = 5;

        int sonuc = a + b;

        Assert.Equal(10, sonuc); // Eğer sonuç 10 değilse test patlar (CI/CD durur)
    }
}