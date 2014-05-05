require 'spec_helper'

describe Performance do

  describe 'associations' do
    it { should belong_to :security }
    it { should belong_to :year }
  end

end