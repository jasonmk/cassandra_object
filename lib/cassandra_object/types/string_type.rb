module CassandraObject
  module Types
    class StringType < BaseType
      def encode(str)
        raise ArgumentError.new("#{self} requires a String") unless str.kind_of?(String)
        str.dup
      end

      def wrap(record, name, value)
        txt = (value.frozen? ? value.dup : value)
        txt.force_encoding('UTF-8') if txt.respond_to?(:force_encoding)
      end
    end
  end
end