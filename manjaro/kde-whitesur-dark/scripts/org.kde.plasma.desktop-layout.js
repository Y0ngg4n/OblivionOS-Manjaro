var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "ItemGeometriesHorizontal": "",
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "540",
                    "DialogWidth": "720"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/General": {
                    "ToolBoxButtonState": "bottom",
                    "ToolBoxButtonX": "739",
                    "ToolBoxButtonY": "983",
                    "sortMode": "-1"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "file:///usr/share/wallpapers/WhiteSur/contents/images/3840x2160.png"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);
