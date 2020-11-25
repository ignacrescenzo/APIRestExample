FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY ./src/Supermarket.API/Supermarket.API.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish ./src/Supermarket.API/Supermarket.API.csproj -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENV ASPNETCORE_URLS http://*:8080
ENTRYPOINT ["dotnet", "Supermarket.API.dll"]