# Ruboty::Heroku

An Ruboty Handler + Actions to Ruboty-Heroku.

[Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-heroku'
```

And then execute:

    $ bundle

## Commands

|Command|Pattern|Description|
|:--|:--|:--|
|[heroku restart](#heroku restart)|heroku restart (?.+)|Restart all dynos of specified application.|

## Usage
### heroku restart
* Restart all dynos of specified application.

~~~
> botname heroku restart youappname
~~~

## ENV

|Name|Description|
|:--|:--|
|`HEROKU_API_KEY`|API Key of Heroku. -> https://dashboard.heroku.com/account|

## Dependency

|Name|Description|
|:--|:--|
|`platform-api`|Heroku Platform API gem|

## Contributing

1. Fork it ( https://github.com/xoyip/ruboty-heroku/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
