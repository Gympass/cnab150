module Cnab150
  module Layout
    # Layout of Register B
    # This is a HEADER registry type
    class B

      def layout
        'A' + [1, 25, 4, 14, 8, 97, 1].join('A')
      end

      def mapping
        {
          registry_code: 1,
          person_id: 25,
          agency: 4,
          account_number: 14,
          due_date: 8,
          filler: 97,
          movement_code: 1
        }
      end

    end
  end
end