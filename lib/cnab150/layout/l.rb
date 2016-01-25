module Cnab150
  module Layout
    # Layout of Register L
    # Return of collections identified by barcode
    class L < Base

      def mapping
        {
          record_code: 1,
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