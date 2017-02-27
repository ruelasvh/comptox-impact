class AddVivoLinks < ActiveRecord::Migration
  def change
    rename_column :scientists, :europePmc, :vivo
  end
end
