___
### Notice: Further development/support has stopped, if you have a problem, your best shot is to fork the resource, and work on your own, provided that you release your modified resource under the same license, and state the changes, just as the license requires.
___
# ESX NoCarJack
It's finally here! something I was hoping for a long time, I couldn't take it no more after seeing
no one working on this, so I took matters in my own hands and started working for the implementation
for ESX.

This resource will prevent anyone from easily hijacking or carjacking any car, NPC or not.

# Credits & License Disclaimer
Huuuugee... Maaaassiveee thanks to Sighmir @ https://github.com/Sighmir for being the original developer of the vRP version of this script.

Now, thanks that the license of the original resource is under AGPL 3, I'm able to modify and redistribute the original resource, provided that I release this under the same license, state changes and provide the source code; So I will try to comply with everything as possible so this resource stays up and alive for everyone (at least in the ESX realm xD, as vRP people got their thing alrdy >:D ) to enjoy :D

# Source Code Changes
- Removed/Changed everything related to vRP (of course) (@Sighmir, althought these changes are easily identifiable if you need more details, just lmk)
- [Changed the way I get the vehicle data](https://github.com/AxDSan/esx_nocarjack/blob/master/server/nocarjack_sv.lua#L7)
- Changed the way I call core functions [1](https://github.com/AxDSan/esx_nocarjack/blob/86f1e484ecd7e9da36d973bb867a934802f04e52/server/nocarjack_sv.lua#L51) [2](https://github.com/AxDSan/esx_nocarjack/blob/86f1e484ecd7e9da36d973bb867a934802f04e52/server/nocarjack_sv.lua#L38) [3](https://github.com/AxDSan/esx_nocarjack/blob/86f1e484ecd7e9da36d973bb867a934802f04e52/client/nocarjack_cl.lua#L61) [4](https://github.com/AxDSan/esx_nocarjack/blob/86f1e484ecd7e9da36d973bb867a934802f04e52/client/nocarjack_cl.lua#L63) [5](https://github.com/AxDSan/esx_nocarjack/blob/86f1e484ecd7e9da36d973bb867a934802f04e52/client/nocarjack_cl.lua#L71)

# LICENSE
```
ESX NoCarJack
Copyright (C) 2018  AxDSan

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
