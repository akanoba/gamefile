;指定漏れが無いよう、
;「= 」
;で検索することを推奨
;--------------------
;ヘッダ


;タイトル
[title name= ]


;メニューボタンの表示or非表示
[showmenubutton]
;or[hidemenubutton]


;メッセージボックス関連
;---
;メッセージウィンドウの設定
[position layer="message0" left=0 top=1280 width=1080 height=640 page=fore frame="message.png" visible=false]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="72" marginl="60" marginr="60" marginb="32"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=64 x=60 y=1280]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;---


;キャラクター関連
;---
;このゲームで登場するキャラクターを宣言
;姫路あかり
[chara_new  name="akari" storage="Akari.png" jname="あかり"]
;コルデリア
[chara_new  name="cor"  storage="Cordelia.png" jname="メイド" ]

;キャラクターの表情登録
;[chara_face]
;---


;マクロの指定
;---
;暗転演出定義
[macro name="dark"]
	[image layer=1 left=0 top=0 storage=black.jpg page=fore visible=true time=500]
	[wait time=500]
[endmacro]

;暗転解除定義
[macro name="enddark"]
	[freeimage layer=1 time=500]
	[wait time=500]
[endmacro]
;---


;--------------------
;初期設定(背景etc)


;音楽再生
[playbgm storage= ]


;背景の表示
[bg storage=　]
[wt]


;メッセージウィンドウの表示
[layopt layer=message0 visible=true]


;--------------------
;シナリオ本編



;--------------------
;フッタ


;設定の解除
;---
;背景の削除
[freeimage layer="base"]

;bgmの削除
;[stopbgm]

;使用した画像の削除
;[freeimae layer= ]

;メッセージボックス不可視化
[layopt layer="message0" visible=false]

;キャラクターの不可視化
;キャラが出ていないとエラーします
[chara_hide_all time=1]
;---


;移動先指定
[jump storage= ]


[s]
