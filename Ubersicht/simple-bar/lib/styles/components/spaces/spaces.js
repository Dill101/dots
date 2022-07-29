import { spaceStyles } from './space'
import { spaceOptionsStyles } from './space-options'

export const spacesStyles = /* css */ `
.spaces {
  display: flex;
  flex-direction: column;
  gap: 0px;
}
.simple-bar--no-bar-background .spaces {
  background-color: var(--background);
  box-shadow: var(--light-shadow);
  border-radius: var(--bar-radius);
}
.spaces__separator {
  width: 5px;
  height: 5px;
  margin: var(--item-outer-margin);
  background-color: var(--foreground);
  border-radius: 50%;
  opacity: 0.35;
}
${spaceStyles}
${spaceOptionsStyles}
.spaces__add > svg {
  width: 0px;
  height: 0px;
  fill: currentColor;
}
`
