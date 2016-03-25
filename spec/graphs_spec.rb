require '../graphs'

describe Graph do
  let(:graph) {Graph.new}
  let(:city_name) {'Los Angeles'}

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
      it { expect(graph.size).to eq 1}
    end

    context 'add to graph with 1 item' do
      before do
        graph.insert(city_name)
        graph.insert('San Francisco')
      end
      it { expect(graph.size).to eq 2}
    end
  end

  describe '#remove' do
    context 'remove 1 item' do
      before do
        graph.insert(city_name)
      end
      it { expect(graph.remove(city_name).size).to eq 0}
    end
  end

end