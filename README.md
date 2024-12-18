# robosys2024
ロボットシステム学　課題
## 目次
- [概要](#概要)

- [クローン方法](#クローン方法)

- [ディレイへの移動](#ディレイへの移動)

- [実行方法](#実行方法)

- [注意](#注意)

- [必要なソフトウェア](#必要なソフトウェア)

- [テスト環境](#テスト環境)

- [参考文献](#参考文献)

- [ライセンス](#ライセンス)

## 概要
エアソフトガンで用いる６㎜BB弾の初速をジュールに変換し合法か違反かを計測するプログラムです。
また0.97J以上は念のため規制初速としています。

## クローン方法

### リポジトリをクローン
以下のコマンドをターミナル上で実行します。
```
git clone https://github.com/MILKdaruma/robosys2024
```
## ディレクトリへの移動
```
cd robosys2024
```
## 実行方法

### bbsyosokuについて
BB弾の重さ(0.2g,0.25g,0.28g)と初速（m/s)を入力するとジュールに変換し規制初速かを計測します。

### 実行コード
```
echo "BB弾の重さ(g)\初速(m/s)" | ./bbsyosoku
```
”BB弾の重さ”、”初速”はそれぞれ書き換えてください。

### 実行例
### BB弾:0.25g　初速:82m/s の場合
・実行
```
echo "0.25\82" | ./bbsyosoku
```
・実行結果
```
合法です: エネルギー 0.841 J
```
### BB弾:0.2g 初速:102m/s の場合
・実行
```
echo "0.2\102" | ./bbsyosoku
```
・実行結果
```
規制初速です: エネルギー 1.040 J
```
### 数値以外の文字の場合
・実行
```
echo "abc\100" | ./bbsyosoku
```
・実行結果
```
エラー: 数値を入力してください
```
## 注意
小数点の切り上げ、四捨五入により他サイトの数値と多少のズレが起きる可能性があります。

## 必要なソフトウェア
Python
　テスト済みバージョン: 3.7~3.11

## テスト環境
Ubuntu 22.04 LTS

## 参考文献
Pythonの算術演算子（四則演算、べき乗、リスト・文字列の結合など）

https://note.nkmk.me/python-arithmetic-operator/

[5分でマスター]初心者はまずREADMEを書け[テンプレート付き]

https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f

素敵なREADMEの書き方✨

https://qiita.com/koeri3/items/f85a617dcb6efebb2cab

https://github.com/greymd/tmux-xpanes

サバゲーエアガンの初速、弾速、J(ジュール)とは？

https://beforester.net/media/sabage-airgun-velocity-energy-terms

ＢＢ弾初速、重量、Ｊ（ジュ－ル）換算表

https://gunnsougg.dayuh.net/dansoku.html

# ライセンス
・このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。

・このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。

https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024

🄫 2024 teruma yamamoto
