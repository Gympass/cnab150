module Cnab150
  module Layout
    # Layout of Register H
    # Return of collections identified by barcode
    class H < Base

      def mapping
        {
          record_code: 1,
          person_id: 25,
          branch_number: 4,
          account_number: 14,
          current_person_id: 25,
          occurrence: 58,
          filler: 22,
          movement_code: 1
        }
      end

    end
  end
end