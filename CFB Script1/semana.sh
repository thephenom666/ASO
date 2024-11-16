#!/bin/bash
DIA=$ (date +%A)
echo &DIA

if [ "$DIA" =="divendres" ]; then
		echo "Yupi!"
else 
		echo "Bueno..."
fi
