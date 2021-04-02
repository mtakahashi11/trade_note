class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.text       :date,            null: false
      t.text       :time,            null: false
      t.integer    :currency_id,     null: false
      t.integer    :type_id,         null: false
      t.text       :entry,           null: false
      t.text       :exit,            null: false
      t.integer    :holding_time_id, null: false
      t.text       :pip,             null: false
      t.text       :fee,             null: false
      t.text       :profit_loss,     null: false
      t.integer    :win_lose_id,     null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
