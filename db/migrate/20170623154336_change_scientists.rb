class ChangeScientists < ActiveRecord::Migration
  def change
    change_column :scientists, :title, :string, :null => true
  end
end
