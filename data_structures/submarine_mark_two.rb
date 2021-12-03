module AdventOfCode
  module DataStructures
    class SubmarineMarkTwo < Submarine

      def initialize
        super
        @aim = 0
      end

      def forward(distance)
        @horizontal_distance += distance
        @depth += (@aim * distance)
      end

      def up(units)
        @aim -= units
      end

      def down(units)
        @aim += units
      end

    end
  end
end