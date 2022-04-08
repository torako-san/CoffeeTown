class CountryOfOrigin < ActiveHash::Base
  self.data = [
    { id: 1, name: '不明' },
    { id: 2, name: 'イエメン' },
    { id: 3, name: 'インド' },
    { id: 4, name: 'インドネシア' },
    { id: 5, name: 'ウカンダ' },
    { id: 6, name: 'エクアドル' },
    { id: 7, name: 'エチオピア' },
    { id: 8, name: 'エルサルバドル' },
    { id: 9, name: 'カメルーン' },
    { id: 10, name: 'キューバ' },
    { id: 11, name: 'グアテマラ' },
    { id: 12, name: 'ケニア' },
    { id: 13, name: 'コスタリカ' },
    { id: 14, name: 'コロンビア' },
    { id: 15, name: 'コンゴ民主共和国' },
    { id: 16, name: 'ジャマイカ' },
    { id: 17, name: 'タンザニア' },
    { id: 18, name: 'ドミニカ' },
    { id: 19, name: 'ニカラグア' },
    { id: 20, name: 'パナマ' },
    { id: 21, name: 'パプア・ニューギニア' },
    { id: 22, name: 'ブラジル' },
    { id: 23, name: 'ベトナム' },
    { id: 24, name: 'ペルー' },
    { id: 25, name: 'ホンジュラス' },
    { id: 26, name: 'ボリビア' },
    { id: 27, name: 'ミャンマー' },
    { id: 28, name: 'メキシコ' },
    { id: 29, name: 'ラオス' },
    { id: 30, name: 'ハイチ' },
    { id: 31, name: 'ルワンダ' },
    { id: 32, name: '中国' },
    { id: 33, name: '東ティモール' },
    { id: 34, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :productions
end