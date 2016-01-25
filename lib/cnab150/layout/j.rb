module Cnab150
  module Layout
    # Layout of Register J
    # Return of collections identified by barcode
    class J

      def layout
        'A' + [1, 6, 8, 6, 17, 8, 104].join('A')
      end

      def mapping
        {
          registry_code: 1,
          NSA: 6,
          generation_date: 8,
          total_registries: 6,
          total_value: 17,
          processing_date: 8,
          filler: 104
        }
      end

    end
  end
end