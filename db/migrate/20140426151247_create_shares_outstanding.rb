class CreateSharesOutstanding < ActiveRecord::Migration
  def change
    create_table :shares_outstandings do |t|
      t.decimal :shares_outstanding, precision: 12, scale: 2
      t.belongs_to :year
      t.belongs_to :security
      t.timestamps
    end
  end
end
