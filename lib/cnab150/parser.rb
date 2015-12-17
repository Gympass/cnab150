module Cnab150
  # The Parser class is responsible to split up the string into a hash.
  class Parser
    def self.build(line, layout)
      new(line, layout)
    end

    def initialize(line, layout)
      @line = line
      @layout = layout
    end

    def to_hash(keys)
      Hash[keys.zip(to_a.map {|e| e = e.strip})]
    end

    def to_a
      @_process ||= @line.unpack(@layout)
    end
  end
end
