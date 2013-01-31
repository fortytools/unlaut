# coding: utf-8
require 'unlaut'
require "test/unit"
 
class TestUnlaut < Test::Unit::TestCase
  def test_basics
    assert_equal 'Gruss Gott, das musste klappen',  'Grüß Gott, das müsste klappen'.no_i18n
  end
end
