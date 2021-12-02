require_relative 'solution_base'
require_relative '../data_structures/linked_node'

module AdventOfCode
  module Solutions
    class DayOnePuzzleOne < SolutionBase

      def self.solve(input_type)
        input = get_input(input_type)

        head = DataStructures::LinkedNode.new(input[0].to_i)

        input[1..input.length].each do |line|
          head.add_to_tail(DataStructures::LinkedNode.new(line.rstrip.to_i))
        end

        head.strictly_greater_neighbor_count
      end

    end
  end
end
