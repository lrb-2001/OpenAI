FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "RailwayTest.dll"]
ENTRYPOINT ["/app/publish", "./railway-test.sh"]