#!/bin/sh
set -e

xctool -workspace Travis.xcworkspace -scheme Example build test -sdk iphonesimulator
