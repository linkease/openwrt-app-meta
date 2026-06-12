#!/usr/bin/env bash
set -euo pipefail

# Generate rm.log: records commits that deleted Makefile under applications/**
{
  echo -e "date\tfolder\tcommit\tmessage"
  git log --date=short --pretty=format:'@@@%H|%ad|%s' --name-status --diff-filter=D -- applications | \
  awk '
    BEGIN { OFS="\t" }
    /^@@@/ {
      line = substr($0, 4)
      n = split(line, a, "|")
      commit = a[1]
      date = a[2]
      msg = a[3]
      next
    }
    /^D\t/ {
      path = substr($0, 3)
      if (path ~ /^applications\/.+\/Makefile$/ || path == "applications/Makefile") {
        folderPath = path
        sub(/\/Makefile$/, "", folderPath)
        folderName = folderPath
        sub(/^.*\//, "", folderName)
        print date, folderName, commit, msg
      }
    }
  '
} > rm.log

echo "Generated rm.log"
