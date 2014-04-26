class CreateDividendsPaidOut < ActiveRecord::Migration
  def change
    create_table :dividends_paid_outs do |t|
      t.decimal :dividends_paid_out, precision: 12, scale: 2
      t.belongs_to :year
      t.belongs_to :security
      t.timestamps
    end
  end
end
