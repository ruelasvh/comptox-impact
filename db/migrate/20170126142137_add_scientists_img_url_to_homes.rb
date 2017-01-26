class AddScientistsImgUrlToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :scientists_img_url, :string
  end
end
