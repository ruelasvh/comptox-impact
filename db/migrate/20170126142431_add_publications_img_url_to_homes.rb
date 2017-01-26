class AddPublicationsImgUrlToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :publications_img_url, :string
  end
end
