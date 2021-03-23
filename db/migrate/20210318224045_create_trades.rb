class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.integer    :date,            null: false
      t.integer    :time,            null: false
      t.integer    :currency_id,     null: false
      t.integer    :type_id,         null: false
      t.integer    :entry,           null: false
      t.integer    :exit,            null: false
      t.integer    :holding_time_id, null: false
      t.integer    :pip,             null: false
      t.integer    :fee,             null: false
      t.integer    :profit_loss,     null: false
      t.integer    :win_lose_id,     null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
