;メッセージレイヤーの不可視化
[layopt layer=message0 visible=false]
[cm]

@clearstack
;背景の指定
@bg storage ="title_back1.jpg" time=100

;音楽再生
[playbgm storage="Silent_Wonderland.ogg"]

*start 
;タイトルの指定
[image layer=0 visible=true storage="title.png" x=50 y=100]

;ボタンの作成
[button x=100 y=1200 graphic="start2.png" target="gamestart"]
[button x=100 y=1500 graphic="load2.png"  target="gameload"]
;現在テスト用ファイルへのリンクになっています。

[s]

*gamestart

;タイトルと背景の削除
[freeimage layer="0"]
[freeimage layer="base"]
[stopbgm]
;シナリオへジャンプする
@jump storage="proto1.ks"

*gameload
[freeimage layer="0"]
[freeimage layer="base"]
[stopbgm]
@jump storage=test.ks"

