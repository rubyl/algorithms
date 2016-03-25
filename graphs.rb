class Graph

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
    @city_indexes.delete(city_name)
  end
end

