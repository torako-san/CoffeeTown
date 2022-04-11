# アプリケーション名
Coffee Post
# アプリケーション概要
商品を購入したことのある珈琲ショップの情報と、商品情報を他の人とシェアできるアプリ
# URL
XXX
# テスト用アカウント
- Basic認証ID：XXXX
- Basic認証パスワード：XXXX
- メールアドレス：XXXXX
- パスワード：a123456

# 利用方法
## 店舗情報と購入した商品情報を投稿
1. ヘッダーからユーザー新規登録ボタンから登録を行う
2. ユーザー登録実施後。新規投稿ボタンから、「店舗情報」と「購入した商品」を入力します。
3. 投稿した内容は一覧ページに情報が並んでいきます。

## 気になる商品の情報を確認
1. 一覧ページから投稿内容の詳細ボタンをクリックすると、店舗の詳細ページに遷移します。
2. 店舗の詳細ページに表示されている画像をクリックすると、商品の詳細ページの遷移します。
3. 商品詳細ページには、より詳細な商品情報が表示されます。

# アプリケーションを作成した背景
美味しいコーヒーの製品を売るお店は数多くあります。しかし、お店も無数にあるため、それぞれのお店に行くことをしなければ売っている商品の違いを知ることはできません。よく仕事の出張先で
コーヒー豆を買ってきてくれることがあります。どこで買ってきたか初めは覚えているものの、時間と共にお店もコーヒー豆のことも忘れてしまうそうです。そこで忘れるくらいならどこかで、どんな製品を
購入したかシェアできるばいいな考えました。

# 洗い出した要件
[要件を洗い出しシート](https://docs.google.com/spreadsheets/d/17slK2IjvGiE0_f0kYUpDYy4c0IeeOekIRQhc1366wZM/edit?usp=sharing)

# 実装した機能についての画像やGIFおよび説明

# 実装予定の機能
- 検索機能
- いってみたい機能
- ほしい機能
- タグ機能
- ユーザーフォロー機能
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/70c059ec6a941c15841480f3458ff6a4.png)](https://gyazo.com/70c059ec6a941c15841480f3458ff6a4)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/3c909c0dbf01bb1fec9b71015be47c59.png)](https://gyazo.com/3c909c0dbf01bb1fec9b71015be47c59)

# 開発環境
### フロントエンド
- JavaScript
- css
- HTML

### バックエンド
- Ruby

### タスク管理ツール
- Trello

# ローカルでの動作方法
### 以下の手順を実行してください。
1. git clone https://github.com/torako-san/CoffeeTown
2. cd ディレクトリ名
3. bundle install
4. yarn install

# 工夫したポイント
## アプリケーションへのこだわり
抽象度の高い視点でどんなアプリケーションが必要か、目的の近いアプリケーションと差別化をするためにどんなことができるなどの考えをA4用紙に書き出していきました。深掘りを含めて全部で５０枚です。結果的に斬新なアイデアは出ませんでした。しかし、大手のSNSと同様でシンプルな機能にしてユーザーに毎日使ってもらえるかは大切だと気づきを得ました。

## 自由度の高いCSSフレームワーク導入
デザインの知識がほとんどないため、CSSフレームワークを導入することにしました。導入はTwitter社が提供している「Bootstrap」です。今まではバックエンドの学習をメインに行ってきたため、フロントエンドのマークアップなどに苦手意識がありました。デザインを学ぶことと、必要技術を習得するために工数がかかりすぎるため、CSSのフレームワークを導入することにしました。理由としては目的は小規から大規模なアプリケーションのデザインに対応していることです。私のアプリは小規模ではあるものの、今後の拡張性を考えて選びました。