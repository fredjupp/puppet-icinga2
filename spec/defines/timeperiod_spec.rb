require 'spec_helper'

describe('icinga2::object::timeperiod', :type => :define) do
  let(:title) { 'bar' }
  let(:pre_condition) { [
      "class { 'icinga2': }"
  ] }

  on_supported_os.each do |os, facts|
    let :facts do
      facts
    end

    context "#{os} with all defaults and target => /bar/baz" do
      let(:params) { {:target =>  '/bar/baz'} }

      it { is_expected.to contain_concat('/bar/baz') }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/object Timeperiod "bar"/)
                              .without_content(/assign where/)
                              .without_content(/ignore where/) }

      it { is_expected.to contain_icinga2__object('icinga2::object::Timeperiod::bar')
                              .that_notifies('Class[icinga2::service]') }
    end


    context "#{os} with display_name => foo" do
      let(:params) { {:display_name => 'foo', :target => '/bar/baz'} }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/display_name = "foo"/) }
    end


    context "#{os} with display_name => 4247 (not a valid string)" do
      let(:params) { {:display_name => 4247, :target => '/bar/baz'} }

      it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
    end


    context "#{os} with update => foo" do
      let(:params) { {:update => 'foo', :target => '/bar/baz'} }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/update = "foo"/) }
    end


    context "#{os} with update => 4247 (not a valid string)" do
      let(:params) { {:update => 4247, :target => '/bar/baz'} }

      it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
    end


    context "#{os} with ranges => foo" do
      let(:params) { {:ranges => 'foo', :target => '/bar/baz'} }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/ranges = "foo"/) }
    end


    context "#{os} with ranges => 4247 (not a valid string)" do
      let(:params) { {:ranges => 4247, :target => '/bar/baz'} }

      it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
    end


    context "#{os} with prefer_incluces => false" do
      let(:params) { {:prefer_includes => false, :target => '/bar/baz'} }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/prefer_includes = false/) }
    end


    context "#{os} with prefer_includes => foo (not a valid boolean)" do
      let(:params) { {:prefer_includes => 'foo', :target => '/bar/baz'} }

      it { is_expected.to raise_error(Puppet::Error, /"foo" is not a boolean/) }
    end


    context "#{os} with excludes => foo" do
      let(:params) { {:excludes => 'foo', :target => '/bar/baz'} }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/excludes = "foo"/) }
    end


    context "#{os} with excludes => 4247 (not a valid string)" do
      let(:params) { {:excludes => 4247, :target => '/bar/baz'} }

      it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
    end


    context "#{os} with includes => foo" do
      let(:params) { {:includes => 'foo', :target => '/bar/baz'} }

      it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                              .with({'target' => '/bar/baz'})
                              .with_content(/includes = "foo"/) }
    end


    context "#{os} with includes => 4247 (not a valid string)" do
      let(:params) { {:includes => 4247, :target => '/bar/baz'} }

      it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
    end
  end
end

describe('icinga2::object::timeperiod', :type => :define) do
  let(:facts) { {
      :kernel => 'Windows',
      :architecture => 'x86_64',
      :osfamily => 'Windows',
      :operatingsystem => 'Windows',
      :operatingsystemmajrelease => '2012 R2',
      :path => 'C:\Program Files\Puppet Labs\Puppet\puppet\bin;
               C:\Program Files\Puppet Labs\Puppet\facter\bin;
               C:\Program Files\Puppet Labs\Puppet\hiera\bin;
               C:\Program Files\Puppet Labs\Puppet\mcollective\bin;
               C:\Program Files\Puppet Labs\Puppet\bin;
               C:\Program Files\Puppet Labs\Puppet\sys\ruby\bin;
               C:\Program Files\Puppet Labs\Puppet\sys\tools\bin;
               C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;
               C:\Windows\System32\WindowsPowerShell\v1.0\;
               C:\ProgramData\chocolatey\bin;',
  } }
  let(:title) { 'bar' }
  let(:pre_condition) { [
      "class { 'icinga2': }"
  ] }

  context "Windows 2012 R2 with all defaults and target => /bar/baz" do
    let(:params) { {:target =>  '/bar/baz'} }

    it { is_expected.to contain_concat('/bar/baz') }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/object Timeperiod "bar"/)
                            .without_content(/assign where/)
                            .without_content(/ignore where/) }

    it { is_expected.to contain_icinga2__object('icinga2::object::Timeperiod::bar')
                            .that_notifies('Class[icinga2::service]') }
  end


  context "Windows 2012 R2 with display_name => foo" do
    let(:params) { {:display_name => 'foo', :target => '/bar/baz'} }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/display_name = "foo"/) }
  end


  context "Windows 2012 R2 with display_name => 4247 (not a valid string)" do
    let(:params) { {:display_name => 4247, :target => '/bar/baz'} }

    it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
  end


  context "Windows 2012 R2 with update => foo" do
    let(:params) { {:update => 'foo', :target => '/bar/baz'} }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/update = "foo"/) }
  end


  context "Windows 2012 R2 with update => 4247 (not a valid string)" do
    let(:params) { {:update => 4247, :target => '/bar/baz'} }

    it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
  end


  context "Windows 2012 R2 with ranges => foo" do
    let(:params) { {:ranges => 'foo', :target => '/bar/baz'} }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/ranges = "foo"/) }
  end


  context "Windows 2012 R2 with ranges => 4247 (not a valid string)" do
    let(:params) { {:ranges => 4247, :target => '/bar/baz'} }

    it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
  end


  context "Windows 2012 R2 with prefer_incluces => false" do
    let(:params) { {:prefer_includes => false, :target => '/bar/baz'} }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/prefer_includes = false/) }
  end


  context "Windows 2012 R2 with prefer_includes => foo (not a valid boolean)" do
    let(:params) { {:prefer_includes => 'foo', :target => '/bar/baz'} }

    it { is_expected.to raise_error(Puppet::Error, /"foo" is not a boolean/) }
  end


  context "Windows 2012 R2 with excludes => foo" do
    let(:params) { {:excludes => 'foo', :target => '/bar/baz'} }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/excludes = "foo"/) }
  end


  context "Windows 2012 R2 with excludes => 4247 (not a valid string)" do
    let(:params) { {:excludes => 4247, :target => '/bar/baz'} }

    it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
  end


  context "Windows 2012 R2 with includes => foo" do
    let(:params) { {:includes => 'foo', :target => '/bar/baz'} }

    it { is_expected.to contain_concat__fragment('icinga2::object::Timeperiod::bar')
                            .with({'target' => '/bar/baz'})
                            .with_content(/includes = "foo"/) }
  end


  context "Windows 2012 R2 with includes => 4247 (not a valid string)" do
    let(:params) { {:includes => 4247, :target => '/bar/baz'} }

    it { is_expected.to raise_error(Puppet::Error, /4247 is not a string/) }
  end
end

