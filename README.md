## searchbox-rails

### INSTALL

```ruby
gem 'searchbox-rails', github: 'tracersoft/searchbox-rails'
```

### GETTING STARTED

some_controller.rb
```ruby
@search = Search::Dummy.new(params[:q])
```

where `Search::Dummy` is a `Searchbox::Search`, more in [Searchbox
help](http://github.com/tracersoft/searchbox)

some_view.erb
```erb
<%= concept("searchbox/searchbox", @search) %>
```
