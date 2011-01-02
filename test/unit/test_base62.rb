require 'test_helper'

class TestBase62 < Test::Unit::TestCase
  
  def test_encode 
    assert_equal('0', 0.base62_encode)
    assert_equal('1', 1.base62_encode)
    # 62
    assert_equal('10', 62.base62_encode)
    # 62 * 62
    assert_equal('100', 3844.base62_encode)
    # 62 * 62 * 62
    assert_equal('1000', 238328.base62_encode)
  end
  
  def test_decode 
    assert_equal(0, '0'.base62_decode)
    assert_equal(1, '1'.base62_decode)
    # 62
    assert_equal(62, '10'.base62_decode)
    # 62 * 62
    assert_equal(3844, '100'.base62_decode)
    # 62 * 62 * 62
    assert_equal(238328, '1000'.base62_decode)
  end
  
end
