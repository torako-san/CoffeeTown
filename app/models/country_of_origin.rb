class CountryOfOrigin < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'イエメン' },
    { id: 2, name: 'インド' },
    { id: 2, name: 'インドネシア' },
    { id: 3, name: 'ウカンダ' },
    { id: 3, name: 'エクアドル' },
    { id: 4, name: 'エチオピア' },
    { id: 5, name: 'エルサルバドル' },
    { id: 6, name: 'カメルーン' },
    { id: 7, name: 'キューバ' },
    { id: 8, name: 'グアテマラ' },
    { id: 9, name: 'ケニア' },
    { id: 10, name: 'コスタリカ' },
    { id: 11, name: 'コロンビア' },
    { id: 12, name: 'コンゴ民主共和国' },
    { id: 13, name: 'ジャマイカ' },
    { id: 14, name: 'タンザニア' },
    { id: 15, name: 'ドミニカ' },
    { id: 16, name: 'ニカラグア' },
    { id: 17, name: 'パナマ' },
    { id: 18, name: 'パプア・ニューギニア' },
    { id: 19, name: 'ブラジル' },
    { id: 20, name: 'ベトナム' },
    { id: 21, name: 'ペルー' },
    { id: 22, name: 'ホンジュラス' },
    { id: 23, name: 'ボリビア' },
    { id: 24, name: 'ミャンマー' },
    { id: 25, name: 'メキシコ' },
    { id: 26, name: 'ラオス' },
    { id: 27, name: 'ハイチ' },
    { id: 28, name: 'ルワンダ' },
    { id: 29, name: '中国' },
    { id: 30, name: '東ティモール' },
    { id: 31, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :shops
end