class CreateProgramDirectives < ActiveRecord::Migration
	def change
		create_table :program_directives do |t|
			t.references :program, :null => false
			t.references :directive, :null => false
			t.references :modified_by
			# t.belongs_to :account
			t.timestamps
		end
	end
end
