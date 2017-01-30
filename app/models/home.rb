class Home < ActiveRecord::Base
  validates :title, :intro, :scientists_img_url, :publications_img_url, :datatools_img_url, :impact_img_url, presence: true
  validates :scientists_img_url, :publications_img_url, :datatools_img_url, :impact_img_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
