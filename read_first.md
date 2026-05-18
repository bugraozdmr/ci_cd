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

# Bir repo oluştur ve commitle
```
git init
git add .
git commit -m "İlk commit: API ve Test projesi oluşturuldu"
git branch -M main
git remote add origin https://github.com/bugraozdmr/ci_cd.git
git push -u origin main
```

> işine yarar `dotnet new gitignore`

#  ci.yaml

Kökte `.github/workflows` altına konulur bu dosya
*Tüm bu işlemler saniyeler içinde olup bitecek ve sonra o sunucu yok edilecek.*

```
git add .
git commit -m "feat: CI pipeline eklendi"
git push origin main
```

*İlk örneğin sonucunu 10 değil 15 yaparsan ve commitleyip pushlarsan kırmızıya dönecektir [maile bağla sonra]*

#  YENI adım ci.yaml

### Testler geçerse Docker imajını derle

````
- name: Docker İmajını Derle (Build)
    run: docker build -t cicddemo-api:latest .
````