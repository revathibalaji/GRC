class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :title, :null => false
      t.text :description
      t.references :system
      # t.belongs_to :account
      t.references :modified_by
      t.timestamps
    end
  end
end
