class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :request
      t.references :system
      t.string :status
      t.references :modified_by
      # t.belongs_to :account
      t.timestamps
    end
  end
end
