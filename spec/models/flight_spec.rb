require 'spec_helper'

describe Flight do
  it { should validate_presence_of :logfile }
end
