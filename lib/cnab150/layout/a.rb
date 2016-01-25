module Cnab150
  module Layout
    # Layout of Register A
    # This is a HEADER registry type
    class A

      def layout
        mapping.values.map{|v| 'A' + v}.join
      end

      def mapping
        {
          registry_code: 1,
          registry_type: 1,
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
