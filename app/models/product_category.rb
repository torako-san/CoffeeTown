class ProductCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'コーヒー豆' },
    { id: 3, name: 'コーヒ器具' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :shops
end