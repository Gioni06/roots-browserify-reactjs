# @cjsx React.DOM
React = require 'react'
ListComponent = require './ListComponent.coffee'
module.exports = React.createClass
  displayName: 'RadComponent'
  
  getInitialState: ()->
    window.data
    
  getDefaultProps: () -> 
   
  render: ->
      <div className="test">
        <h3>{@state.listName}</h3>
        <ListComponent set={@state.items} />
      </div>