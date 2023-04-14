# 设置（使用）基础运行时镜像
FROM mcr.microsoft.com/dotnet/runtime:6.0 AS base
# FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
# FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base
# FROM mcr.microsoft.com/dotnet/runtime:6.0 AS base
# FROM centos:centos7.5.1804

 # 作者信息
MAINTAINER LRB "1536624135@qq.com"
 
####
# FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
# FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build
# FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
 
# 设置工作目录
WORKDIR /app
 
# 暴露80端口，通过-P参数来发布EXPOSE导出的所有端口
EXPOSE 80
EXPOSE 443
 
# 把目录下的内容都复制到当前目录下
COPY . .
 
# 运行镜像入口命令和可执行文件名称
#ENTRYPOINT ["dotnet", "RailwayTest.dll"]
ENTRYPOINT ["/", "./railway-test.sh"]