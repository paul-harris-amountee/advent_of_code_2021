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
        case day_fragment
        when /^One/
          1
        end
      end

      def self.puzzle
        name = self.name
        puzzle_fragment = name[puzzle_index(name)..name.length]
        case puzzle_fragment
        when /^One/
          1
        when /^Two/
          2
        end
      end

      def self.day_index
        name.to_s.index(DAY) + DAY.length
      end

      def self.puzzle_index(name)
        name.to_s.index(PUZZLE) + PUZZLE.length
      end

    end
  end
end