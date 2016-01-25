module Cnab150
  module Layout
    # Layout of Register H
    # Return of collections identified by barcode
    class H

      def layout
        'A' + [1, 25, 4, 14, 25, 58, 22, 1].join('A')
      end

      def mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
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