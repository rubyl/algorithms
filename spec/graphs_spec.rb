require '../graphs'
require 'rspec/expectations'

describe Graph do
  let(:graph) {Graph.new}
  let(:city_name) {'Los Angeles'}
  let(:city_name2) {'San Francisco'}

  describe '#size' do
    context 'newly constructed graph' do
      it { expect(graph.size).to eq 0 }
    end
  end

  describe '#insert' do
    context 'add to empty graph' do
      before do
        graph.insert(city_name)
      end
      it { expect(graph.size).to eq 1 }
    end

    context 'add to graph with 1 item' do
      before do
        graph.insert(city_name)
        graph.insert(city_name2)
      end
      it { expect(graph.size).to eq 2 }
    end
  end

  describe '#remove' do
    context 'remove 1 item' do
      before do
        graph.insert(city_name)
      end
      it { expect(graph.remove(city_name).size).to eq 0 }
    end

    context 'remove 2 item' do
      before do
        graph.insert(city_name)
        graph.insert(city_name2)
      end
        it { expect(graph.remove(city_name).size).to eq 1 }
    end

    # context 'with no item' do
    #   it { expect(graph.remove(city_name).to raise_error(RuntimeError, city_name + ' not in graph!'))}
    # end
  end

  describe '#is_neighbors' do
    context 'with 2 nodes' do
      before do
        graph.insert(city_name)
        graph.insert(city_name2)
        graph.make_neighbors(city_name, city_name2)
      end
      it { expect(graph.is_neighbor?(city_name,city_name2)).to eq true}
    end
  end

  describe '#make_neighbors' do
    context 'with 2 nodes' do
      before do
        graph.insert(city_name)
        graph.insert(city_name2)
        graph.make_neighbors(city_name, city_name2)
      end
      it { expect(graph.get_neighbors(city_name).size).to eq 1 }
      it { expect(graph.is_neighbor?(city_name, city_name2)).to eq true }
    end

    context 'with 1 nodes' do
      before do
        graph.insert(city_name)
        graph.insert(nil)
      end
      it { expect(graph.get_neighbors(city_name).size).to eq 0 }
      it { expect(graph.is_neighbor?(city_name, nil)).to eq false }
      it { expect(graph.get_neighbors(nil).size).to eq 0 }
      it { expect(graph.is_neighbor?(nil, city_name)).to eq false }
    end

    context 'with multiple nodes' do
      before do
        graph.insert(city_name)
        graph.insert(city_name2)
        graph.insert('Las Vegas')
        graph.insert('Seattle')
        graph.make_neighbors(city_name, city_name2)
        graph.make_neighbors(city_name, 'Las Vegas')
        graph.make_neighbors(city_name, 'Seattle')
      end
      it { expect(graph.get_neighbors(city_name).size).to eq 3 }
      it { expect(graph.is_neighbor?(city_name, city_name2)).to eq true }
      it { expect(graph.is_neighbor?(city_name, 'Las Vegas')).to eq true }
      it { expect(graph.is_neighbor?('Las Vegas', city_name)).to eq false }
      it { expect(graph.is_neighbor?(city_name2, 'Las Vegas')).to eq false}
    end

    context 'no nodes' do
      it { expect(graph.size).to eq 0}
    end
  end
#
# make neighbor with context start city doesn't exist, end city doesn't exist, multiple neighbors, empty graph,
end