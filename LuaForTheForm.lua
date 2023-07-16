isactivated = 0
CETrainer= nil
for i=0, GetFormCount()-1 do
 if GetForm(i).ClassName == "TTrainerForm" then CETrainer = GetForm(i) end
end

function Activate_Trainer(sender)
local script = getAddressList()
if CETrainer.Panel_Error.Visible==true then
  CETrainer.Panel_Error.Visible=false
end
if isactivated == 0 then
LaunchMonoDataCollector()
script.getMemoryRecordByDescription("Getpointers").Active=true;
script.getMemoryRecordByDescription("EnableDevMod").Active=true;
CETrainer.Button_Activate.Caption="Desactivate";
ptr_Healt = readPointer(readPointer(readPointer("[CharacterDataAttr]+10")+0x10)+0x20)+0x20
ptr_Stam = readPointer(readPointer(readPointer("[CharacterDataAttr]+10")+0x10)+0x28)+0x20
ptr_Strength = readPointer(readPointer(readPointer("[CharacterDataAttr]+10")+0x10)+0x30)+0x20
ptr_Dext = readPointer(readPointer(readPointer("[CharacterDataAttr]+10")+0x10)+0x38)+0x20
ptr_Res = readPointer(readPointer(readPointer("[CharacterDataAttr]+10")+0x10)+0x40)+0x20
isactivated = 1
StoreValues()
elseif isactivated == 1 then
reset_CustomValues(sender)
script.getMemoryRecordByDescription("Getpointers").Active=false;
script.getMemoryRecordByDescription("EnableDevMod").Active=false;
CETrainer.Button_Activate.Caption="Activate";
isactivated = 0
ptr_Healt = nil
ptr_Stam = nil
ptr_Strength = nil
ptr_Dext = nil
ptr_Res = nil
end
end

------------------------Main-----------------------------------------
isGodMod = 0
function GodMod(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isGodMod == 0 then
  getAddressList().getMemoryRecordByDescription("GodMode").Active=true;
  CETrainer.Button_GodMod.ButtonColor = 0x00FF00
  CETrainer.Button_GodMod.ButtonDownColor = 0x0000FF
  isGodMod = 1
else
  getAddressList().getMemoryRecordByDescription("GodMode").Active=false;
  CETrainer.Button_GodMod.ButtonColor = 0x0000FF
  CETrainer.Button_GodMod.ButtonDownColor = 0x00FF00
  isGodMod = 0
end
end

isOneHitKill = 0
function OneHitKill(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isOneHitKill == 0 then
  getAddressList().getMemoryRecordByDescription("OneHitKill").Active=true;
  CETrainer.Button_OHK.ButtonColor = 0x00FF00
  CETrainer.Button_OHK.ButtonDownColor = 0x0000FF
  isOneHitKill = 1
else
  getAddressList().getMemoryRecordByDescription("OneHitKill").Active=false;
  CETrainer.Button_OHK.ButtonColor = 0x0000FF
  CETrainer.Button_OHK.ButtonDownColor = 0x00FF00
  isOneHitKill = 0
end
end

isNoParryCD = 0
function NoParryCD(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isNoParryCD == 0 then
  getAddressList().getMemoryRecordByDescription("NoParryCD").Active=true;
  CETrainer.Button_NoParryCD.ButtonColor = 0x00FF00
  CETrainer.Button_NoParryCD.ButtonDownColor = 0x0000FF
  isNoParryCD = 1
else
  getAddressList().getMemoryRecordByDescription("NoParryCD").Active=false;
  CETrainer.Button_NoParryCD.ButtonColor = 0x0000FF
  CETrainer.Button_NoParryCD.ButtonDownColor = 0x00FF00
  isNoParryCD = 0
end
end

isIgnoreHit = 0
function IgnoreHit(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isIgnoreHit == 0 then
  getAddressList().getMemoryRecordByDescription("IgnoreHit").Active=true;
  CETrainer.Button_IgnoreHit.ButtonColor = 0x00FF00
  CETrainer.Button_IgnoreHit.ButtonDownColor = 0x0000FF
  isIgnoreHit= 1
else
  getAddressList().getMemoryRecordByDescription("IgnoreHit").Active=false;
  CETrainer.Button_IgnoreHit.ButtonColor = 0x0000FF
  CETrainer.Button_IgnoreHit.ButtonDownColor = 0x00FF00
  isIgnoreHit = 0
end
end

isNoFallDmg = 0
function NoFallDmg(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isNoFallDmg == 0 then
  getAddressList().getMemoryRecordByDescription("NoFallDamage").Active=true;
  CETrainer.Button_NoFallDmg.ButtonColor = 0x00FF00
  CETrainer.Button_NoFallDmg.ButtonDownColor = 0x0000FF
  isNoFallDmg= 1
else
  getAddressList().getMemoryRecordByDescription("NoFallDamage").Active=false;
  CETrainer.Button_NoFallDmg.ButtonColor = 0x0000FF
  CETrainer.Button_NoFallDmg.ButtonDownColor = 0x00FF00
  isNoFallDmg = 0
end
end

isInfiniteJump = 0
function InfiniteJump(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isInfiniteJump == 0 then
  getAddressList().getMemoryRecordByDescription("InfiniteJump").Active=true;
  CETrainer.Button_InfiniteJump.ButtonColor = 0x00FF00
  CETrainer.Button_InfiniteJump.ButtonDownColor = 0x0000FF
  isInfiniteJump= 1
else
  getAddressList().getMemoryRecordByDescription("InfiniteJump").Active=false;
  CETrainer.Button_InfiniteJump.ButtonColor = 0x0000FF
  CETrainer.Button_InfiniteJump.ButtonDownColor = 0x00FF00
  isNoInfiniteJump = 0
end
end

isDestroyDoors = 0
function DestroyDoors(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
if isDestroyDoors == 0 then
  getAddressList().getMemoryRecordByDescription("DestroyDoor").Active=true;
  CETrainer.Button_DestroyDoors.ButtonColor = 0x00FF00
  CETrainer.Button_DestroyDoors.ButtonDownColor = 0x0000FF
  isDestroyDoors= 1
else
  getAddressList().getMemoryRecordByDescription("DestroyDoor").Active=false;
  CETrainer.Button_DestroyDoors.ButtonColor = 0x0000FF
  CETrainer.Button_DestroyDoors.ButtonDownColor = 0x00FF00
  isDestroyDoors = 0
end
end
------------------------DevMod---------------------------------------

function GiveItems(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("GiveItems").Active=true;
end

function GiveEquipment(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("GiveEquipment").Active=true;
end

function GiveCurrencies(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("GiveCurrencies").Active=true;
end

function GiveSkills(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("GiveSkills").Active=true;
end

function GiveTraits(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("GiveTraits").Active=true;
end

function RevealMap(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("RevealMap").Active=true;
end

function TeleportToBoss(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("TeleportToBoss").Active=true;
end

function Teleport(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
getAddressList().getMemoryRecordByDescription("Teleport").Active=true;
end

function set_X(sender)
  if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
  end
  writeFloat("Index_X",CETrainer.Index_X.Text)
end

function set_Y(sender)
  if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
  end
  writeFloat("Index_Y",CETrainer.Index_Y.Text)
end

function set_BossTeleport(sender)
  if isactivated == 0 then
    CETrainer.Panel_Error.Visible=true
  return
  end
  writeInteger("IndexTP", CETrainer.Index_TP.ItemIndex)
end
------------------------Custom Values--------------------------------


                  ----------HP--------------

----button hp +
function add_HP(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
add_FloatAt(10,"[CombatModule]+20")
CETrainer.Value_HP1.Text = add_FloatAt(10,"[CombatModule]+24")
end
----------Button hp -
function sub_HP(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
sub_FloatAt(10,"[CombatModule]+20")
CETrainer.Value_HP1.Text = sub_FloatAt(10,"[CombatModule]+24")
end
----------Edit Hp
function Edit_HP(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_FloatAt(CETrainer.Value_HP1.Text,"[CombatModule]+20")
Edit_FloatAt(CETrainer.Value_HP1.Text,"[CombatModule]+24")
end



                   --------Mass--------


----button +
function add_Mass(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Mass1.Text = add_IntegerAt(10000,"[CharacterDataInv]+40")
end
----------Button -
function sub_Mass(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Mass1.Text = sub_IntegerAt(10000,"[CharacterDataInv]+40")
end
----------Edit
function Edit_Mass(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_IntegerAt(CETrainer.Value_Mass1.Text,"[CharacterDataInv]+40")
end


                --------Breath-----------[CharacterDataAttr]+3c


function add_Breath(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Breath1.Text = add_FloatAt(1,"[CharacterDataAttr]+3c")
end
----------Button -
function sub_Breath(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Breath1.Text = sub_FloatAt(1,"[CharacterDataAttr]+3c")
end
----------Edit
function Edit_Breath(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_FloatAt(CETrainer.Value_Breath1.Text,"[CharacterDataAttr]+3c")
end


                --------Jumpheight-----------

----------Button +
function add_Jh(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Jh1.Text = add_FloatAt(1,"[MovementModule]+20")
end
----------Button -
function sub_Jh(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Jh1.Text = sub_FloatAt(1,"[MovementModule]+20")
end
----------Edit
function Edit_Jh(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_FloatAt(CETrainer.Value_Jh1.Text,"[MovementModule]+20")
end


                --------MovementSpeed-----------

----------Button +
function add_Ms(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Ms1.Text = add_FloatAt(1,"[MovementModule]+10")
end
----------Button -
function sub_Ms(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Ms1.Text = sub_FloatAt(1,"[MovementModule]+10")
end
----------Edit
function Edit_Ms(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_FloatAt(CETrainer.Value_Ms1.Text,"[MovementModule]+10")
end


                  --------Attributs - Health-----------

----button +
function add_Health(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Health1.Text = add_IntegerAt(1,ptr_Healt)
end
----------Button -
function sub_Health(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Health1.Text = sub_IntegerAt(1,ptr_Healt)
end
----------Edit
function Edit_Health(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_IntegerAt(CETrainer.Value_Health1.Text,ptr_Healt)
end


                  --------Attributs - Stam-----------

----button +
function add_Stam(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Stam1.Text = add_IntegerAt(1,ptr_Stam)
end
----------Button -
function sub_Stam(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Stam1.Text = sub_IntegerAt(1,ptr_Stam)
end
----------Edit
function Edit_Stam(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_IntegerAt(CETrainer.Value_Stam1.Text,ptr_Stam)
end


                  --------Attributs - Strenght-----------

----button +
function add_Strenght(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Strength1.Text = add_IntegerAt(1,ptr_Strength)
end
----------Button -
function sub_Strenght(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Strength1.Text = sub_IntegerAt(1,ptr_Strength)
end
----------Edit
function Edit_Strenght(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_IntegerAt(CETrainer.Value_Strength1.Text,ptr_Strength)
end


                  --------Attributs - Dext-----------

----button +
function add_Dext(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Dext1.Text = add_IntegerAt(1,ptr_Dext)
end
----------Button -
function sub_Dext(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Dext1.Text = sub_IntegerAt(1,ptr_Dext)
end
----------Edit
function Edit_Dext(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_IntegerAt(CETrainer.Value_Dext1.Text,ptr_Dext)
end


                  --------Attributs - Res-----------

----button +
function add_Res(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Res1.Text = add_IntegerAt(1,ptr_Res)
end
----------Button -
function sub_Res(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
CETrainer.Value_Res1.Text = sub_IntegerAt(1,ptr_Res)
end
----------Edit
function Edit_Res(sender)
if isactivated == 0 then
  CETrainer.Panel_Error.Visible=true
  return
end
Edit_IntegerAt(CETrainer.Value_Res1.Text,ptr_Res)
end


-------------------- + - Edit   --------------------

----button Integer +

function add_IntegerAt(Value,Address)
local CustValue = readInteger(Address)
CustValue = CustValue + Value
writeInteger(Address,CustValue)
return readInteger(Address)
end

----------Button Integer -

function sub_IntegerAt(Value,Address)
local CustValue = readInteger(Address)
CustValue = CustValue - Value
writeInteger(Address,CustValue)
return readInteger(Address)
end

----------Edit Integer
function Edit_IntegerAt(Value, Address)
writeInteger(Address,Value)
end
                  ------------------------
----Button Float+
function add_FloatAt(Value,Address)
local CustValue = readFloat(Address)
CustValue = CustValue + Value
writeFloat(Address,CustValue)
return readFloat(Address)
end

----------Button Float -
function sub_FloatAt(Value,Address)
local CustValue = readFloat(Address)
CustValue = CustValue - Value
writeFloat(Address,CustValue)
return readFloat(Address)
end

----------Edit Float
function Edit_FloatAt(Value, Address)
writeFloat(Address,Value)
end

----------------------------------------------------------------------------
                ---------button reset--------------

reset_maxhp = 0.0
reset_mass = 0
reseet_breath = 0.0
reset_jh = 0.0
reset_ms = 0.0

reset_Health = 0
reset_Stam = 0
reset_Strength = 0
reset_Dext = 0
reset_Res = 0

ptr_Healt = nil
ptr_Stam = nil
ptr_Strength = nil
ptr_Dext = nil
ptr_Res = nil

function reset_CustomValues(sender)
writeFloat("[CombatModule]+20",reset_maxhp)
writeFloat("[CombatModule]+24",reset_maxhp)
writeInteger("[CharacterDataInv]+40",reset_mass)
writeFloat("[CharacterDataAttr]+3c",reseet_breath)
writeFloat("[MovementModule]+20",reset_jh)
writeFloat("[MovementModule]+10",reset_ms)

writeInteger(ptr_Healt,reset_Health)
writeInteger(ptr_Stam,reset_Stam )
writeInteger(ptr_Strength,reset_Strength)
writeInteger(ptr_Dext,reset_Dext)
writeInteger(ptr_Res ,reset_Res)
CETrainer.Value_HP1.Text = readFloat("[CombatModule]+24")
end


function StoreValues()
reset_maxhp = readFloat("[CombatModule]+20")
reset_mass = readInteger("[CharacterDataInv]+40")
reseet_breath = readFloat("[CharacterDataAttr]+3c")
reset_jh = readFloat("[MovementModule]+20")
reset_ms = readFloat("[MovementModule]+10")

reset_Health = readInteger(ptr_Healt)
reset_Stam = readInteger(ptr_Stam)
reset_Strength = readInteger(ptr_Strength)
reset_Dext = readInteger(ptr_Dext)
reset_Res = readInteger(ptr_Res)
end





function OnFormClose(Sender)
  os.execute("taskkill /F /IM GRIMETrainer.exe")
  closeCE()
  return caFree
end

CETrainer.OnClose = OnFormClose

--TRAINERGENERATORSTART--
--This is autogenerated code. Changing code in this block will
--get erased and rewritten if you regenerate the trainer code

--Uncomment the following line if this is a Cheat Table format trainer and you don't want CE to show (Tip, save as .CETRAINER alternatively)
--hideAllCEWindows()

RequiredCEVersion=7.5
if (getCEVersion==nil) or (getCEVersion()<RequiredCEVersion) then
  messageDialog('Please install Cheat Engine '..RequiredCEVersion, mtError, mbOK)
  closeCE()
end
addresslist=getAddressList()



getAutoAttachList().add("GRIME.exe")
gPlaySoundOnAction=false
CETrainer.fixDPI() --remove this if you have already taken care of DPI issues yourself
CETrainer.show()
function AboutClick()
  showMessage(gAboutText)
end
gAboutText=[[This trainer was made by Wayden
www.cheatengine.org]]

function CloseClick()
  --called by the close button onClick event, and when closing the form
  closeCE()
  return caFree --onClick doesn't care, but onClose would like a result
end

--TRAINERGENERATORSTOP--