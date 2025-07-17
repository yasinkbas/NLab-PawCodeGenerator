#!/bin/bash

EXTENSION_SOURCE="com.yasinkbas.PawExtensions.SwiftNLabCodeGenerator"
PAW_EXTENSIONS_DIR="$HOME/Library/Containers/com.luckymarmot.Paw/Data/Library/Application Support/com.luckymarmot.Paw/Extensions"
TARGET_PATH="$PAW_EXTENSIONS_DIR/$EXTENSION_SOURCE"

# Check if Paw extensions directory exists
if [ ! -d "$PAW_EXTENSIONS_DIR" ]; then
    echo "Paw folder not found"
    exit 1
fi

# Check if extension already exists
if [ -d "$TARGET_PATH" ]; then
    rm -rf "$TARGET_PATH"
    cp -r "$EXTENSION_SOURCE" "$PAW_EXTENSIONS_DIR"
    echo "Extension already found and updated"
else
    cp -r "$EXTENSION_SOURCE" "$PAW_EXTENSIONS_DIR"
    echo "Extension moved"
fi 