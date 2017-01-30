require 'test_helper'

class HomeTest < ActiveSupport::TestCase
  fixtures :homes

  test "home attributes must not be empty" do
    home = Home.new
    assert home.invalid?
    assert home.errors[:title].any?
    assert home.errors[:intro].any?
    assert home.errors[:scientists_img_url].any?
    assert home.errors[:publications_img_url].any?
    assert home.errors[:datatools_img_url].any?
    assert home.errors[:impact_img_url].any?
  end

  def new_home(image_url)
    Home.new( title:                "Impact Title",
              intro:                "NCCT wide metrics.",
              scientists_img_url:   image_url,
              publications_img_url: image_url,
              datatools_img_url:    image_url,
              impact_img_url:       homes(:rev_three).impact_img_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |name|
      assert new_home(name).valid?, "#{name} should be valid"
    end
    bad.each do |name|
      assert new_home(name).invalid?, "#{name} shouldn't be valid"
    end
  end
end
