class Trade < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :time
    validates :currency_id, numericality: { other_than: 1 }
    validates :type_id
    validates :entry
    validates :exit
    validates :holding_time_id, numericality: { other_than: 1 }
    validates :pip
    validates :fee
    validates :profit_loss
    validates :win_lose_id, numericality: { other_than: 1 }
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :currency
  belongs_to :holding_time
  belongs_to :win_lose
end