# Immobilienscout gem

This is an interface for Immobilienscout API

## Example
Set up your keys in `immobilienscout.rb` inside initializers.
```ruby
Immobilienscout.configure do |config|
  config.consumer_key = 'consumer_key'
  config.consumer_secret = 'consumer_secret'
  config.access_token = 'access_token'
  config.access_token_secret = 'access_token_secret'
  config.use_sandbox = true
end

```

## Methods

#### Property
 - Create property
```ruby
Immobilienscout::API::Property.create({params})
```

- Publish property
```ruby
Immobilienscout::API::Property.publish({params})
```

- Delete property
```ruby
Immobilienscout::API::Property.destroy(is24_id)
```

#### Attachment
 - Add attachments to property
```ruby
Immobilienscout::API::Attachment.add(is24_id, binary_file, {metadata})
```

#### Report
- Get scout report
```ruby
Immobilienscout::API::Report.retrieve(is24_id, date_from, date_to)
```

#### IMPORTANT: Check Immobilienscout API Documentation about the needed params.


## Immobilienscout API

 https://api.immobilienscout24.de/our-apis/import-export.html
