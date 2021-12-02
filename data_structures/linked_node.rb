module AdventOfCode
  module DataStructures
    class LinkedNode

      attr_accessor :value

      def initialize(value)
        @value = value
      end

      def add_to_tail(linked_node)
        return nil unless linked_node.is_a? LinkedNode

        if @neighbor.nil?
          @neighbor = linked_node
        else
          @neighbor.add_to_tail(linked_node)
        end
      end

      def neighbor_strictly_greater?(measure = 1)
        return false if @neighbor.nil? || @neighbor.sliding_value(measure).nil?

        sliding_value(measure) < @neighbor.sliding_value(measure)
      end

      def strictly_greater_neighbor_count(measure = 1)
        return 0 if @neighbor.nil? || @neighbor.sliding_value(measure).nil?

        tail_result = @neighbor.strictly_greater_neighbor_count(measure)
        neighbor_strictly_greater?(measure) ? (tail_result + 1) : tail_result
      end

      def sliding_value(measure)
        return @value if measure == 1
        return nil if @neighbor.nil?

        tail_result = @neighbor.sliding_value(measure - 1)
        return nil if tail_result.nil?

        @value + tail_result
      end

    end
  end
end