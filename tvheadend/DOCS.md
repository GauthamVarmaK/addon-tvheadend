# Home Assistant Community Add-on: TVHeadend

TVHeadend is a TV streaming server and recorder supporting:
DVB-S, DVB-S2, DVB-C, DVB-T, DVB-T2, ATSC, ISDB-T, IPTV, SAT>IP and HDHomeRun
as input sources.
TVHeadend offers the HTTP (VLC, MPlayer), HTSP (Kodi, Movian) and SAT>IP streaming.

Multiple EPG sources are supported such as
over-the-air DVB and ATSC including OpenTV DVB extensions, XMLTV, PyXML.

Have included the following along with TVHeadend:
-Webgrab+
-Streamlink

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Add this repository to have addons by GauthamVarmaK:
   [![Home Assistant with repository URL pre-filled][my-ha-shield]][my-ha-repo]
1. Search for the "TVHeadend" add-on in the Supervisor add-on store and install it.
1. Start the "TVHeadend" add-on.
1. Check the logs of the "TVHeadend" to see if everything went well.
1. Click the "OPEN WEB UI" button and start using it.
1. Ready to go!

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
system_packages:
  - ffmpeg
init_commands:
  - echo 'Hello World'
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `system_packages`

Allows you to specify additional [Alpine packages][alpine-packages] to be
installed to the TVHeadend Addon (e.g., `ffmpeg`, `g++`, etc. ).

**Note**: _Adding many packages will result in a longer start-up time for the add-on._

### Option: `init_commands`

Customize your TVHeadend environment even more with the `init_commands` option.
Add one or more shell commands to the list, and they will be executed
every single time this add-on starts.

## Additional Details

- Config files are stored in `/config/tvheadend/`
- Recording files are stored in `/config/tvheadend/recordings/`
- `/dev/dvb/`, `/dev/dri/` would be respectively mapped to
  `/dev/dvb/`, `/dev/dri/` inside the addon.

Consider, backing `/config/tvheadend/` up whenever migrating.

## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality.

Releases are based on [Semantic Versioning][semver], and use the format
of `MAJOR.MINOR.PATCH`. In a nutshell, the version will be incremented
based on the following:

- `MAJOR`: Incompatible or major changes.
- `MINOR`: Backwards-compatible new features and enhancements.
- `PATCH`: Backwards-compatible bugfixes and package updates.

## Support

Got questions?

You have several options to get them answered:

- The Home Assistant [Community Forum][forum].
- You could also [open an issue here][issue] GitHub.

## Authors & contributors

This repository is owned and maintained by [GauthamVarmaK][gautham].

This has been possible thanks to the community add-ons initiative by [Frenck][frenck]

## License

MIT License

Copyright (c) 2021-2023 GauthamVarmaK

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[alpine-packages]: https://pkgs.alpinelinux.org/packages
[forum]: https://community.home-assistant.io/
[frenck]: https://github.com/frenck
[gautham]: https://github.com/GauthamVarmaK
[my-ha-shield]: https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg
[issue]: https://github.com/GauthamVarmaK/addon-tvheadend/issues
[semver]: http://semver.org/spec/v2.0.0.htm
[my-ha-repo]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FGauthamVarmaK%2Fhassio-addons
[releases]: https://github.com/GauthamVarmaK/addon-tvheadend/releases
