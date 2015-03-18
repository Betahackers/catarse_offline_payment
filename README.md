# CatarseOfflinePayment 

Catarse offline payment integration with [Catarse](http://github.com/danielweinmann/catarse) crowdfunding platform

## Installation

Add this lines to your Catarse application's Gemfile:

    gem 'catarse_offline_payment'

And then execute:

    $ bundle

## Usage

Configure the routes for your Catarse application. Add the following lines in the routes file (config/routes.rb):

    mount CatarseOfflinePayment::Engine => "/", :as => "catarse_offline_payment"

## Rails 3.2.x and Rails 4 support

If you are using the Rails 3.2.x on Catarse's code, you can use the version `1.0.0`.

For Rails 4 support use the `2.0.0` version.


## Development environment setup

Clone the repository:

    $ git clone git://github.com/betahackers/catarse_offline_payment.git

Add the catarse code into test/dummy:

    $ git submodule init
    $ git submodule update

And then execute:

    $ bundle

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


This project rocks and uses MIT-LICENSE.
