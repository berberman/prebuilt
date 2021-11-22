#!/usr/bin/env bash

# translated from https://github.com/fcitx/fcitx5-chinese-addons/blob/v5.0.8/im/pinyin/CMakeLists.txt

set -euxo pipefail

OUT_DIR="./chinese-addons-data"
if [ -f "$OUT_DIR" ]; then
    echo "$OUT_DIR is a file"
    exit 1
fi
if [ -d "$OUT_DIR" ]; then
    rm -r "$OUT_DIR"
fi
mkdir -p "$OUT_DIR"

CHINESE_ADDONS_REPO="https://raw.githubusercontent.com/fcitx/fcitx5-chinese-addons/"
CHINESE_ADDONS_TAG="5.0.8"

DICT_TXT_FILES=(emoji.txt chaizi.txt)

for DICT_TXT_FILE in "${DICT_TXT_FILES[@]}"; do
    curl -LO "$CHINESE_ADDONS_REPO/$CHINESE_ADDONS_TAG/im/pinyin/$DICT_TXT_FILE"
    DICT_FILE="${DICT_TXT_FILE/.txt/.dict}"
    libime_pinyindict "$DICT_TXT_FILE" "$OUT_DIR/$DICT_FILE"
done
