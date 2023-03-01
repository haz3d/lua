local Passwords = {"LOCK>","kittymemory","<LOCK"}
local Menu = gg.prompt({"Security/n Enter Password: "},nil,{"text"})

if not Menu then return end

for l , I in pairs(Passwords) do
if Menu[1] == I then A = true end
end
if A ~= true then gg.alert("Wrong Password!") return else gg.alert("Correct Password!") end

if gg.isVisible(true) then
   gg.setVisible(false)
   end
gg.clearResults()
goto MSG

::MSG::
gg.alert('Welcome to RHQ Mods v1.0!')
gg.alert('Hacks doesnt always work in online!/n Be careful not to get banned.')


::MM::
menu=gg.choice({'Bypass Close Glitch','Cheats','Exit RHQ MODS',nil,'RHQ MODS v1.0'})

if menu == 1 then goto BCG end
if menu == 2 then goto CHEATS end
if menu == 3 then goto Exit end

::BCG::
gg.searchNumber("0",gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0,-1)

gg.clearResults()

gg.toast("Fixed Close Glitch")
goto MM

::CHEATS::
menu.gg.choice({
    'Unli Money' , 'Infinite ammo AK-47' , 'Speedhack' , 'Aimbot' , 'Wallhack' , 'Back' ,nil, 'Cheats Menu'
})

if menu == 1 then goto BuyAny end
if menu == 2 then goto InfAmmo end
if menu == 3 then goto SpeedHack end
if menu == 4 then goto AimBot end
if menu == 5 then goto WalHa end
if menu == 6 then goto Back end

::BuyAny::
gg.searchNumber("2.8025969e-45F;3.6013371e-43F;300D~12000D::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)

gg.editAll("-0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Unlimited Money Success!") 
goto MM

::InfAmmo::
.searchNumber("30;7:5",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)

gg.refineNumber("30",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)

gg.getResults(999)
gg.editAll("99999", gg.TYPE_DWORD)
gg.freeze=true
gg.clearResults()
gg.toast( 'Unlimited AK47+Ammo Success!' ) 
goto MM

::SpeedHack::
gg.searchNumber("600",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("3000",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.clearResults()
gg.setSpeed(1.5)
gg.toast("SpeedHack Success!") 
goto MM

::AimBot::
gg.clearResults()

gg.searchNumber('9.9999997e-10', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(999)
gg.editAll('5', gg.TYPE_FLOAT)
gg.freeze = true
gg.clearResults()
gg.searchNumber('1.0e-7', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('-1', gg.TYPE_FLOAT)
gg.freeze = true
gg.clearResults()
gg.clearResults()
gg.searchNumber('1;25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0.6)
gg.getResults(1000)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0.6)
gg.getResults(1000)
gg.editAll('5', gg.TYPE_FLOAT)
gg.freeze = true
gg.clearResults()
gg.toast("Aim Bot Success!")
goto MM

::WalHa::
gg.setRanges(gg.REGION_ANONYMOUS)

gg.searchNumber("50",gg.TYPE_FLOAT)

gg.getResults(999)
gg.editAll("955",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.clearResults()
gg.toast("Undergroud+Sit Eagle Eye Success!")
goto MM

::Back::
goto MM

::Exit::
gg.alert('See you next time!')

os.exit()
