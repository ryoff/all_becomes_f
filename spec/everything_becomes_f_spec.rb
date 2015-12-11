require 'spec_helper'
require 'pry'

describe "#everything_became_f?" do
  it 'has a version number' do
    expect(EverythingBecomesF::VERSION).not_to be nil
  end

  describe Integer do
    where(:integer, :result) do
      [
        [0, false],
        [1, false],
        [10, false],
        [15, true],
        [16, false],
        [254, false],
        [255, true],
        [256, false],
        [65534, false],
        [65535, true],
        [65536, false]
      ]
    end

    with_them do
      subject { integer.everything_became_f? }

      it { is_expected.to eq result }
    end
  end

  describe String do
    where(:string, :result) do
      [
        ['a', false],
        ['af', false],
        ['fa', false],
        ['A', false],
        ['AF', false],
        ['FA', false],
        ['ffffffffffffffffffffffffffffffffffffffffffffffffffe', false],
        ['effffffffffffffffffffffffffffffffffffffffffffffffff', false],
        ['f', true],
        ['fF', true],
        ['FF', true],
        ['ffffffffffffffffffffffffffffffffffffffffffffffffff', true],
        ['FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', true]
      ]
    end

    with_them do
      subject { string.everything_became_f? }

      it { is_expected.to eq result }
    end
  end
end
