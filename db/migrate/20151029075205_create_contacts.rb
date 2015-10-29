class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :box
    	t.string :to
    	t.string :from
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
