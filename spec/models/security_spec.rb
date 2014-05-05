require 'spec_helper'

describe Security do

  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'associations' do
    it { should have_many :performances }
  end


end
