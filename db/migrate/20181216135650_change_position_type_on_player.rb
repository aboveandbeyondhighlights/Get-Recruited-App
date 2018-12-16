class ChangePositionTypeOnPlayer < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :highschool_position, :string
    change_column :players, :club_position, :string
  end
end
