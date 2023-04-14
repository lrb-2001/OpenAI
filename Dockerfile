WORKDIR /app
ADD railway-test.sh ./railway-test.sh
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "RailwayTest.dll"]
ENTRYPOINT ["/sh", "./railway-test.sh"]