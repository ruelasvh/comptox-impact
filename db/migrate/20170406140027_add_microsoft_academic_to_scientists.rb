class AddMicrosoftAcademicToScientists < ActiveRecord::Migration
  def change
    add_column :scientists, :microsoftAcademic, :string
  end
end
