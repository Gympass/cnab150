module Cnab150
  module Layout
    # Layout of Register X
    # Return of collections identified by barcode
    class X < Base

      def mapping
        {
          record_code: 1,
          branch_number: 4,
          branch_name: 30,
          branch_address: 30,
          branch_number: 5,
          branch_cep_prefix: 5,
          branch_cep_sufix: 3,
          city: 20,
          state_code: 2,
          branch_status: 1,
          filler: 49
        }
      end

    end
  end
end