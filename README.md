# settingsManager-prog

Manages ComputerCraft Settings

`settingsService.getset(<settingsKey>: String, <content>: any, <defaultContent>: table|string) : any`

# Uses

## getset

  Is used to quickly write content into the specified Settings-Key, or get the current Content.

- If content is provied, the current content is saved and returned
- If no content is provided, the current Settings-Content is returned
  - if no current Settings-Content is set, the default-Content is saved and returned

---

## Example

```lua
local settingsService = require('./libs/settingsService')
local user = 'mc-cc-scripts'
local greetingText = settingsService.getSet('greetingText', 'Hello '..user, 'Hello User')
-- greetingText => 'Hello mc-cc-scripts'
```
