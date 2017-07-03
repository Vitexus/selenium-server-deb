#!/bin/bash
export PATH="/usr/lib/jvm/java-8-oracle/bin/:$PATH"
cd selenium
./go build && ./go release

