require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  

  it 'is awesome' do
    expect(true).to eq true
  end

  it 'is running' do 
    expect(service "httpd").to be_running
  end

  it 'listening on the correct port' do
    expect(port 80).to be_listening
  end

end
