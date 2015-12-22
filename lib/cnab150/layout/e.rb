module Cnab150
  module Layout
    # Layout of Register E
    # Return of collections identified by barcode
    class E

      def layout
        'A' + [1, 25, 4, 14, 8, 15, 2, 60, 20, 1].join('A')
      end

      def mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
          account_number: 14,
          due_date: 8,
          total_value: 15,
          currency_code: 2,
          token: 60,
          filler: 20,
          movement_code: 1
        }
      end

    end
  end
end
