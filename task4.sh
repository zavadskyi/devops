#!/bin/bash

echo "--- Системна діагностика  ---"
echo ""

# Вивести ім'я хоста 
echo "1. Ім'я хоста:"
hostname
echo ""

# Вивести IP адреси та назви інтерфейсів 
echo "2. IP адреси та інтерфейси (ip address, grep, awk):"
ip address | grep 'inet ' | awk '{print "   Інтерфейс:", $NF, "| IP:", $2}'
echo ""

# Вивести версію ядра Linux 
echo "3. Версія ядра (uname -r):"
uname -r
echo ""

# Вивести інформацію про загальний час роботи системи 
echo "4. Час роботи системи (uptime):"
uptime
echo ""

# Вивести інформацію про поточного користувача 
echo "5. Поточний користувач (whoami):"
whoami
echo ""

echo "--- Діагностику завершено ---"
