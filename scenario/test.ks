[cm]

;タイトルと背景の削除
[freeimage layer="0"]
[freeimage layer="base"]

*start



[cm]
;メッセージレイヤーの不可視化
[layopt layer=message0 visible=false]

;音楽再生
;[playbgm storage= ]

;背景の表示
[bg storage="protobg1.1.png"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=0 top=1280 width=1080 height=480 page=fore frame="message2.png" visible=false]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="72" marginl="60" marginr="120" marginb="32"]


;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=64 x=60 y=1280]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;姫路あかり
[chara_new  name="akari" storage="Akari.png" jname="あかり"]
;キャラクターの表情登録
;[chara_face]
;省略しています


;コルデリア
[chara_new  name="cor"  storage="Cordelia.png" jname="メイド" ]



[wt]



;--------------------------------------------

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




;暗転演出
[dark]
;暗転解除
[enddark]

;メッセージウィンドウの表示
[layopt layer=message0 visible=true]



#akari
テスト用ファイルです。[l][cm]

#

;-----------------
;メイド登場
[chara_show name="cor" time="0" wait="true" height="3000" left="-650" top="0"]
;値は適当に調整したやつ。自動調整がうまくいってないと思われる。

#cor
「信じられていないようですね。[l][r]
あなたが信じられようが、信じられまいが、着ている服を見れば、王子に選ばれたことは一目瞭然です」[l][cm]
#

服、とそう指摘されて初めて着ている服を確認する。（描写略）[l][r]
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa[l][r]
aaaaaaaaaaaaaaaaaa dddd ddd asa vjhk j[l][r]
aaaaaaaaaaa[l][r]
aaaaaaaa[l][r]
aaaaaaaaa[l][r]
aaaaaaaaa[l][r][cm]

;メッセージボックス消去
[layopt layer=message0 visible=false]

;暗転演出
[dark]

;メイド消去
[chara_hide name="cor"]


;カメラ演出
[camera from_zoom=2 zoom=2 wait=false x=0 from_y=500 y=0 time=3000 ease_type="linear"]


;主人公登場
[chara_show name="akari" time="0" wait="true" height="2500" top="50" left="-250"]

;暗転解除
[enddark]

;待機
[wait time=1500]

;暗転演出
[dark]

;カメラリセット
[reset_camera]


;暗転解除
[enddark]

;待機
[wait time=1500]

;暗転演出
[dark]

;主人公消去
[chara_hide name="akari"]

;メイド登場
[chara_show name="cor" time="0" wait="true" height="2250" left="-300" top="50"]

;暗転解除
[enddark]

;メッセージボックス可視化
[layopt layer=message0 visible=true]


#akari
「何これ……」[l][cm]
#

#cor
「あなたは、あなたの役目を果たさなければならない。つまり、そういうことです」[l][cm]
#

この人は絶対におかしい。付き合ってられない！[l][r]

;メイド退場(見かけ)
[anim name="cor" left=-1080 time=1500 opacity=0]

;背景変更
[bg storage="protobg1.2.png" time="1000" wait="true"]

私はメイドの手を振り払い、扉に向かって一目散に走り始めた。[l][cm]

;アニメーション待ち
[wa]

#cor
「逃げるんですね」[l][cm]
#

;メイド退場(ほんとに)
[chara_hide name="cor" time=1]

#akari
「御託には付き合ってられませんから！」[l][cm]
#


;wait&change bgimg
[bg storage="protobg1.3.jpg" time=1500 wait=true]


ドアノブを思いっきり回せばあっさりと扉が開いた。[l][r]
一面に敷き詰められた赤い絨毯。どうやら廊下みたいだ。[l][cm]


;--------------

タイトルに戻ります。[l][r]

;設定の解除
;[chara_hide_all time=1]
[stopbgm]
[layopt layer="message0" visible=false]
[chara_delete name="akari"]
[chara_delete name="cor"]
@jump storage="title.ks"