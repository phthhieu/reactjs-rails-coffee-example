@HomeWidget = React.createClass
  getInitialState: ->
    time: @props.data
  render: ->
    R.article
      className: 'home-widget'
      R.div
        style:
          fontWeight: 700
        @_welcomeMessage()
      R.div
        onClick: @_onUpdateClicked
        style: 
          background: 'grey'
          padding: '10px 5px'
          width: 200
          cursor: 'pointer'
          textAlign: 'center'
        'Update'
        
  _welcomeMessage: ->
    'This is home widget ' + @state.time
    
  _onUpdateClicked: ->
    @setState(time: new Date())