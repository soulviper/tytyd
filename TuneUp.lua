gg.setVisible(false);
rnd = math.random(100000, 999999);
r = gg.prompt({[1]=("Enter This Code :- " .. rnd)}, {}, {[1]="number"});
if (tonumber(r[1]) ~= rnd) then
	return;
end
gg.clearResults();
gg.setVisible(false);
L = {"◼","◻","◻","◻","◻","◻"};
LD = 0;
for i = 0, 6, 1 do
	if (gg.isVisible(true) and (i ~= 6)) then
		gg.setVisible(false);
	end
	gg.sleep(150);
	gg.toast("Loading: " .. L[1] .. L[2] .. L[3] .. L[4] .. L[5] .. L[6] .. " " .. LD .. "/100%");
	LD = LD + 20;
	table.remove(L);
	table.insert(L, 2, "◼");
	if (i == 6) then
		gg.toast("Loading finished\n--[[Welcome To My Script🎭]]--\nMade By ɖքʀ•ʟʏռӼ≝ ʏȶ ♥");
		gg.sleep(3500);
	end
end
gg.setVisible(false);
local Alert = gg.alert([[
  🧾Information🧾
 ×•×•×•×•××•×•×•×•×•×•×•×•×•×•×•×•××•×
 🎮Game Name ∶ Car Parking Multiplayer
 🎰Version       ∶ 4.8.13.6
 🟢Status Script ∶ FREE
 👤Creator       ∶ ɖքʀ•ʟʏռӼ≝
 ×•×•×•×•×•×•×•×•×•×•×•×•××•×•×•×•××•×

📣𝙳𝚄𝙺𝚄𝙽𝙶 𝚃𝙴𝚁𝚄𝚂 𝚈𝙾𝚄𝚃𝚄𝙱𝙴 𝙲𝙷𝙰𝙽𝙽𝙴𝙻 ɖքʀ•ʟʏռӼ ʏȶ]], "⟬Subscribe⟭", "⟬Tekan⟭");
if (Alert == nil) then
	return 0;
elseif (Alert == 2) then
	gg.alert("💔Please Click Subscribe🥲", "⟬Ok⟭");
	os.exit();
else
end
function LynXLua()
end
function setvalue(address, flags, value)
	LynXLua("Modify address value(Address, value type, value to be modified)");
	local tt = {};
	tt[1] = {};
	tt[1].address = address;
	tt[1].flags = flags;
	tt[1].value = value;
	gg.setValues(tt);
end
local n, startAddress, endAddress = nil, 0, 0;
local function name(lib)
	if (n == lib) then
		return startAddress, endAddress;
	end
	local ranges = gg.getRangesList("libil2cpp.so");
	for i, v in ipairs(ranges) do
		if (v.state == "Xa") then
			startAddress = v.start;
			endAddress = ranges[#ranges]["end"];
			break;
		end
	end
	return startAddress, endAddress;
end
local function DPRHex(libname, offset, hex)
	name(libname);
	local t, total = {}, 0;
	for h in string.gmatch(hex, "%S%S") do
		table.insert(t, {address=(startAddress + offset + total),flags=gg.TYPE_BYTE,value=(h .. "r")});
		total = total + 1;
	end
	local res = gg.setValues(t);
	if (type(res) ~= "string") then
		return true;
	else
		gg.alert(res);
		return false;
	end
end
off = " [✘]";
on = " [✔]";
custom = off;
cstatus_HB6 = off;
HQ = off;
X = 0;
function Menu()
	if (X == 1) then
		tuneup();
	else
		menu = gg.choice({("⟬🧑‍🏭⟭Custom HP TuneUp" .. custom),("⟬🧑‍🏭⟭Custom Spec Car" .. cstatus_HB6),"⟬🧑‍🏭⟭Menu All In TuneUp 99-414HP",("⟬🧑‍🏭⟭Glitch 1515HP Server ORI" .. HQ),"         •Info GB Glicth•","⟬🔚⟭Exit"}, nil, os.date("✥⌇ 🟢FREE√sᴄʀɪᴘᴛ\n✥⌇ 👤️Creator ʙʏ ɖքʀ•ʟʏռӼ≝ 🇮🇩\n✥⌇ 🗓️️Tanggal : %d %B %Y\n✥⌇ ☁Waktu    : %H:%M"));
		if (menu == nil) then
		elseif (menu == 1) then
			custom1();
		elseif (menu == 2) then
			if (cstatus_HB6 == off) then
				test_HB4(on);
				cstatus_HB6 = on;
			else
				test_HB7(off);
				cstatus_HB6 = off;
				gg.toast(" OFF ☑️ ");
			end
		elseif (menu == 3) then
			tuneup();
		elseif (menu == 4) then
			HQ1();
		elseif (menu == 5) then
			info();
		elseif (menu == 6) then
			Exit();
		end
	end
end
function custom1()
	if (custom == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		input = gg.prompt({"INPUT HP"}, {[1]="0"}, {[1]="number"});
		if (input == nil) then
			os.exit();
		end
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, input[1]);
		alert();
		custom = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		custom = off;
	end
end
function test_HB4(on)
	Result = gg.prompt({[1]="Input Hp",[2]="input InnerHP",[3]="Input Nm",[4]="Input InnerNm",[5]="Input Shiftime\nExample For TuneUp: 9, 980898E-15\nExample For Glitch: 0,1"}, nil, {"number","number","number","number","number","checkbox"});
	if (Result == nil) then
		return garage();
	end
	if (Result[1] and Result[2] and Result[3] and Result[4] and Result[5]) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, Result[1]);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, Result[2]);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, Result[3]);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, Result[4]);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, Result[5]);
		alert();
	end
end
function test_HB7(off)
	LynX = gg.getRangesList("libil2cpp.so")[2].start;
	Lua = 84874128;
	setvalue(LynX + Lua, 16, 190);
	LynX = gg.getRangesList("libil2cpp.so")[2].start;
	Lua = 84874136;
	setvalue(LynX + Lua, 16, 5900);
	LynX = gg.getRangesList("libil2cpp.so")[2].start;
	Lua = 84871444;
	setvalue(LynX + Lua, 16, 300);
	LynX = gg.getRangesList("libil2cpp.so")[2].start;
	Lua = 84874132;
	setvalue(LynX + Lua, 16, 4100);
	LynX = gg.getRangesList("libil2cpp.so")[2].start;
	Lua = 84869768;
	setvalue(LynX + Lua, 16, 0.10000000149);
end
function HQ1()
	if (HQ == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 1515);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 1188);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2255);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 1177);
		alert();
		HQ = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		galert();
		HQ = off;
	end
end
off = " [✘]";
on = " [✔]";
HA = off;
HB = off;
HC = off;
HD = off;
HE = off;
HF = off;
HG = off;
HH = off;
HI = off;
HJ = off;
HK = off;
HL = off;
HM = off;
HN = off;
HO = off;
HP = off;
HQ = off;
HR = off;
function tuneup()
	X = 1;
	engine_menu = gg.choice({("⟬🧑‍🏭⟭99hp" .. HA),("⟬🧑‍🏭⟭100hp" .. HB),("⟬🧑‍🏭⟭101hp" .. HC),("⟬🧑‍🏭⟭110hp" .. HD),("⟬🧑‍🏭⟭111hp" .. HE),("⟬🧑‍🏭⟭121hp" .. HF),("⟬🧑‍🏭⟭123hp" .. HG),("⟬🧑‍🏭⟭125hp" .. HH),("⟬🧑‍🏭️⟭135hp" .. HI),("⟬🧑‍🏭⟭150hp" .. HJ),("⟬🧑‍🏭⟭180hp" .. HK),("⟬🧑‍🏭⟭190hp" .. HL),("⟬🧑‍🏭⟭199hp" .. HM),("⟬🧑‍🏭⟭200hp" .. HN),("⟬🧑‍🏭⟭414hp" .. HO),("⟬🧑‍🏭⟭333hp" .. HP),("⟬🧑‍🏭️⟭1695hp Original w16" .. HR),"⟬🔙⟭Kembali"}, nil, "||👤||ᴍᴀᴅᴇ ʙʏ ɖքʀ•ʟʏռӼ≝ 🇮🇩");
	if (engine_menu == 1) then
		HA1();
	end
	if (engine_menu == 2) then
		HB2();
	end
	if (engine_menu == 3) then
		HC3();
	end
	if (engine_menu == 4) then
		HD4();
	end
	if (engine_menu == 5) then
		HE5();
	end
	if (engine_menu == 6) then
		HF6();
	end
	if (engine_menu == 7) then
		HG7();
	end
	if (engine_menu == 8) then
		HH8();
	end
	if (engine_menu == 9) then
		HI9();
	end
	if (engine_menu == 10) then
		HJ10();
	end
	if (engine_menu == 11) then
		HK11();
	end
	if (engine_menu == 12) then
		HL12();
	end
	if (engine_menu == 13) then
		HM13();
	end
	if (engine_menu == 14) then
		HN14();
	end
	if (engine_menu == 15) then
		HO15();
	end
	if (engine_menu == 16) then
		HP16();
	end
	if (engine_menu == 17) then
		HR17();
	end
	if (engine_menu == 18) then
		HOME();
	end
end
function HA1()
	if (HA == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 99);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HA = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HA = off;
	end
end
function HB2()
	if (HB == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HB = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HB = off;
	end
end
function HC3()
	if (HC == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 101);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HC = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HC = off;
	end
end
function HD4()
	if (HD == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 110);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HD = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HD = off;
	end
end
function HE5()
	if (HE == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 112);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HE = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HE = off;
	end
end
function HF6()
	if (HF == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 121);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HF = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HF = off;
	end
end
function HG7()
	if (HG == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 123);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HG = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HG = off;
	end
end
function HH8()
	if (HH == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 125);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HH = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HH = off;
	end
end
function HI9()
	if (HI == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 135);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HI = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HI = off;
	end
end
function HJ10()
	if (HJ == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 150);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HJ = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HJ = off;
	end
end
function HK11()
	if (HK == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 180);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HK = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HK = off;
	end
end
function HL12()
	if (HL == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HL = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HL = off;
	end
end
function HM13()
	if (HM == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 199);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HM = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HM = off;
	end
end
function HN14()
	if (HN == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 200);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HN = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HN = off;
	end
end
function HO15()
	if (HO == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 414);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HO = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HO = off;
	end
end
function HP16()
	if (HP == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 333);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 8000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 7998);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 9.980898e-15);
		alert();
		HP = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		setvalue(LynX + Lua, 16, 0.10000000149);
		galert();
		HP = off;
	end
end
function HR17()
	if (HR == off) then
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 1695);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 7000);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 2245);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 3500);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84869768;
		alert();
		HR = on;
	else
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874128;
		setvalue(LynX + Lua, 16, 190);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874136;
		setvalue(LynX + Lua, 16, 5900);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84871444;
		setvalue(LynX + Lua, 16, 300);
		LynX = gg.getRangesList("libil2cpp.so")[2].start;
		Lua = 84874132;
		setvalue(LynX + Lua, 16, 4100);
		galert();
		HR = off;
	end
end
function alert()
	gg.setVisible(false);
	gg.alert([[ Please Buy This 👨‍🏭
   
   ⌇Buy Engine L4 2.5 ✔️
   ⌇Sports type tires ✔️
   ⌇Fast gearbox ✔️
  
‼️AFTER NOT USING IT, DON`T FORGET TO TURN IT OFF FIRST ]], "⟬Oke⟭");
end
function galert()
	gg.toast("OFF ☑️");
end
function info()
	gg.setVisible(false);
	gg.alert([[
#Final↣5.99
#1↣0.10
#2↣0.00
#3↣1.85
#4↣4.15
#5↣0.80
#6↣0.63
#7↣0.53 ]], "⟬Oke⟭");
	gg.clearResults();
end
function HOME()
	X = 0;
	Menu();
end
function Exit()
	print("KONTOL");
	os.exit();
end
while true do
	gg.setVisible(false);
	Menu();
	gg.setVisible(false);
	while gg.isVisible() == false do
	end
end
