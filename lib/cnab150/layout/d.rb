module Cnab150
  module Layout
    # Layout of Register D
    # Return of collections identified by barcode
    class D < Base

      def mapping
        {
          record_code: 1,
          person_id: 25,
          branch_number: 4,
          account_number: 14,
          current_person_id: 25,
          occurrence: 60,
          filler: 20,
          movement_code: 1
        }
      end

    end
  end
end