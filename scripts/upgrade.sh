#!/bin/bash
cd `dirname $0`
sfctl application upload --path service-fabric-app --show-progress
sfctl application provision --application-type-build-path service-fabric-app
sfctl application upgrade --app-id fabric:/HelloApp --app-version $1 --parameters "{}" --mode Monitored
cd -