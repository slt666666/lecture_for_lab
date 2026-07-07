# 解析実習（分子系統解析）

今回、シーケンスによって得られたSNPデータを使って系統解析（系統樹の作成）をおこなっていきます。

## 解析の流れ
1. [系統樹の構築](#sec1)
2. [系統樹の可視化・編集](#sec2)

<h2 id="sec1">1. 系統樹の構築</h2>

系統樹の構築のためのツールは様々な手法やツールが開発されていますが、今回はWeb上で扱うことが可能な「IQ-TREE」を使用します。

https://www.hiv.lanl.gov/content/sequence/IQTREE/iqtree.html

<h4>系統樹構築の手順</h4>

得られたSNPデータのファイルをこちらで準備してあるので、そのデータから系統樹を推定してみましょう。手順は以下になります。

1. 得られたSNPデータのファイルをアップロードする
2. Substituion Modelの設定をする。(塩基置換速度のモデルを設定)
3. Brach Supportの設定をする。(系統樹の信頼性の計算方法の設定)
4. 「Submit」で系統樹の推測を開始する。
5. 出力された結果から、「Newick」のリンク先のテキストをファイルに保存しておく

実際の研究における解析では、得られた配列からどのSubstituion Modelが最適か解析した上でモデルを選択し、系統樹を構築することが多いですが、今回は、下記の設定で試してみましょう。

* Sequence type/Model: GTR
* Rate heterogeneity: Gamma model
* State frequency: Estimated by Maximmum likelihood
* Bootstrap: Ultrafast # of replicates 1000
* Single branch test: SH-aLRT branch test

系統樹のデータを保存する形式としては、NewickフォーマットやNexusフォーマット等が良く使用されます。

<img src="https://github.com/CropEvol/lecture/blob/master/FFBCexpr_2026spr/images/phylogeny.png?raw=true" height="550px"/>

<h2 id="sec2">2. 系統樹の可視化</h2>

先ほど利用したIQ-TREEでも系統樹を表示してくれましたが、論文やプレゼンの図として利用するには、色々編集を加える必要があります。

この時、良く用いられるツールがiTOLになります。
https://itol.embl.de/

1. 上部の「Upload」へ移動。
2. 先ほど作成したNewickファイルをコピー、またはアップロードする。
3. 右側のメニューから系統樹の表示形式を変えたり、Bootstrap値を表示させる。
4. 必要に応じて系統樹の各ブランチ等をクリックし、色を変更したりする。

系統樹を図にする際には、Bootstrapの結果が分かるようにしておくと良いです。
* bootstrap0(SH-aLRT) >= 80% の場所に色付け or 数値の表示など。

<img src="https://github.com/CropEvol/lecture/blob/master/FFBCexpr_2026spr/images/itol.png?raw=true" height="350px"/>
