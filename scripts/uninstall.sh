#!/bin/bash


sfctl application delete --application-id HelloApp
sfctl application unprovision --application-type-name HelloAppType --application-type-version 1.0.0
sfctl store delete --content-path service-fabric-app