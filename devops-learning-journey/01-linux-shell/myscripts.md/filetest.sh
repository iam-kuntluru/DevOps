#!/bin/bash


read -p "Enter the file path: " file

if [ -e "$file" ]; then
  echo "✅ File exists."

  [ -r "$file" ] && echo "🔓 File is readable." || echo "🚫 Not readable."
  [ -w "$file" ] && echo "✏️ File is writable." || echo "🚫 Not writable."
  [ -x "$file" ] && echo "🚀 File is executable." || echo "🚫 Not executable."

else
  echo "❌ File does not exist."
fi
