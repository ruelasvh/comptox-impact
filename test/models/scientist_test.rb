require 'test_helper'

class ScientistTest < ActiveSupport::TestCase
  fixtures :scientists

  test "scientist attributes must not be empty" do
    scientist = Scientist.new
    assert scientist.invalid?
    assert scientist.errors[:scientistId].any?
    assert scientist.errors[:firstName].any?
    assert scientist.errors[:lastName].any?
    assert scientist.errors[:title].any?
  end

  def new_scientist(image_url)
    Scientist.new(  scientistId:          31,
                    firstName:            "Juan",
                    lastName:             "Perez",
                    title:                "Rocket Scientist",
                    photoUrl:             image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |name|
      assert new_scientist(name).valid?, "#{name} should be valid"
    end
    bad.each do |name|
      assert new_scientist(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "scientist is not valid without a unique scientistId" do
    scientist = Scientist.new(  scientistId:          scientists(:ann).scientistId,
                    firstName:            "Juan",
                    lastName:             "Perez",
                    title:                "Rocket Scientist",
                    photoUrl:             "selfie.gif")

    assert scientist.invalid?
    assert_equal ["has already been taken"], scientist.errors[:scientistId]
  end
end
