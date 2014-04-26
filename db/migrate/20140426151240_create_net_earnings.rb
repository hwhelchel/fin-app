class CreateNetEarnings < ActiveRecord::Migration
  def change
    create_table :net_earnings do |t|
      t.decimal :net_earnings, precision: 12, scale: 2
      t.belongs_to :year
      t.belongs_to :security
      t.timestamps
    end
  end
end
