require 'test_helper'

class CassandraObject::Types::JsonTypeTest < CassandraObject::Types::TestCase
  test 'encode' do
    assert_equal({:a => 'b'}.to_json, coder.encode(:a => 'b'))
    assert_equal '-3', coder.encode(-3)
  end

  test 'decode' do
    assert_equal({'a' => 'b'}, coder.decode({'a' => 'b'}.to_json))
  end
end
