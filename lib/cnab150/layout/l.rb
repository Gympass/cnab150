module Cnab150
  module Layout
    # Layout of Register L
    # Return of collections identified by barcode
    class L

      def layout
        'A' + [1, 8, 8, 8, 8, 117].join('A')
      end

      def mapping
        {
          registry_code: 1,
          billing_date: 8,
          due_date: 8,
          shipping_date: 8,
          person_shipping_date: 8,
          filler: 117
        }
      end

    end
  end
end