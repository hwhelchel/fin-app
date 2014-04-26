require 'spec_helper'

describe EquityValue do

  describe 'associations' do
    it { should belong_to :security }
    it { should belong_to :year }
  end

end