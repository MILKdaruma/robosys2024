#!/bin/bash
# SPDX-FileCopyrightText: 2024 Teruma Yamamoto <TRyamamototeruma@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause

# テストケース一覧: "重さ\初速"
TEST_CASES=(
    "0.2\50"  # 合法な例
    "0.2\100" # 規制初速
    "0.25\80" # 合法な例
    "0.28\120" # 規制初速
)

# 期待する出力
EXPECTED_OUTPUTS=(
    "合法です: エネルギー 0.250 J"
    "規制初速です: エネルギー 1.000 J"
    "合法です: エネルギー 0.800 J"
    "規制初速です: エネルギー 2.016 J"
)

# Pythonスクリプトのパス
SCRIPT="./bbsyosoku"

# テスト実行
for i in "${!TEST_CASES[@]}"; do
    INPUT="${TEST_CASES[i]}"
    EXPECTED="${EXPECTED_OUTPUTS[i]}"
    OUTPUT=$(echo "$INPUT" | $SCRIPT)
    if [ "$OUTPUT" == "$EXPECTED" ]; then
        echo "Test $((i + 1)) PASSED"
    else
        echo "Test $((i + 1)) FAILED"
        echo "  Input: $INPUT"
        echo "  Expected: $EXPECTED"
        echo "  Got: $OUTPUT"
    fi
done

