class ChangePrimaryKeyInScientists < ActiveRecord::Migration
  def change
    remove_column :scientists, :scientistId
    add_column :scientists, :scientistId, :primary_key
  end
end
