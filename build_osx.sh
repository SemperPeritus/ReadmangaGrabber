#!/bin/bash

dt=$(date '+%Y%m%d%H%M');

echo $dt

GOOS=darwin GOARCH=arm64 go build -ldflags="-s -w -X github.com/lirix360/ReadmangaGrabber/config.APPver=$dt" -o builds/osx/grabber_osx_arm64 main.go
