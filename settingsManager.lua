---@class SettingManager
--- settingsService.getset(<settingsKey>: String, <content>: any, <defaultContent>: table|string) : any
SettingManager = {}

function SettingManager.setget(name, value, defaultOption)
    if value ~= nil then
        settings.set(name, value);
        return value;
    end
    value = settings.get(name);
    settings.save();
    return value or defaultOption;
end

return SettingManager
