class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.decimal :shares_outstanding, precision: 12, scale: 2
      t.decimal :net_earnings, precision: 12, scale: 2
      t.decimal :dividends_paid_out, precision: 12, scale: 2
      t.decimal :equity_value, precision: 12, scale: 2
      t.decimal :pe, precision: 12, scale: 2
      t.belongs_to :year
      t.belongs_to :security
      t.timestamps
    end

    drop_table :average_annual_price_to_earnings_ratios
    drop_table :equity_values
    drop_table :dividends_paid_outs
    drop_table :net_earnings
    drop_table :shares_outstandings
  end
end
