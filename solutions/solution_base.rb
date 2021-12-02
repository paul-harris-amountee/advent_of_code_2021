module AdventOfCode
  module Solutions
    class SolutionBase

      DAY = 'Day'
      PUZZLE = 'Puzzle'

      def self.solve(input_type)
        'Base puzzle solved! Good jerb!'
      end

      def self.get_input(input_type = :sample)
        file_name = File.join(Dir.pwd, 'inputs', "day_#{day}_puzzle_#{puzzle}_#{input_type}_input.txt")
        File.open(file_name).readlines
      end

      def self.day
        name = self.name
        day_fragment = name[day_index..puzzle_index(name)]
        fragment_to_integer(day_fragment)
      end

      def self.puzzle
        name = self.name
        puzzle_fragment = name[puzzle_index(name)..name.length]
        fragment_to_integer(puzzle_fragment)
      end

      def self.day_index
        name.to_s.index(DAY) + DAY.length
      end

      def self.puzzle_index(name)
        name.to_s.index(PUZZLE) + PUZZLE.length
      end

      def self.fragment_to_integer(fragment)
        case fragment.to_s
        when /^One/
          1
        when /^Two/
          2
        end
      end

    end
  end
end
