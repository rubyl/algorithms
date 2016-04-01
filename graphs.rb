class Graph

  include RSpec::Matchers

  def initialize
    @city_indexes = {}
  end

  def size
    @city_indexes.size
  end

  def insert(city_name)
    neighbors = []
    @city_indexes[city_name] = neighbors
  end

  def remove(city_name)
    if @city_indexes[city_name] == nil
      raise city_name + ' not in graph!'
    end
    @city_indexes.delete(city_name)
    return self
  end

  def make_neighbors(start_city, end_city)
    get_neighbors(end_city)
    neighbors = get_neighbors(start_city)
    neighbors << end_city
  end

  # def get_city_name(city_name)
  #   neighbors = get_neighbors(city)
  # end

  # TODO: do not expose internal array
  def get_neighbors(city_name)
    neighbors = @city_indexes[city_name]
    if neighbors == nil
      raise city_name + ' does not exist in graph!'
    end
    return neighbors
  end

  def is_neighbor?(start_city, end_city)
    start_city_neighbors = get_neighbors(start_city)
    start_city_neighbors.include?(end_city)
  end
end

