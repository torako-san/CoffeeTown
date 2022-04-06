class CoffeeBlend < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ブレンド' },
    { id: 3, name: 'シングルオリジン' }
  ]

  include ActiveHash::Associations
  has_many :productions
end