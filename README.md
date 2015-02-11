# Introduction to Testing

This presentation was given at [DevOpsDC Meetup on February 10, 2015](http://www.meetup.com/DevOpsDC/events/218598328/).

To run the demo code:

1.  Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1.  Install [Vagrant](https://www.vagrantup.com/downloads.html)
1.  Install [ChefDK](https://downloads.chef.io/chef-dk/)
1.  Clone this repository
1.  Run the following commands from within this directory:

  * `rubocop .`
  * `foodcritic . -f any`
  * `rspec spec`
  * `kitchen test`
    * Alternatively, step through the test kitchen workflow
      * `kitchen create`
      * `kitchen converge`
      * `kitchen verify`
      * `kitchen destroy`
