require 'test_helper'

class CdTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Cd.new.valid?
  end
end
