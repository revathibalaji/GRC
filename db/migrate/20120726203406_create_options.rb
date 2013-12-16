class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :role, :null => false
      t.string :title, :null => false
      t.text :description
      t.references :modified_by
      # t.belongs_to :account
      t.timestamps
    end
  end
end
