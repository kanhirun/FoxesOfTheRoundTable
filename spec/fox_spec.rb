require 'spec_helper'


describe Fox do

  let(:fox) { Fox.new(1, 10) }

  it 'should have an id attribute' do
    expect(fox).to respond_to :id
  end

  it 'should have a height attribute' do
    expect(fox).to respond_to :height
  end
end
