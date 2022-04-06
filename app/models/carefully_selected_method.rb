class CarefullySelectedMethod < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ナチュラル（非水洗式）' },
    { id: 3, name: 'ウォッシュド（水洗式）' },
    { id: 4, name: 'ハニープロセス（パルプドナチュラル）' },
    { id: 5, name: 'スマトラ式' },
    { id: 6, name: '不明' }
  ]

  include ActiveHash::Associations
  has_many :shops
end