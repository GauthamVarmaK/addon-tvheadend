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

1. Install "Gautham's Add-ons" in supervisor.
1. Search for the "TVHeadend" add-on in the Supervisor add-on store and install it.
1. Start the "TVHeadend" add-on.
1. Check the logs of the "TVHeadend" to see if everything went well.
1. Click the "OPEN WEB UI" button and start using it.
1. Ready to go!

## Configuration

No changes needed from the user, unless u need to change the ports.

-Config files are stored in /config/tvheadend/
-Recording files are stored in /config/tvheadend/recordings/
Consider, backing them up whenever migrating.

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

Copyright (c) 2021 GauthamVarmaK

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

[forum]: https://community.home-assistant.io/
[gautham]: https://github.com/GauthamVarmaK
[frenck]: https://github.com/frenck
[issue]: https://github.com/GauthamVarmaK/addon-tvheadend/issues
[releases]: https://github.com/GauthamVarmaK/addon-tvheadend/releases
