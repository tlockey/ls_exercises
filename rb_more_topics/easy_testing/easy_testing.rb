require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestClass < MiniTest::Test
  def test_boolean_assertions
    value = 3
    assert(value.odd?, "value is not odd")
  end

  def test_equality_assertions
    expected = 'xyz'
    value = 'XYZ'
    assert_equal('xyz', value.downcase)
  end

  def test_nil_assertions
    value = nil
    assert_nil(value)
  end

  def test_empty_object_assertions
    list = []
    assert_empty(list)
  end

  def test_included_object_assertions
    list = ['xyz']
    assert_includes(list, 'xyz')
  end 

  def test_exception_assertions
    # Will not work because have not defined class or error:
    # assert_raises(NoExperienceError) do 
    #   employee.hire
    # end
  end

  def test_type_assertion
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end

  def test_kind_assertion
    value = 3
    assert_kind_of(Numeric, value)
  end

  def test_same_object_assertions
    # Will not work because .process not defined
    # list = []
    # assert_same(list, list.process)
  end

  def test_refutations
    list = ['xy']
    refute_includes(list, 'xyz')
  end
end
