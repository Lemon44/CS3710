require 'test_helper'

class MakeTest < ActiveSupport::TestCase

  test "for empty name" do
    m = Make.create({:name => ""})
    refute m.valid?
    refute m.save
    assert_equal({:name=>["blank entry not allowed (minimum is 2 characters)"]},
      m.errors.messages)
  end

  test "for one character name" do
    m = Make.create({:name => "a"})
    refute m.valid?
    refute m.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"]},
      m.errors.messages)
  end
end
