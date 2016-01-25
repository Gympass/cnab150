module Cnab150
  module Layout
    # Layout of Register T
    # Return of collections identified by barcode
    class T < Base

      def mapping
        {
          record_code: 1,
          total_records: 6,
          total_value: 17,
          filler: 126
        }
      end

    end
  end
end