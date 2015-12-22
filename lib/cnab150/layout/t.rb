module Cnab150
  module Layout
    # Layout of Register T
    # Return of collections identified by barcode
    class T

      def layout
        'A' + [1, 6, 17, 126].join('A')
      end

      def mapping
        {
          registry_code: 1,
          total_registries: 6,
          total_value_registries: 17,
          filler: 126
        }
      end

    end
  end
end