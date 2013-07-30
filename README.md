# ValueParsers

This gem provides services classes to parse your filthy values.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'value_parsers'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install value_parsers
```

### For development

Clone it

```sh
$ git clone git@github.com:Liaison-Intl/value_parsers.git
```

Bundle

```sh
$ cd value_parsers
$ bundle install
```

Run the specs

```sh
$ bundle exec rake test
```

## Usage

```ruby
ValueParsers::BooleanParser.boolean('Y')
# => true

ValueParsers::BooleanParser.boolean(2)
# => false

ValueParsers::BooleanParser.yes_no('3')
# => 'Not Sure'
```

## Contributing

  1. :coffee: :coffee: :coffee:
  2. Open an issue
  3. Create a branch using the following naming convention:

     \<github user name\>/\<[optional issue id-]description of feature or bug\>

     ```sh
     $ git checkout -b zacstewart/12-add_datetime_parser
     ```

  4. Tag commits with the issue number

      ```commit
      Add Datetime parser

      Parses datetimes in the various formats they are found across CAS databases.

      [#13]
      ```
  5. Push your feature branch

     ```sh
     $ git push -u origin zacstewart/12-add_datetime_parser
     ```
  6. Open a pull request. If the issue is complicated and warrants discussion,
     open a pull request with the first commit to facilitate discussion and
     review.
  7. Test your changes. Insure all tests are still green.

     ```sh
     $ bundle exec rake
     ```
  8. Ask someone to review your work
  9. Someone will review and merge your pull request (using the `--no-ff` option) and delete
     your feature branch on GitHub.
  10. :beers:
