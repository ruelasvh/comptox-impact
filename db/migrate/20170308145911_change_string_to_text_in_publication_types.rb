class ChangeStringToTextInPublicationTypes < ActiveRecord::Migration
  def up
    change_column :publication_types, :short_description, :text
    change_column :publication_types, :long_description, :text
  end
  def down
    change_column :publication_types, :short_description, :string, limit: 1024
    change_column :publication_types, :long_description, :string, limit: 2048
  end
end
