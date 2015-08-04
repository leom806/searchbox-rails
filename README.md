## waldo-rails

### INSTALL

```ruby
gem 'waldo-rails', github: 'tracersoft/waldo-rails'
```

### GETTING STARTED

some_controller.rb
```ruby
@search = Search::Dummy.new(params[:q])
```

where `Search::Dummy` is a `Waldo::Search`, more in [Waldo
help](http://github.com/tracersoft/waldo)

some_view.erb
```erb
<%= concept("waldo/searchbox", @search) %>
```
