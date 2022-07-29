command: "pmset -g batt | grep -o '[0-9]*%; [a-z]*'"

refreshFrequency: 30000

style: """
  bottom: 125px
  left: 8px
  color: #ffffff
  font-family: Product Sans
  text-align: center

  div
    display: block
    width: 30px
    text-shadow: 0 0 1px rgba(#000, 0.5)
    padding: 4px 6px 4px 6px

    &:after
      position: absolute
      bottom: -14px
      font-size: 10px
      font-weight: 500
      text-align: center

  .percent
    font-size: 11px
    font-weight: 100
    margin: 0
"""


render: -> """
  <div><p class='percent'></p></div>
"""

update: (output, domEl) ->
  values = output.split(";")
  percent = values[0]
  div     = $(domEl)
  
  div.find('.percent').html(percent)
  div.find('.status').html(status)

