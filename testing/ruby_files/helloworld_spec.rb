require 'docker'
require 'serverspec'


describe "helloworld_container" do
    before(:all) do
        
        @container = Docker::Container.get('site1')
        
        set :os, family: :debian
        set :backend, :docker
        set :docker_container, @container.id
    end
    
    describe command('cat /etc/alpine-release') do
        it "alpine version" do
            expect(subject.stdout).to match(/3.7./)
        end
    end
    
    describe port(80) do
        it { should be_listening }
    end
end
