require 'test_helper'

class CassandraObject::Types::StringTypeTest < CassandraObject::Types::TestCase
  test 'encode' do
    assert_equal 'abc', coder.encode('abc')

    assert_raise ArgumentError do
      coder.encode(123)
    end
  end

  # These tests only make sense on Ruby 1.9.2
  if "".respond_to?(:force_encoding)
    test 'wrap' do
      assert_equal(
        '123'.force_encoding('UTF-8').encoding,
        coder.wrap(nil, nil, '123'.force_encoding('ASCII-8BIT')).encoding
      )
    end
  
    test 'wrap when frozen' do
      assert_equal(
        '123'.force_encoding('UTF-8').encoding,
        coder.wrap(nil, nil, '123'.force_encoding('ASCII-8BIT').freeze).encoding
      )
    end
  end
end