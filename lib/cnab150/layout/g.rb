module Cnab150
  module Layout
    # Layout of Register G
    # Return of collections identified by barcode
    class G
      def keys
        [:registry_code, :account, :payment_date,   :credit_date,
         :barcode,       :value,   :service_value,  :registry_number,
         :agency,        :channel, :authentication, :payment_type,
         :filler]
      end

      def layout
        'A' + [1, 20, 8, 8, 44, 12, 7, 8, 4, 1, 26, 5, 1].join('A')
      end

      def self.mapping
        {
          registry_code: 1,
          account: 20,
          payment_date: 8,
          credit_date: 8,
          barcode: 44,
          value: 12,
          service_value: 7,
          registry_number: 8,
          agency: 4,
          channel: 1,
          authentication: 26,
          payment_type: 5,
          filler: 1
        }
      end

    end
  end
end
