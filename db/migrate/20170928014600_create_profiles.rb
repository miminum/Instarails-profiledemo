class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
