# @cjsx React.DOM
React = require 'react'
ItemComponent = require './ItemComponent.coffee'

module.exports = React.createClass
  displayName: 'ListComponent'
  onDragEnd: ->
    console.log 'onDragMsg'
  render: ->
    listItems = []
    for k,v of @props.set
      listItems.push <ItemComponent key={k} item={v}></ItemComponent>
    return <ul>{listItems}</ul>