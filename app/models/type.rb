class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ショート' },
    { id: 3, name: 'ロング' }
  ]

  include ActiveHash::Associations
  has_many :trades
end