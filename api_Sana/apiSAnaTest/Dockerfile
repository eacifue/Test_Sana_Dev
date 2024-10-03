# Usa la imagen base de .NET Core para construir y publicar la aplicación
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80

# Imagen base para el SDK, que incluye el compilador
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["apiSAnaTest.csproj", "./"]
RUN dotnet restore "./apiSAnaTest.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "apiSAnaTest.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "apiSAnaTest.csproj" -c Release -o /app/publish

# Imagen final con la aplicación compilada
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "apiSAnaTest.dll"]