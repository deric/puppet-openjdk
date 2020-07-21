# frozen_string_literal: true

require 'spec_helper'

describe 'openjdk::adopt' do

  let(:params) do
    {
      versions: ['8-openj9xl','14-openj9xl']
    }
  end

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it { is_expected.to contain_package('adoptopenjdk-8-openj9xl') }
      it { is_expected.to contain_package('adoptopenjdk-14-openj9xl') }

    end
  end
end
