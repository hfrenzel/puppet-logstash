# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'logstash module' do
  it 'is available' do
    shell(
      "ls #{default['distmoduledir']}/logstash/metadata.json",
      acceptable_exit_codes: 0
    )
  end

  it 'is parsable' do
    shell(
      "puppet parser validate #{default['distmoduledir']}/logstash/manifests/*.pp",
      acceptable_exit_codes: 0
    )
  end
end
