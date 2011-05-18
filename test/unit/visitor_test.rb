require 'test_helper'

class VisitorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Visitor.new.valid?
  end
end
