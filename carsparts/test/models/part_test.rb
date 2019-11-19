require 'test_helper'

class PartTest < ActiveSupport::TestCase

  test "for empty name" do
    p = Part.create({:name => ""})
    refute p.valid?
    refute p.save
    assert_equal({:name=>["blank entry not allowed (minimum is 2 characters)"]},
      p.errors.messages)
  end

  test "for one character name" do
    p = Part.create({:name => "a"})
    refute p.valid?
    refute p.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"]},
      p.errors.messages)
  end

  test "for 50 character name" do
    p = Part.create({:name => "1234567891234567891234567891234567891234567891234567"})
    refute p.valid?
    retue p.save
    assert_equal({:name=>["is too long (maximum is 50 characters"]}, 
      p.errors.messages)
  end

end