require 'spec_helper'

describe Cnab150::Record do
  subject { described_class.new('', record, parse) }

  describe '.to_hash' do
    before { subject.to_hash }
    let(:record) { spy }
    let(:parse) { spy }

    it { expect(record).to have_received(:layout) }
    it { expect(parse).to have_received(:build) }
  end

  describe 'getters' do
    let(:record) { double.as_null_object }
    let(:parse) { double(build: double(to_hash: values)) }
    let(:values) { { name: 'starlord', address: 'avenue' } }

    it { expect(subject.name).to eql 'starlord' }
    it { expect(subject.address).to eql 'avenue' }
    it { expect { subject.not_exist }.to raise_error(NoMethodError) }
  end

  describe '.raw' do
    subject { described_class.new('2345678 987654', double, double) }

    it 'returns the raw record' do
      expect(subject.raw).to eql '2345678 987654'
    end
  end
end
