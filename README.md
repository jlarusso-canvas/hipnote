# Hipnote
Post a notification in hipchat

## Installation
Add this line to your application's Gemfile:

    gem 'hipnote'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hipnote

## Usage
Make sure you set `ENV['HIPCHAT_API_TOKEN']` 

######Interface: 
`Hipnote.post([room], [message], { title: [title], color: [color], format: [format] })`  
- `room` (where you want the message to post)
- `message` (what you want to post)
- `title` (title of the post) Default: 'Note'
- `color` (color of the pos) Default: 'yellow'
- `format` (format of the post. 'text' or 'html') Default: 'text'

######Examples:  
`Hipnote.post('project room', 'Deploying now', title: 'Deployment')`  

    Hipnote.post('technical comms', 'Attention, this is an <strong>alert.</strong>',
                 color: 'red',
                 format: 'html')

## Contributing
1. Fork it ( https://github.com/[my-github-username]/hipnote/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
