require 'test_helper'

class TenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @tense = Tense.new(name: "unknown", abbrv: "uK", voice: "loud", mood: "sad", verb_id: "0")
  end
  
  test "tense should be valid" do
    assert @tense.valid?
  end

  test "tense name should be present" do
    @tense.name = "   "
    assert_not @tense.valid?
  end

  test "tense abbrv should be present" do
    @tense.abbrv = "   "
    assert_not @tense.valid?
  end

  test "tense voice should be present" do
    @tense.voice = "   "
    assert_not @tense.valid?
  end

  test "tense mood should be present" do
    @tense.mood = "   "
    assert_not @tense.valid?
  end

  test "tense verb_id should be present" do
    @tense.verb_id = "   "
    assert_not @tense.valid?
  end

  
end
