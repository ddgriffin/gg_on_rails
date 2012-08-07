class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
	    t.integer :user_id
      t.string :bio
      t.string :title
      t.string :description
      t.decimal :cost
      t.integer :min_age
      t.timestamps
    end
  end
end
