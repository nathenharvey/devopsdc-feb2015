#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do

  context 'When all attributes are default, on a centos platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new({:platform => "centos", :version => "6.5"})
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it 'installs apache' do
      expect(chef_run).to install_package "httpd"
    end
  end

  context 'When all attributes are default, on a ubunut platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new({:platform => "ubuntu", :version => "12.04"})
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it 'installs apache' do
      expect(chef_run).to install_package "apache2"
    end
  end
end
