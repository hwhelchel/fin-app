class CreateAverageAnnualPriceToEarningsRatios < ActiveRecord::Migration
  def change
    create_table :average_annual_price_to_earnings_ratios do |t|
      t.decimal :pe, precision: 12, scale: 2
      t.belongs_to :year
      t.belongs_to :security
      t.timestamps
    end
  end
end
