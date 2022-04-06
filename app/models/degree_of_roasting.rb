class DegreeOfRoasting_ < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ミディアムロースト（浅煎り）' },
    { id: 3, name: 'ハイロースト（中浅煎り）' },
    { id: 4, name: 'シティロースト（中煎り）' },
    { id: 5, name: 'フルシティロースト（中深煎り）' },
    { id: 6, name: 'フレンチロースト（深煎り）' },
    { id: 7, name: 'イタリアンロースト（深煎り）' },
    { id: 8, name: 'ライトロースト（浅煎り）' },
    { id: 9, name: 'シナモンロースト（浅煎り）' },
    { id: 10, name: '生豆' }
  ]

  include ActiveHash::Associations
  has_many :productions
end