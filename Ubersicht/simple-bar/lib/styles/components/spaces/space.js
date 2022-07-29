export const spaceStyles = /* css */ `
.space, .stickies {
  position: relative;
  display: flex;
  align-items: center;
  animation: space-appearance 320ms var(--transition-easing);
}

@keyframes space-appearance {
  0% {
    opacity: 0;
  }
}
.space__inner,
.spaces__add,
.stickies__inner {
  height: 100%;
  color: #ffffff;
  font-family: JetBrainsMono Nerd Font Mono, icomoon;
  background-color: var(--minor);
  border-radius: var(--item-radius);
  border: 0;
  outline: none;
  box-shadow: var(--light-shadow);
  cursor: pointer;
  -webkit-user-select: none;
  z-index: 0;
}
.stickies__inner {
  background-color: var(--background);
  box-shadow: none;
  cursor: default;
}
.simple-bar--background-color-as-foreground .space__inner,
.simple-bar--background-color-as-foreground .spaces__add,
.simple-bar--background-color-as-foreground .stickies__inner {
  background-color: transparent;
  box-shadow: none;
}
.space:first-of-type .space__inner {
}

.space:hover .space__inner {
  z-index: 1;
}
.spaces__add {
  height: 0px;
  width: 0px;
}
.spaces__add:hover {
}
.space--fullscreen .space__inner {
  background-color: rgb(35 39 55);
  width: 40px;
  color: rgb(35 39 55);
  margin-left: -2px;
  margin-top: 2px
}

.simple-bar--background-color-as-foreground .space--fullscreen .space__inner {
  color: var(--yellow);
  background-color: transparent;
}
.space--focused .space__inner {
  color: #252f43;
  background-color: var(--foreground);
}
.simple-bar--background-color-as-foreground .space--focused .space__inner {
  color: var(--foreground);
  background-color: transparent;
}
.space--visible .space__inner {
  box-shadow: var(--light-shadow), 0 0 0 1px var(--foreground);
}
.space:not(.space--focused) .space__inner:hover,
.spaces__add:hover {
  box-shadow: var(--light-shadow), var(--hover-ring);
}
.space:not(.space--focused) .space__inner:active,
.spaces__add:active {
  box-shadow: var(--light-shadow), var(--focus-ring);
}
.space__label {
  display: block;
  margin: 0;
  color: currentColor;
  font-family: inherit;
  font-size: 27px;
  line-height: 1;
  text-align: center;
  background-color: transparent;
  border: 0;
  border-radius: 2px;
  outline: none;
}
.space__label:not(:read-only):focus {
  box-shadow: var(--focus-ring);
}
.space__icon {
  flex: 0 0 25px;
  width: 25px;
  height: 25px;
  fill: currentColor;
  opacity: 0.5;
  transform: translateZ(0);
}
.space__label + .space__icon {
  // margin-left: 0;
}
.stickies__inner .space__icon:first-child {
  margin: 0;
}
.space__icon--focused {
  opacity: 1;
}
.space__icon--fullscreen {
  fill: var(--yellow);
}
.space--focused .space__icon--fullscreen {
  stroke: rgba(0, 0, 0, 0.3);
  stroke-width: 2px;
}
`
