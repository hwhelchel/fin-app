class CreateSecurities < ActiveRecord::Migration
  def change
    create_table :securities do |t|
      t.string :name, null: false
      t.string :ticker
      t.decimal :price, precision: 12, scale: 2
      t.decimal :long_term_debt, precision: 12, scale: 2
      t.timestamps
    end
  end
end
