class Node
  def initialize(value)
    @value = value
    @adjacent_nodes = []
  end

  def add_edge(adjacent_node)
    @adjacent_nodes.push(adjacent_node)
  end

  attr_reader :value
end
# Put together a script that creates a game board and a knight.

class Gameboard
  def initialize
    i = 1
    letter = 65
    64.times do
      if i == 9
        i = 1
        letter += 1
        print "\n"
      end

      new_node = Node.new("#{letter.chr}#{i}")
      i += 1
      print "#{new_node.value} "
    end
  end
end

Gameboard.new

# Treat all possible moves the knight could make as children in a tree. Don’t allow any moves to go off the board.

# Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.

# Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like, e.g.:
