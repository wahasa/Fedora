#!/bin/bash
vscode=https://vscode.download.prss.microsoft.com/dbazure/download/stable/863d2581ecda6849923a2118d93a088b0745d9d6/code_1.87.2
case `uname -m` in
      aarch64)
           archurl="aarch64" ;;
      arm*)
           archurl="armv7hl" ;;
      x86_64)
           archurl="x86_64" ;;
      *)
           echo "unknown architecture"; exit 1 ;;
      esac
      wget "${vscode}-1709911315.el8.${archurl}.rpm"
      wget "${vscode}-1709911817.el8.${archurl}.rpm"
      wget "${vscode}-1709912288.el8.${archurl}.rpm"
sleep 1
dnf install ~/code*
rm /usr/share/applications/code.desktop

wget https://raw.githubusercontent.com/wahasa/Ubuntu/main/Patch/code.desktop -P /usr/share/applications/

rm code*
rm vscodefix.sh
