;特別指定
;タイトルと背景の削除
[freeimage layer="0"]
[freeimage layer="base"]

;--------------------

;指定漏れが無いよう、
;「= 」
;で検索することを推奨

;--------------------
;ヘッダ

;選択ボタンの消去
[cm]

;タイトル
[title name="メイドプロト"]


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
[playbgm storage=Somewhere_I_belong.ogg]


;背景の表示
[bg storage="protobg1.1.png"]
[wt]
[wait time=2000]



;--------------------
;シナリオ本編




;メッセージウィンドウの表示
[layopt layer=message0 visible=true]

;時間を空ける
[wait time=500]

#akari
「……ん

;時間を空ける
[wait time=500]


……あれ？」[l][cm]
#

目を開けると真っ先に飛び込んできたのはキラキラとしたシャンデリアの光であった。[l][r]
古風なことに、燭台に灯されているのは電飾ではなく、本物の蝋燭だ。[l][r]
驚いてさらに辺りを見回す。[l][cm]

赤い壁に金の額縁に入れられた絵画。[l][r]
複雑な柄のレースのカーテン。[l][r]
大理石の机。[l][r]
そして、今私の座っている絹のソファー。[l][cm]

#akari
「どこ……ここ？」[l][cm]
#

まだ起き抜けのぼんやりとした頭で記憶をたどってみる。[l][r]
確か、私は学校行事でハイキングに来ていて……それで休憩しようということになって、城へ。[l][cm]

そうだ、城。[l][r]
あの城の中だと考えればこの豪華すぎる内装にも合点がいく。[l][cm]

;時間を空ける
[wait time=500]

#cor
「やっと目覚められたようですね」[l][cm]
#

#akari
「うぁぁぁぁ！」[l][cm]
#

突然後ろから話しかけられたので、思わず飛び上がってしまった。[l][r]
恐る恐る振り替えるとそこには……[l][cm]

;メッセージボックス消去
[layopt layer=message0 visible=false]

;暗転演出
[dark]

;カメラ演出
[camera from_zoom=2 zoom=2 wait=false x=0 y=500 time=3000]


;メイド登場(全体像)
[chara_show name="cor" time="0" wait="true" height="2250" left="-300" top="50"]
;値は適当に調整したやつ。自動調整がうまくいってないと思われる。

;暗転解除
[enddark]




;カメラ演出待機
[wait_camera]

;暗転演出
[dark]

;カメラ演出終了
[reset_camera]

;メイド消去
[chara_hide name="cor" time=1]

;メイド再登場
[chara_show name="cor" time="0" wait="true" height="3000" left="-650" top="0"]

;暗転解除
[enddark]

;メッセージボックス復活
[layopt layer=message0 visible=true]

#cor
「驚かせてしまいすみません」[l][cm]
#

緑のワンピースに白のエプロンドレス、
まさに古典的なメイドの格好の少女が立っていた。[l][cm]

古城にメイド姿の少女。[l][r]
常識的に考えれば、この城でメイドとして働いているのだろう。[l][r]
ならば、今私の抱えている疑問についてもきっとちゃんと答えを出してくれるのではないだろうか。[l][cm]

#akari
「あ、あの……」[l][cm]
#

#cor
「なんでしょうか？」[l][cm]
#

少女が首を傾けると、軽く括られた桃色の髪が揺れる。[l][r]
切りそろえられた前髪の奥から覗く紅の瞳は鋭く私のことを見つめている。[l][cm]

#akari
「あなたはこの城のメイドさん、なんですよね？」[l][cm]
#

#cor
「はい」[l][cm]
#

#akari
「私、どうやってこの城の中に入ったんでしょうか……？　[l][r]
あと、私真と……ああ真っていうのは私の幼馴染で……」[l][cm]
#

#cor
「それについてはお答えできません。申し訳ございません」[l][cm]
#

ピシャリとメイドはそう断言した。一刀両断である。[l][r]
しかしながらそれで引き下がるわけにはいかない。[l][cm]

#akari
「せめて、真の事だけでも……！」[l][cm]
#

#cor
「いいえ、お答えできません。申し訳ございません」[l][cm]
#

凍てつくような冷たい瞳に見つめられると、途端にこれ以上食いさがることができなくなってしまった。[l][r]
隙を見せない喋り方もなんだか得体が知れなくて恐ろしい。[l][cm]

メイドさんというと優しくて気の利く人をイメージしていたけれど、それは空想の世界だけの話なのかもしれない。[l][cm]

何はともあれ、真がどこにいるのかわからない以上、早く真を探し出して合流し、クラスのみんなのところに戻らなければならない。[l][cm]

#akari
「わかりました。わざわざありがとうございます」[l][cm]
#

#cor
「……他には、何か御座いませんか？」[l][cm]
#

#akari
「いいえ、特には。[l][r]
それでは、お世話になりました」[l][cm]
#

そう言って私が立ち上がると、間髪入れずにメイドに手首を掴まれた。[l][cm]

#cor
「どこへ向かうつもりですか？」[l][cm]
#

#akari
「どこって、さっきの道に戻って、ハイキングの続きを……」[l][cm]
#

#cor
「申し訳ございませんが、それはなりません」[l][cm]
#

一瞬意味が呑み込めなかった。[l][r]
それは、なりません。[l][r]
私は、ハイキングに戻れない？[l][cm]

#akari
「どうして、そんなこと言われないといけないんですか？　どんな理由でここにいるかもわからないというのに、戻ることもできないなんて！」[l][cm]
#

;待ち


#cor
「あなたはこの城に迷い込んだ時、王子に選ばれました。[l][r]
役目を果たさなければ、この物語は終わらない」[l][cm]
#

;ここ強調で
私が王子に選ばれた？　[l][cm]

でも、普通王子といえば男性だ。[l]
私は男前と言われることは何度かあっても、あくまで女性だ。[l]
どうにも腑に落ちない。[l][r]
そもそも、王子に選ばれるという言葉が全く理解できない。[l]
物語？　[l]
一体、この人は何を言っているのだろうか。[l][cm]

#cor
「信じられていないようですね。[l][r]
あなたが信じられようが、信じられまいが、着ている服を見れば、王子に選ばれたことは一目瞭然です」[l][cm]
#

服、とそう指摘されて初めて着ている服を確認する。（描写略）[l][cm]

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
[chara_show name="cor" time="0" wait="true" height="3000" left="-650" top="50"]

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
;効果音
[playse storage="slidingdoor-open1.ogg" loop=false]
[wse]

ドアノブを思いっきり回せばあっさりと扉が開いた。[l][r]
一面に敷き詰められた赤い絨毯。どうやら廊下みたいだ。[l][cm]


;効果音の開始
[playse storage="dash-school1.ogg" loop=true]

この城の構造はよくわからないけれども、そのうち階段や玄関にたどり着けるだろう。[l][r]
今はとにかく走る。早くこの狂った場所から脱出しなければ。[l][cm]

[fadeoutse time=5000 ]
[wait time=4000]

しかしいつまでたっても廊下の果てが見えない。[l][cm]

城が大きいから。そう自分に言い訳して走り続けていたが、これはおかしい。[l][r]
玄関はおろか階段の一つも見当たらないなんて。一体どうやってここで生活しているのか。[l][cm]

まぁ、玄関だけが出口と決まったわけではない。窓から脱出すればいいだけの話だ。[l]
と、窓を探してみてやっとこの城のおかしな部分に気づいた。[l][cm]

この廊下には窓がない。[l]
そういう家は確かにあるが、この距離で窓が一つもないのは異常以外の何物でもない。普通の人間ならばすぐに気が滅入ってしまうだろう。[l][cm]

#cor
「お分かりになりましたか？　あなたがやっていることはすべて無駄ですと」[l][cm]
#

;メイド登場
[chara_show name="cor" time="500" wait="false" height="3000" left="-650" top="50"]
突然現れても、今度はもう驚かなかった。[l][cm]

#akari
「いいえまだだよ。あのカーテンの向こうの窓は試してないの」[l][cm]
#

#cor
「では、どうぞご自由に」[l][cm]
#

;メイド退場
[chara_hide name="cor" time="1000"]

[bg storage="protobg1.1.png"]
そう言ってメイドが背後の扉を開けると、そこはさっきまで私が眠っていた部屋で会った。[l][cm]

#akari
「……私、一本道を走ってたよね。どういうこと……？」[l][cm]
#

いいや細かいことは気にしてられない。あのカーテンの向こう側に希望があるのだから。[l][r]
私はそう一思いにカーテンを開けた。[l][cm]

しかし、カーテンの向こうにあったものは、カーテンのない場所と代わり映えのない赤い壁しかなかったのである。[l][cm]

#akari
「え……」[l][cm]
#

#cor
「満足していただきましたか？　[l][r]

[chara_show name="cor" time="2000" wait="true" height="3000" left="-650" top="50"]
ようこそ、王子様。[l][r]
城の住人一同を代表し、あなたの来訪を歓迎いたします」[l]
#

;--------------------
;フッタ


;設定の解除
;---
;背景の削除
[freeimage layer="base"]

;bgmの削除
[stopbgm]

;使用した画像の削除
;[freeimae layer= ]

;メッセージボックス不可視化
[layopt layer="message0" visible=false]

;キャラクターの不可視化
[chara_hide_all time=1]
;---


;移動先指定
[jump storage="title.ks"]


[s]
