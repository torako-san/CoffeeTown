class BitterTaste < ActiveHash::Base
  self.data = [
    { id: 1, name: '未評価' },
    { id: 2, name: '★★★★★' },
    { id: 3, name: '★★★★☆' },
    { id: 4, name: '★★★☆☆' },
    { id: 5, name: '★★☆☆☆' },
    { id: 6, name: '★☆☆☆☆' }
  ]

  include ActiveHash::Associations
  has_many :productions
end