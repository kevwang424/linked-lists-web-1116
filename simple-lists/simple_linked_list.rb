class LinkedList
  attr_accessor :head, :index_at, :insert_at_index, :unshift, :push, :data

  def initialize(data)
    @data = data
    @head = Node.new(data, nil)
  end

  def index_at(index)
    if node_at(index)
      node_at(index).data
    else
      return nil
    end
  end

  def node_at(index)
    current_node = self.head
    i = 0
    if index == 0
      return current_node
    end

    while i < index do
      if current_node
        current_node = current_node.next
      else
        return nil
      end
      i+=1
    end

    current_node
  end

  def insert_at_index(index, value)
    current_node = node_at(index)
    new_node = Node.new(value, current_node)

    repointed_node = node_at(index-1)

    if repointed_node
      repointed_node.next = new_node
    end


  end

end


class Node
  attr_accessor :next

  def initialize(value, next_node)
    @value = value
    @next = next_node
  end

  def data
    @value
  end

end
