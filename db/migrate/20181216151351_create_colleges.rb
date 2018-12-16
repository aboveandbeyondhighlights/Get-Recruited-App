class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :school_type
      t.string :nickname, null: false
      t.string :conference, null: false
      t.string :website
      t.string :division
      t.string :governing_body, null: false

      t.timestamps
    end
  end
end
