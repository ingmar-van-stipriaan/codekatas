require_relative "./binary chop/kata02_1"
require 'minitest/autorun'

class TestKata02 < MiniTest::Unit::TestCase

  def test_chop
    assert_equal(-1, ArrayChop.new.chop(3, []))
    assert_equal(-1, ArrayChop.new.chop(3, [1]))
    assert_equal(0,  ArrayChop.new.chop(1, [1]))
    #
    assert_equal(0,  ArrayChop.new.chop(1, [1, 3, 5]))
    assert_equal(1,  ArrayChop.new.chop(3, [1, 3, 5]))
    assert_equal(2,  ArrayChop.new.chop(5, [1, 3, 5]))
    assert_equal(-1, ArrayChop.new.chop(0, [1, 3, 5]))
    # assert_equal(-1, ArrayChop.new.chop(2, [1, 3, 5]))
    # assert_equal(-1, ArrayChop.new.chop(4, [1, 3, 5]))
    # assert_equal(-1, ArrayChop.new.chop(6, [1, 3, 5]))
    # #
    # assert_equal(0,  ArrayChop.new.chop(1, [1, 3, 5, 7]))
    # assert_equal(1,  ArrayChop.new.chop(3, [1, 3, 5, 7]))
    # assert_equal(2,  ArrayChop.new.chop(5, [1, 3, 5, 7]))
    # assert_equal(3,  ArrayChop.new.chop(7, [1, 3, 5, 7]))
    # assert_equal(-1, ArrayChop.new.chop(0, [1, 3, 5, 7]))
    # assert_equal(-1, ArrayChop.new.chop(2, [1, 3, 5, 7]))
    # assert_equal(-1, ArrayChop.new.chop(4, [1, 3, 5, 7]))
    # assert_equal(-1, ArrayChop.new.chop(6, [1, 3, 5, 7]))
    # assert_equal(-1, ArrayChop.new.chop(8, [1, 3, 5, 7]))
  end

end
