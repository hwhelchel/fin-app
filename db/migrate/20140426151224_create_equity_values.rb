class CreateEquityValues < ActiveRecord::Migration
  def change
    create_table :equity_values do |t|
      t.decimal :equity_value, precision: 12, scale: 2
      t.belongs_to :year
      t.belongs_to :security
      t.timestamps
    end
  end
end
