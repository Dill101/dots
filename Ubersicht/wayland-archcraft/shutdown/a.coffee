command: ""

refreshFrequency: 30000 # ms


# Add more or less <li> tags with <br> tags at constant intervals
# for a grid system at whatever size you want.

render: (output) ->
  """
  <div class="container">
    <ul class="buttons">
      <li class="button" id="restart"><span></span></span><img src='/wayland-archcraft/shutdown/icons/shut-down.png' style="width:30px;height:30px;"/></li>

    </ul>
  </div>
  """

afterRender: (domEl) ->
  $(domEl).on 'click', '#sleep', => @run "pmset sleepnow"
  $(domEl).on 'click', '#restart', => @run "osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'"
  $(domEl).on 'click', '#shutdown', => @run "osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'"


style: """

  padding: 0;
  margin: 0;

  .container {
    position: fixed;
    left: 13px;
    bottom: 7px;
  }

  .buttons {
    padding: 0;
    margin: 0;
    width: auto;
  }

  .button:last-child {
    margin-bottom: 0;
  }

  .button {
    margin: 0px 0 4px 0;
    display: block;
    cursor: pointer;
    transform:scale(0.6, 0.6); // Adjust this to resize the grid.
    position: relative;
  }
  .button span{
    position: absolute;
    right: 100%;
    bottom: 0%;
    width: auto;
    font-size: 20px;
    margin-right: 10px;
    padding: 4px 15px;
    font-family: Ubuntu;
    border-radius: 4px;
    line-height: 24px;
    display: none;
    white-space: nowrap;
  }

  .button:hover > span {
    display: block; 200px
  }

"""
