class CreateProperties < ActiveRecord::Migration
	def change
			create_table :properties do |t|
				t.integer :user_id
				t.string :description
				t.integer :price 
				t.timestamps null: false
			end
	end
end
