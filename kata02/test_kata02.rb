require_relative "kata02_5"
require 'minitest/autorun'

class TestKata02 < MiniTest::Unit::TestCase

  def test_chop
    assert_equal(-1, ArrayChop.chop(3, []))
    assert_equal(-1, ArrayChop.chop(3, [1]))
    assert_equal(0,  ArrayChop.chop(1, [1]))
    #
    assert_equal(0,  ArrayChop.chop(1, [1, 3, 5]))
    assert_equal(1,  ArrayChop.chop(3, [1, 3, 5]))
    assert_equal(2,  ArrayChop.chop(5, [1, 3, 5]))
    assert_equal(-1, ArrayChop.chop(0, [1, 3, 5]))
    assert_equal(-1, ArrayChop.chop(2, [1, 3, 5]))
    assert_equal(-1, ArrayChop.chop(4, [1, 3, 5]))
    assert_equal(-1, ArrayChop.chop(6, [1, 3, 5]))
    #
    assert_equal(0,  ArrayChop.chop(1, [1, 3, 5, 7]))
    assert_equal(1,  ArrayChop.chop(3, [1, 3, 5, 7]))
    assert_equal(2,  ArrayChop.chop(5, [1, 3, 5, 7]))
    assert_equal(3,  ArrayChop.chop(7, [1, 3, 5, 7]))
    assert_equal(-1, ArrayChop.chop(0, [1, 3, 5, 7]))
    assert_equal(-1, ArrayChop.chop(2, [1, 3, 5, 7]))
    assert_equal(-1, ArrayChop.chop(4, [1, 3, 5, 7]))
    assert_equal(-1, ArrayChop.chop(6, [1, 3, 5, 7]))
    assert_equal(-1, ArrayChop.chop(8, [1, 3, 5, 7]))
  end

end
