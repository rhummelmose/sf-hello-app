#!/bin/bash
DIR=`dirname $0`

dotnet restore $DIR/../HelloApp.csproj -s https://api.nuget.org/v3/index.json
dotnet build $DIR/../HelloApp.csproj -v normal

cd `dirname $DIR/../HelloApp.csproj`
dotnet publish --output service-fabric-app/HelloAppService/Code --runtime ubuntu-x64 --self-contained
cd -
