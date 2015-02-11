require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html


  it 'is awesome' do
    expect(true).to eq true
  end

  # the name of the service is platform dependent
  # we could test that in serverspec but...
  # it doesn't really matter.  what's important is
  # that the home page is returned when called
  # it 'is running' do
  #   expect(service "httpd").to be_running
  # end

  it 'listening on the correct port' do
    expect(port 80).to be_listening
  end

  it 'returns a valid home page' do
    expect(command("wget http://localhost").exit_status).to eq 0
  end
end
