module Cnab150
  module Layout
    # Layout of Register C
    # This is a HEADER record type
    class C < Base

      def mapping
        {
          record_code: 1,
          person_id: 25,
          branch_number: 4,
          account_number: 14,
          occurrence_1: 40,
          occurrence_2: 40,
          filler: 25,
          movement_code: 1
        }
      end

    end
  end
end
