class CreatePasswordManagers < ActiveRecord::Migration[6.1]
  def change
    create_table :password_managers do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
