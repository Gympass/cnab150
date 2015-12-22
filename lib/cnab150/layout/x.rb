module Cnab150
  module Layout
    # Layout of Register X
    # Return of collections identified by barcode
    class X

      def layout
        'A' + [1, 4, 30, 30, 5, 5, 3, 20, 2, 1, 49].join('A')
      end

      def mapping
        {
          registry_code: 1,
          agency: 4,
          agency_name: 30,
          agency_address: 30,
          agency_number: 5,
          agency_cep_prefix: 5,
          agency_cep_sufix: 3,
          city: 20,
          state_code: 2,
          agency_status: 1,
          filler: 49
        }
      end

    end
  end
end