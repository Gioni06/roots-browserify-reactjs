React = require 'react'
_ = require 'underscore'
$ = require 'jquery'

ListComponent = require './ListComponent.coffee'
ItemComponent = require './ItemComponent.coffee'
RadComponent = require './RadComponent.coffee'

# Here its a global variable but it could be a remote src
window.React = React

window.data =
  items: ['item1', 'item2', 'item3']
  listName: 'Some Headline'
   
React.render <RadComponent />, document.getElementById 'container'