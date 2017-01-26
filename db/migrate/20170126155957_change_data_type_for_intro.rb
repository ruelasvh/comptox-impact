class ChangeDataTypeForIntro < ActiveRecord::Migration
  def change
    change_column :homes, :intro, :text
  end
end
