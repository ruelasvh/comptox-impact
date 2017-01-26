class AddImpactImgUrlToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :impact_img_url, :string
  end
end
