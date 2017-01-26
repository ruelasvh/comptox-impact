class AddDatatoolsImgUrlToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :datatools_img_url, :string
  end
end
