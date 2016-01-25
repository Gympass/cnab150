module Cnab150
  module Layout
    # Layout of Register A
    # This is a HEADER record type
    class Base
      def layout
        @layout ||= mapping.values.map{|v| 'A' + v.to_s}.join
      end
    end
  end
end
