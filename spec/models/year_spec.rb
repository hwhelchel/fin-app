require 'spec_helper'

describe Year do

  describe 'associations' do
    it { should have_many :performances }
  end

end