module Cnab150
  module Layout
    # Layout of Register A
    # This is a HEADER record type
    class A < Base
      def mapping
        {
          record_code: 1,
          record_type: 1,
          agreement: 20,
          organization: 20,
          bank_code: 3,
          bank_name: 20,
          file_date: 8,
          file_number: 6,
          version: 2,
          service: 17,
          filler: 52
        }
      end

    end
  end
end
