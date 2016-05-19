module Sneakers
  module Metrics
    class StatsdMetrics
      def initialize(conn)
        @connection = conn
      end

      def count(metric, value)
        @connection.count(metric, value)
      end

      def increment(metric)
        @connection.increment(metric)
      end

      def timing(metric, &block)
        start = Time.now
        block.call
        elapsed = ((Time.now - start)*1000).floor
        @connection.timing(metric, elapsed)
        elapsed
      end

    end
  end
end

