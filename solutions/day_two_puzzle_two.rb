require_relative 'solution_base'
require_relative '../data_structures/submarine_mark_two'

module AdventOfCode
  module Solutions
    class DayTwoPuzzleTwo < SolutionBase

      def self.solve(input_type)
        input = get_input(input_type)

        sub = DataStructures::SubmarineMarkTwo.new
        sub.travel(input)

        sub.horizontal_distance * sub.depth
      end

    end
  end
end
