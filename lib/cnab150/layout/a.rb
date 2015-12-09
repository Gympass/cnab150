module Cnab150
  module Layout
    # Layout of Register A
    # This is a HEADER registry type
    class A
      def keys
        [
          :registry_code,
          :registry_type,
          :agreement,
          :organization,
          :bank_code,
          :bank_name,
          :file_date,
          :file_number,
          :version,
          :service,
          :filler
       ]
      end

      def layout
        'A' + [1, 1, 20, 20, 3, 20, 8, 6, 2, 17, 52].join('A')
      end

      def self.mapping
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
