# 1. Aşama: Build (Derleme) ortamı - Sadece kod derlemek için gereken ağır SDK'yı içerir
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Proje dosyalarını kopyala ve restore et
COPY ["CiCdDemo.Api/CiCdDemo.Api.csproj", "CiCdDemo.Api/"]
RUN dotnet restore "CiCdDemo.Api/CiCdDemo.Api.csproj"

# Tüm kodları kopyala ve build al
COPY . .
WORKDIR "/src/CiCdDemo.Api"
RUN dotnet publish "CiCdDemo.Api.csproj" -c Release -o /app/publish /p:UseAppHost=false

# 2. Aşama: Çalışma (Runtime) ortamı - Çok daha hafiftir, sadece uygulamayı çalıştırır
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
EXPOSE 8080

COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "CiCdDemo.Api.dll"]