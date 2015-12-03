module Cnab150
  module Layout
    # Layout of Register Z
    # This is a TRAILER registry
    class Z
      def keys
        [
          :registry_code,
          :rows,
          :total,
          :filler
        ]
      end

      def layout
        'A' + [1, 6, 17, 126].join('A')
      end

      def self.mapping
        {
          registry_code: 1,
          rows: 6,
          total: 17,
          filler: 126
        }
      end

    end
  end
end
