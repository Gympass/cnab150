module Cnab150
  module Layout
    # Layout of Register C
    # This is a HEADER registry type
    class C

      def layout
        mapping.values.map{|v| 'A' + v}.join
      end

      def mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
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
