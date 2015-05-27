# Green Button

A [Green Button Data](http://services.greenbuttondata.org/) Parser written in Ruby.

[![Code Climate](https://codeclimate.com/github/doomspork/greenbutton.png)](https://codeclimate.com/github/doomspork/greenbutton)

## About Green Button

Green Button is a way for consumers and businesses to securely access their energy data regardless of utility provider; Green Button implements Energy Service Provider Interface (ESPI) energy usage data standard.  With access to the data, developers can build tools to help consumers and business analyze and use energy more efficiency.  Consumers can rest easy knowing that Green Button contains no Personal Identifible Information (PII), only usage data.

## Installation

`$ gem install greenbutton`

## Usage

### Loading the XML

You can load Green Button XML from either a local file or remote source using the `GreenButton#load` method like so:

```ruby
require 'greenbutton'

# To load from file:
gb = GreenButton.load('PATH/TO/FILE.XML')

# To load from URL:
gb = GreenButton.load('https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/3/UsagePoint')
```

This code will load the Green Button XML from the given file or URL and parse it into a series of Ruby objects representing the data contained in the file.

Note: the above URL points to a sample Green Button data file representing a year's worth of electricity usage in one hour intervals for a sample home. More sample data can be found at http://services.greenbuttondata.org/sample-data.html

Depending on how large and complex the Green Button data file you load, this process could take a relatively long time, as the current implementation downloads the file and loads it into memory in order to parse it. Therefore, it is best to use this method outside of the request/response cycle if you are using it in a web application.

### Using the Data

Green Button data files are organized into `UsagePoints`, which represent the point at which the measurements in the file were made. Typically, these represent the meter at a home or business, but they may also be submeters and individual appliances.

The sample file referenced above contains a single usage point (the meter outside of the home). You can use the following code to examine the data from the UsagePoint  more closely:

```ruby
usage_point = gb.usage_points.first
usage_point.service_kind                                          # => :electricity
usage_point.meter_readings.first.interval_blocks.count            # => 730
usage_point.meter_readings.first.interval_blocks.first.total      # => 5985.0
```

## Contributing

Feedback, feature requests, and fixes are welcomed and encouraged.  Please make appropriate use of [Issues](https://github.com/doomspork/greenbutton/issues) and [Pull Requests](https://github.com/greenbutton/mits/pulls).  All code must have accompanying tests.

## License

Please see [LICENSE](LICENSE) for licensing details.
