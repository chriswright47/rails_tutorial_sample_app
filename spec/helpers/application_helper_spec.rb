require 'spec_helper'

describe ApplicationHelper do

  describe 'full_title' do
    it 'should include the page title' do
      expect(full_title('foo') =~ /foo/).to_not eq nil
    end
    it 'should include the base title' do
      expect(full_title('foo') =~ /RoR Tutorial/).to_not eq nil
    end
    it 'should not include a bar on home page' do
      expect(full_title('') =~ /\|/).to eq nil
    end
  end
end
