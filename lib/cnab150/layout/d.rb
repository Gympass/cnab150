module Cnab150
  module Layout
    # Layout of Register D
    # Return of collections identified by barcode
    class D
      def keys
         [ 
           :registry_code,
           :person_id,
           :agency,
           :bank_person_id,
           :current_person_id,
           :occurrence,
           :filler,
           :movement_code
        ]
      end

      def layout
        'A' + [1, 25, 4, 14, 25, 60, 20, 1].join('A')
      end

      def self.mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
          bank_person_id: 14,
          current_person_id: 25,
          occurrence: 60,
          filler: 20,
          movement_code: 1
        }
      end

    end
  end
end