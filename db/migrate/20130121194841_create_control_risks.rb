class CreateControlRisks < ActiveRecord::Migration
  def change
    create_table :control_risks do |t|
      t.references :control, :null => false
      t.references :risk, :null => false
      t.references :account
      t.references :modified_by
      # t.belongs_to :account
      t.timestamps
    end
  end
end
