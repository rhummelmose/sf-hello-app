#!/bin/bash
cd `dirname $0`
sfctl application upload --path ../service-fabric-app --show-progress
sfctl application provision --application-type-build-path service-fabric-app
sfctl application create --app-name fabric:/HelloApp --app-type HelloAppType --app-version 1.0.0
cd -
