# Use the base ASP.NET runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80

RUN dotnet tool install --global dotnet-sdk-9.0

# Copy project files into the image
COPY AdventureWorkSS /app

# Set the entry point to run the API
ENTRYPOINT ["dotnet", "AdventureWorkSS.dll"]
