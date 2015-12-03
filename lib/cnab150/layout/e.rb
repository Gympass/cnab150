module Cnab150
  module Layout
    # Layout of Register E
    # Return of collections identified by barcode
    class E
      def keys
        [ 
          :registry_code,
          :person_id,
          :agency,
          :bank_person_id,
          :due_date,
          :total_value,
          :currency_code,
          :token,
          :filler,
          :movement_code
       ]
      end

      def layout
        'E' + [1, 25, 4, 14, 8, 15, 2, 60, 20, 1].join('E')
      end

      def self.mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
          bank_person_id: 14,
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
