module Cnab150
  module Layout
    # Layout of Register C
    # This is a HEADER registry type
    class C
      def keys
        [
          :registry_code,
          :person_id,
          :agency,
          :bank_person_id,
          :occurrence_1,
          :occurrence_2,
          :filler,
          :movement_code
        ]
      end

      def layout
        'A' + [1, 25, 4, 14, 40, 40, 25, 1].join('A')
      end

      def self.mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
          bank_person_id: 14,
          occurrence_1: 40,
          occurrence_2: 40,
          filler: 25,
          movement_code: 1
        }
      end

    end
  end
end