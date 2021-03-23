class HoldingTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1分' },
    { id: 3, name: '3分' },
    { id: 4, name: '5分' },
    { id: 5, name: '10分' },
    { id: 6, name: '20分' },
    { id: 7, name: '30分' },
    { id: 8, name: '1時間' },
    { id: 9, name: '5時間' },
    { id: 10, name: '24時間以内' },
    { id: 11, name: '2日以上' }
  ]

  include ActiveHash::Associations
  has_many :trades
end
