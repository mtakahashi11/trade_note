class Currency < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'GBP USD' },
    { id: 3, name: 'GBP AUD' },
    { id: 4, name: 'GBP JPY' },
    { id: 5, name: 'EUR GBP' },
    { id: 6, name: 'EUR USD' },
    { id: 7, name: 'EUR JPY' },
    { id: 8, name: 'AUD USD' },
    { id: 9, name: 'AUD JPY' }
  ]

  include ActiveHash::Associations
  has_many :trades
end
