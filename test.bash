#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Teruma Yamamoto <TRyamamototeruma@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# テストケース1: 合法な例
out=$(echo "0.2\50" | ./bbsyosoku)
[ "${out}" = "合法です: エネルギー 0.250 J" ] || ng "$LINENO"

# テストケース2: 規制初速
out=$(echo "0.2\100" | ./bbsyosoku)
[ "${out}" = "規制初速です: エネルギー 1.000 J" ] || ng "$LINENO"

# テストケース3: 0.25で合法な例
out=$(echo "0.25\80" | ./bbsyosoku)
[ "${out}" = "合法です: エネルギー 0.800 J" ] || ng "$LINENO"

# テストケース4: 0.25で規制初速
out=$(echo "0.25\100" | ./bbsyosoku)
[ "${out}" = "規制初速です: エネルギー 1.250 J" ] || ng "$LINENO"

# テストケース5: 0.28で合法な例
out=$(echo "0.28\80" | ./bbsyosoku)
[ "${out}" = "合法です: エネルギー 0.896 J" ] || ng "$LINENO"

# テストケース6: 0.28で規制初速
out=$(echo "0.28\120" | ./bbsyosoku)
[ "${out}" = "規制初速です: エネルギー 2.016 J" ] || ng "$LINENO"

# テストケース7: 数値以外の入力
out=$(echo "a\50" | ./bbsyosoku)
[ "${out}" = "エラー: 数値を入力してください" ] || ng "$LINENO"

# テスト結果の確認
[ "${res}" = 0 ] && echo "OK"
exit $res

