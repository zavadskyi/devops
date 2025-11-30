#!/bin/bash

DIRECTORY=$1
EXTENSION=$2

if [ -z "$DIRECTORY" ] || [ -z "$EXTENSION" ]; then
  echo "Помилка: Потрібно вказати два аргументи."
  echo "Використання: $0 <шлях_до_директорії> <розширення>"
  exit 1
fi

COUNT=$(find "$DIRECTORY" -type f -name "*.$EXTENSION" | wc -l)

echo "Directory $DIRECTORY has $COUNT files with extension .$EXTENSION."
