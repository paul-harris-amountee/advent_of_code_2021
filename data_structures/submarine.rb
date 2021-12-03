module AdventOfCode
  module DataStructures
    class Submarine

      attr_accessor :horizontal_distance, :depth

      def initialize
        @horizontal_distance = 0
        @depth = 0
      end

      def travel(input)
        input.each do |command|
          eval(command)
        end
      end

      def forward(distance)
        @horizontal_distance += distance
      end

      def up(distance)
        # No need to check if we rise above the ocean's surface. This is Santa's sub and it can fly.
        @depth -= distance
      end

      def down(distance)
        @depth += distance
      end

    end
  end
end