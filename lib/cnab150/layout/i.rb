module Cnab150
  module Layout
    # Layout of Register I
    # Return of collections identified by barcode
    class I < Base

      def mapping
        {
          record_code: 1,
          person_id: 25,
          document_type: 1,
          document_number: 14,
          name: 40,
          city: 30,
          state: 2,
          filler: 37
        }
      end

    end
  end
end