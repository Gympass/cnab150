module Cnab150
  module Layout
    # Layout of Register E
    # Return of collections identified by barcode
    class E < Base

      def mapping
        {
          record_code: 1,
          person_id: 25,
          branch_number: 4,
          account_number: 14,
          due_date: 8,
          total_value: 15,
          currency_code: 2,
          token: 60,
          cnpj_or_cpf_type: 1,
          cnpj_or_cpf: 14,
          filler: 5,
          movement_code: 1
        }
      end

    end
  end
end
