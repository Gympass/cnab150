module Cnab150
  module Layout
    # Layout of Register Z
    # This is a TRAILER record
    class Z < Base

      def mapping
        {
          record_code: 1,
          rows: 6,
          total: 17,
          filler: 126
        }
      end

    end
  end
end
