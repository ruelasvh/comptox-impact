class AddOtherDetailsToScientists < ActiveRecord::Migration
  def change
    add_column :scientists, :other_details, :string
  end
end
