command: ""

refreshFrequency: 300000

render: ->"""
<li class="button" id=Disk>
  <img src="https://i.ibb.co/nCmSqZD/headphones.png">
</li>
"""

afterRender: (domEl) ->
  $(domEl).on 'click', '#iCloud', => @run "open '/Users/dill/Library/Mobile\ Documents/com~apple~CloudDocs'"
  $(domEl).on 'click', '#Downloads', => @run "open ~/Downloads"
  $(domEl).on 'click', '#Disk', => @run "open '/Applications/Spotify.app/'"
  $(domEl).on 'click', '#Home', => @run "open ~"
  $(domEl).on 'click', '#Library', => @run "open ~/Library"
  $(domEl).on 'click', '#Documents', => @run "open ~/Documents"
  $(domEl).on 'click', '#Pictures', => @run "open ~/Pictures"
  $(domEl).on 'click', '#Movies', => @run "open ~/Movies"
  $(domEl).on 'click', '#Music', => @run "open ~/Music"

style: """
  position: fixed
  bottom: 185px
  left: 15px

  img
    height: 25px
    width: 25px

  .button
    display: inline
"""
