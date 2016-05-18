module Sneakers
  module Metrics
    class NullMetrics
      def count(metric, value)
      end

      def increment(metric)
      end

      def timing(metric, &block)
        block.call
      end
    end
  end
end

