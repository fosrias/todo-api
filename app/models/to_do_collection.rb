class ToDoCollection
  # extend Crichton::Representor::Factory
  #
  # def self.find(search_term = nil)
  #   state, todos = find_drds(search_term)
  #
  #   todos_collection = {
  #       total_count: todos.count,
  #       todos: todos
  #   }
  #   build_state_representor(todos_collection, :todos, {state: state})
  # end
  #
  # private
  #
  # def self.find_drds(search_term)
  #   if search_term
  #     [:navigation,
  #      ToDo.where('name LIKE ? or status LIKE ? or kind LIKE ?', *3.times.map { "%#{search_term}%" }).all]
  #   else
  #     [:collection,
  #      ToDo.all]
  #   end
  # end

  include Crichton::Representor::State
  represents :todos

  attr_accessor :items

  def self.find
    new(ToDo.all.to_a)
  end

  def initialize(todos)
    @items = todos
  end

  def state
    :collection
  end
end
