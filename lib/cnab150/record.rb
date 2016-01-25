module Cnab150
  # The Record class is responsible to transform the string into a object
  # and is the public interface.
  class Record
    def initialize(line, record, parse = Cnab150::Parser)
      @line = line
      @record = record
      @parse = parse
    end

    def to_hash
      @_r ||= values.to_hash(@record.mapping.keys)
    end

    def raw
      @line
    end

    private

    def values
      @_v ||= @parse.build(@line, @record.layout)
    end

    def method_missing(method)
      return to_hash[method] if to_hash.key?(method.to_sym)
      super
    end
  end
end
