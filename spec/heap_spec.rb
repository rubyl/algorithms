require '../heap'

describe Heap do

  let(:heap) { Heap.new() }
  describe "#size" do

    context "0 elements" do
      it{ expect(heap.size()).to eq 0}
    end

    context "1 element" do
    #place holder
    end
  end

  describe "#insert" do
    context "insert 1 element" do
      before do
        heap.insert(10)
      end

      it{ expect(heap.size()).to eq 1 }
      it{ expect(heap.peek()).to eq 10 }
    end

    context "insert 2 element" do
      before do
        heap.insert(10)
        heap.insert(11)
      end

      it{ expect(heap.size()).to eq 2 }
      it{ expect(heap.peek()).to eq 11 }
    end

  end


  describe "#peek" do
    context "1 inserted element" do
      before do
        heap.insert(10)
      end

      it{ expect(heap.peek()).to eq 10 }
    end

    context "2 inserted elements" do
      describe "first value is greater than second" do
        before do
          heap.insert(20)
          heap.insert(10)
        end
        it{ expect(heap.peek()).to eq 20 }
        it{ expect(heap.size()).to eq 2 }

      end

      describe "second value is greater than first" do
        before do
          heap.insert(10)
          heap.insert(20)
        end
        it{ expect(heap.peek()).to eq 20 }
        it{ expect(heap.size()).to eq 2 }
      end
    end
  end


  describe "#pop" do
    context "remove 1 element" do
      let(:inserted_value) { 10 }
      before do
        heap.insert(inserted_value)
      end
      it{
        expect(heap.pop()).to eq inserted_value
        expect(heap.size()).to eq 0
      }
    end

    describe "remove 4 elements" do
      before do
        heap.insert(10)
        heap.insert(20)
        heap.insert(13)
        heap.insert(15)
      end
      it{
        expect(heap.size()).to eq 4
        poped_value = heap.pop()
        expect(heap.size()).to eq 3
        expect(poped_value).to eq 20
        poped_value = heap.pop()
        expect(heap.size()).to eq 2
        expect(poped_value).to eq 15
        poped_value = heap.pop()
        expect(heap.size()).to eq 1
        expect(poped_value).to eq 13
        poped_value = heap.pop()
        expect(heap.size()).to eq 0
        expect(poped_value).to eq 10
      }
    end
  end

  describe "new comparison block" do

    describe "alpabetical comparison" do
      let(:comparison_block) {lambda do |a, b|
        a.downcase <= b.downcase
      end
      }
      let(:heap) { Heap.new(comparison_block)}
      describe "remove 4 elements" do
        before do
          heap.insert("Michelle")
          heap.insert("Ruby")
          heap.insert("Aaron")
          heap.insert("Sean")
        end
        it{
          expect(heap.size()).to eq 4
          poped_value = heap.pop()
          expect(heap.size()).to eq 3
          expect(poped_value).to eq "Aaron"
          poped_value = heap.pop()
          expect(heap.size()).to eq 2
          expect(poped_value).to eq "Michelle"
          poped_value = heap.pop()
          expect(heap.size()).to eq 1
          expect(poped_value).to eq "Ruby"
          poped_value = heap.pop()
          expect(heap.size()).to eq 0
          expect(poped_value).to eq "Sean"
        }
      end
    end

    describe "object comparison" do
      let(:comparison_block) {lambda do |person_a, person_b|
        person_a['age'] < person_b['age']
      end
      }
      let(:heap) { Heap.new(comparison_block)}
      describe "remove 4 elements" do
        before do
          heap.insert({'age' => 34})
          heap.insert({'age' => 16})
          heap.insert({'age' => 10})
          heap.insert({'age' => 80})
        end
        it{
          expect(heap.size()).to eq 4
          person = heap.pop()
          expect(heap.size()).to eq 3
          expect(person['age']).to eq 10
          person = heap.pop()
          expect(heap.size()).to eq 2
          expect(person['age']).to eq 16
          person = heap.pop()
          expect(heap.size()).to eq 1
          expect(person['age']).to eq 34
          person = heap.pop()
          expect(heap.size()).to eq 0
          expect(person['age']).to eq 80
        }
      end
    end
  end

end