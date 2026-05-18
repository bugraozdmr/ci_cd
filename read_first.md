# Proje Başlat
`dotnet new sln -n CiCdDemo`

# WebAPI kurulum
`dotnet new webapi -n CiCdDemo.Api`

# xUnit Test Projesi
`dotnet new xunit -n CiCdDemo.Tests`

# Projeleri Solution'a ekle
`dotnet sln add CiCdDemo.Api/CiCdDemo.Api.csproj`

`dotnet sln add CiCdDemo.Tests/CiCdDemo.Tests.csproj`

# Test projesine, API projesinin referansını ver
`dotnet add CiCdDemo.Tests/CiCdDemo.Tests.csproj reference CiCdDemo.Api/CiCdDemo.Api.csproj`