require 'test_helper'

class VerbTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @verb = Verb.new(first: "amo", second: "amare", third: "amavi", fourth: "amatus")
  end

  test "should be valid" do
    assert @verb.valid?
  end

  test "first should be present" do
    @verb.first = "   "
    assert_not @verb.valid?
  end

  test "second should be present" do
    @verb.second = "   "
    assert_not @verb.valid?
  end

    test "third should be present" do
    @verb.third = "   "
    assert_not @verb.valid?
    end
      test "fourth should be present" do
    @verb.fourth = "   "
    assert_not @verb.valid?
      end
      
end
