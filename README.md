# アプリケーション名
Coffee Post
# アプリケーション概要
商品を購入したことのある珈琲ショップの情報と、商品情報を他の人とシェアできるアプリ
# URL
https://coffee-post.herokuapp.com/
# テスト用アカウント
- Basic認証ID：coffee
- Basic認証パスワード：01414
- メールアドレス：test1@test.com
- パスワード：a123456

# 利用方法
## 店舗情報と購入した商品情報を投稿
1. ヘッダーからユーザー新規登録ボタンから登録を行う
2. ユーザー登録実施後。新規投稿ボタンから、「店舗情報」と「購入した商品」を入力します。
3. 投稿した内容は一覧ページに情報が並んでいきます。

## 投稿した商品の情報を修正
1. 一覧ページから投稿内容の詳細ボタンをクリックすると、店舗詳細ページに遷移します。
2. 店舗詳細ページには投稿者のみが使用できる編集機能のボタンが表示されています。
3. 「Editボタン」をクリックすると店舗の情報を編集できるページに遷移します。
4. 店舗情報を入力し、下部にある送信ボタンをクリックします。
5. 送信した情報が正しければ、店舗詳細ページに画面が遷移されます。
6. 遷移した画面には更新した情報が表示されます。

## 投稿した商品の情報を削除
1. 一覧ページから投稿内容の詳細ボタンをクリックすると、店舗詳細ページに遷移します。
2. 店舗詳細ページには投稿者のみが使用できる編集機能のボタンが表示されています。
3. 「Deleteボタン」をクリックすると投稿した店舗情報と商品情報が削除されます。
4. 削除が完了するとページは店舗一覧ページに遷移します。

## 気になる商品の情報を確認
1. 一覧ページから投稿内容の詳細ボタンをクリックすると、店舗の詳細ページに遷移します。
2. 店舗の詳細ページに表示されている画像をクリックすると、商品の詳細ページの遷移します。
3. 商品詳細ページには、より詳細な商品情報が表示されます。

## お気に入りの商品を登録
1. 店舗の投稿一覧表から商品の詳細ボタンを選択して、商品詳細ページに遷移します。
2. 商品詳細ページの画像したにハートマークが表示されているため、クリックするとハートに色が付きます。
3. ハートマークに色をつけた商品は、ユーザー毎の「WishList」に登録されます。
4. 「WishList」はナビバーに表示されています。クリックすると、一覧表に画面が遷移します。
5. 一覧表には「商品名」と「投稿者名」が登録順に一列づつ表示されます。
6. 表示された商品名はリンクになっており、選択すると商品の詳細ページに遷移できる。

# アプリケーションを作成した背景
美味しいコーヒーの製品を売るお店は数多くあります。しかし、お店も無数にあるため、それぞれのお店に行くことをしなければ
売っている商品の違いを知ることはできません。よく仕事の出張先でコーヒー豆を買ってきてくれることがあります。どこで買ってきたか
初めは覚えているものの、時間と共にお店もコーヒー豆のことも忘れてしまうそうです。そこで忘れるくらいならどこかで、どんな製品を
購入したかシェアできるばいいな考えました。

# 洗い出した要件
[要件を洗い出しシート](https://docs.google.com/spreadsheets/d/17slK2IjvGiE0_f0kYUpDYy4c0IeeOekIRQhc1366wZM/edit?usp=sharing)

# 実装した機能についての画像やGIFおよび説明
- ユーザー登録できているアカウントは投稿機能を使用できます。
[![Image from Gyazo](https://i.gyazo.com/ca4b76d5c771d2e9f33c761b1796af5b.gif)](https://gyazo.com/ca4b76d5c771d2e9f33c761b1796af5b)

- ユーザーが未登録でも投稿一覧情報や店舗の詳細情報は見ることができます。
[![Image from Gyazo](https://i.gyazo.com/9ecc3c8b077b4ee01630d23df293cb34.gif)](https://gyazo.com/9ecc3c8b077b4ee01630d23df293cb34)

# 実装予定の機能
- 複雑な条件の検索機能
- タグ機能
- フォローボタンのJavaScript化

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/53f38e684c4eabb4c898f138a77eb5e5.png)](https://gyazo.com/53f38e684c4eabb4c898f138a77eb5e5)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/903638781b80fec46748d33ace36b522.png)](https://gyazo.com/903638781b80fec46748d33ace36b522)

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

## 欲しいボタンのジャバスクリプト化
サーバーの負担を軽減するために、画面遷移を必要としない「JavaScript」を欲しいボタンで実装しています。実装に際してボタンが押された際に
JSファイルから一部のページ書き換えられず、苦労しました。改めて、JavaScriptを再度学び直し実装することができました。今後フォロー機能ボタンも
JavaScript化して、サーバーの負荷軽減を図りたいと思っています。