# Widget Settings
settings =
    lang: 'en'
    militaryTime: true
    colors:
      default: 'rgb(255 255 255)'
      accent: 'rgb(255 255 255)'
      background: 'rgba(255, 255, 255, .1)'
    shadows:
      box: '0 0 1.25em rgba(0, 0, 0, .5)'
      text: '0 0 0.625em rgba(0, 0, 0, .25)'

# Locale Strings
locale =
  en:
    weekdays: [
      'Sunday'
      'Monday'
      'Tuesday'
      'Wednesday'
      'Thursday'
      'Friday'
      'Saturday'
    ]
    months: [
      'January'
      'February'
      'March'
      'April'
      'May'
      'June'
      'July'
      'August'
      'September'
      'October'
      'November'
      'December'
    ]
  de:
    weekdays: [
      'Sonntag'
      'Montag'
      'Dienstag'
      'Mittwoch'
      'Donnerstag'
      'Freitag'
      'Samstag'
    ]
    months: [
      'Januar'
      'Februar'
      'März'
      'April'
      'Mai'
      'Juni'
      'Juli'
      'August'
      'September'
      'Oktober'
      'November'
      'Dezember'
    ]

command: ""

settings: settings
locale: locale

refreshFrequency: 1000

style: """
  bottom: 11px
  left: 37px
  font-family: Product Sans
  font-size: 1px
  line-height: 1
  text-transform: uppercase
  transform: translate(-50%, -50%)

  .container
    position: relative
    display: table
    height: 100%
    width: 10%
    padding: 1rem 2rem
    border-radius: 1rem
    overflow: hidden

  .left
    float: right

  .txt-default
    color: #{ settings.colors.default }

  .txt-accent
    color: #{ settings.colors.accent }

  .txt-small
    font-size: 2rem
    font-weight: 300

  .txt-large
    font-size: 19px
    font-weight: bold

  .divider
    display: block
    width: 1rem
    height: 100%
    margin: 0 1rem
    background: #{ settings.colors.accent }
    box-shadow: #{ settings.shadows.text }
"""

render: () -> """
  <div class='container'>
    <div class='cell'>
      <span class='hours txt-default txt-large left'></span>
      <span class='minutes txt-accent txt-large left'></span>
    </div>
    <div class='cell txt-small'>
      <span class='weekday txt-accent'></span>
      <div class='txt-default'>
        <span class='day'></span>
        <span class='month'></span>
      </div>
      <span class='year txt-accent'></span>
    </div>
  </div>
"""

afterRender: (domEl) ->

update: (output, domEl) ->
  date = @getDate()

  $(domEl).find('.hours').text(date.hours)
  $(domEl).find('.minutes').text(date.minutes)

# Helper-Functions
zeroFill: (value) ->
  return ('0' + value).slice(-2)

getDate: () ->
  date = new Date()
  hour = date.getHours()

  suffix = (if (hour >= 12) then 'pm' else 'am') if (@settings.militaryTime is false)
  hour = (hour % 12 || 12) if (@settings.militaryTime is false)

  hours = @zeroFill(hour);
  minutes = @zeroFill(date.getMinutes())
  seconds = @zeroFill(date.getSeconds())
  weekday = @locale[@settings.lang].weekdays[date.getDay()]
  day = @zeroFill(date.getDate())
  month = @locale[@settings.lang].months[date.getMonth()]
  year = date.getFullYear()

  return {
    hours: hours
    minutes: minutes
  }
