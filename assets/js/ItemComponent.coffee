# @cjsx React.DOM
React = require 'react'

module.exports = React.createClass
  displayName: 'ItemComponent'
  onDragStart: (e) ->
    console.log e
  handleOnclick: ()->
    alert 'you clicked: ' + @props.item
  render: ->
    <li onClick={@handleOnclick}>{@props.item}</li>