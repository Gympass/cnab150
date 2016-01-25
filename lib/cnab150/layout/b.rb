module Cnab150
  module Layout
    # Layout of Register B
    # This is a HEADER record type
    class B < Base

      def mapping
        {
          record_code: 1,
          person_id: 25,
          branch_number: 4,
          account_number: 14,
          due_date: 8,
          filler: 97,
          movement_code: 1
        }
      end

    end
  end
end
