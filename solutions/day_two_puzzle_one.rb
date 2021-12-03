require_relative 'solution_base'
require_relative '../data_structures/submarine'

module AdventOfCode
  module Solutions
    class DayTwoPuzzleOne < SolutionBase

      def self.solve(input_type)
        input = get_input(input_type)

        sub = DataStructures::Submarine.new
        sub.travel(input)

        sub.horizontal_distance * sub.depth
      end

    end
  end
end
