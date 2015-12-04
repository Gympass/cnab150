module Cnab150
  module Layout
    # Layout of Register F
    # Return of collections identified by barcode
    class F
      def keys
        [ 
          :registry_code,
          :person_id,
          :agency,
          :bank_person_id,
          :due_date,
          :total_value,
          :return_code,
          :company_filler,
          :filler,
          :movement_code
       ]
      end

      def layout
        'A' + [1, 25, 4, 14, 8, 15, 2, 60, 20, 1].join('A')
      end

      def self.mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
          bank_person_id: 14,
          due_date: 8,
          total_value: 15,
          return_code: 2,
          company_filler: 60,
          filler: 20,
          movement_code: 1
        }
      end

    end
  end
end