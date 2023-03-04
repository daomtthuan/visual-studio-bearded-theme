@echo off

# Build Converter
cd "../Converter/ThemeConverter/ThemeConverter"
dotnet build ThemeConverter.csproj

# Build Theme
cd "./bin/Debug/net6.0"
if not exist "../../../../../../../Themes" mkdir "../../../../../../../Themes"
ThemeConverter.exe -i "../../../../../../../Schemas" -o "../../../../../../../Themes"
