gg.setVisible(false);
L = {"◼","◻","◻","◻","◻","◻"};
LD = 0;
for i = 0, 6, 1 do
	if (gg.isVisible(true) and (i ~= 6)) then
		gg.setVisible(false);
	end
	gg.sleep(150);
	gg.setVisible(false);
	gg.toast("Loading: " .. L[1] .. L[2] .. L[3] .. L[4] .. L[5] .. L[6] .. " " .. LD .. "/100%");
	LD = LD + 20;
	table.remove(L);
	table.insert(L, 2, "◼");
	if (i == 6) then
		gg.setVisible(false);
		gg.toast("Loading finished\n--[[Welcome To My Script🎭]]--\nMade By ɖքʀ•ʟʏռӼ ʏȶ ♥");
		gg.sleep(3500);
		gg.clearResults();
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
gg.clearResults();
on = " [✘]";
off = " [✔]";
pragos01 = on;
pragos02 = on;
DPRLynX = 2;
function Menu()
	gg.setVisible(false);
	menu = gg.choice({("⟬🏁⟭Instan Finish Towing" .. pragos01),"⟬🚛⟭Race Towing Loaded City1","⟬🚛⟭Race Towing Loaded HigWay","⟬🏁⟭Instan Finish All Car",("⟬🚦⟭BugLampu" .. pragos02),"⟬🔥⟭Unlimited Tires<on-lobby>","⟬🔚⟭Exit"}, nil, os.date("✥⌇ 🟢FREE√sᴄʀɪᴘᴛ\n✥⌇ 👤️Creator ʙʏ ɖքʀ•ʟʏռӼ≝ 🇮🇩\n✥⌇ 🗓️️Tanggal : %d %B %Y\n✥⌇ ☁Waktu    : %H:%M"));
	if (menu == 7) then
		Exit();
	elseif (menu == nil) then
	elseif (menu == 1) then
		if (pragos01 == on) then
			a1(on);
			pragos01 = off;
			gg.alert("Click The Button 🛣️ And Ready To Race");
		else
			a2(off);
			pragos01 = on;
			gg.alert("Click The Button 🛣 ️So That The Car Returns To Normal");
		end
	elseif (menu == 2) then
		city1();
	elseif (menu == 3) then
		hw();
	elseif (menu == 4) then
		instan();
	elseif (menu == 5) then
		if (pragos02 == on) then
			b1(on);
			pragos02 = off;
			gg.toast("🚦RealBugLamp ON🚦");
		else
			b2(off);
			pragos02 = on;
			gg.toast("🚦RealBugLamp OFF🚦");
		end
	elseif (menu == 6) then
		tires();
	end
end
function a1(on)
	gg.setVisible(false);
	gg.setRanges(gg.REGION_ANONYMOUS);
	gg.searchNumber("1,059,431,698", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);
	gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil);
	gg.editAll("1,137,115,136", gg.TYPE_DWORD);
	gg.clearResults();
end
function a2(off)
	gg.setVisible(false);
	gg.setRanges(gg.REGION_ANONYMOUS);
	gg.searchNumber("1,137,115,136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);
	gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil);
	gg.editAll("1,059,431,698", gg.TYPE_DWORD);
	gg.clearResults();
end
function city1()
	DPR_LynX("MultiDragRacingControll", "0x60", false, false, gg.TYPE_FLOAT);
	gg.getResults(50);
	local t = gg.getResults(50);
	gg.addListItems(t);
	t = nil;
	gg.clearResults();
	local copy = false;
	local t = gg.getListItems();
	if not copy then
		gg.removeListItems(t);
	end
	for i, v in ipairs(t) do
		v.address = v.address + 8;
		if copy then
			v.name = v.name .. " #2";
		end
	end
	MAMPUSTOLOL = t;
	gg.addListItems(t);
	t = nil;
	copy = nil;
	gg.loadResults(MAMPUSTOLOL);
	x = gg.getResults(1);
	gg.clearResults();
	NGENTOT = x[1].value;
	x[1].freeze = true;
	gg.setValues(x);
	gg.sleep(200);
	local copy = false;
	local t = gg.getListItems();
	if not copy then
		gg.removeListItems(t);
	end
	for i, v in ipairs(t) do
		v.address = v.address + 18446744000000000000;
		if copy then
			v.name = v.name .. " #2";
		end
	end
	MAMPUSTOLOL = t;
	gg.addListItems(t);
	t = nil;
	copy = nil;
	gg.loadResults(MAMPUSTOLOL);
	x = gg.getResults(1);
	gg.clearResults();
	if (NGENTOT == 0) then
		MAMPUS = 555.5;
	else
		MAMPUS = NGENTOT;
	end
	x[1].value = MAMPUS;
	x[1].freeze = true;
	gg.setValues(x);
	gg.sleep(333);
	x[1].value = MAMPUS;
	x[1].freeze = true;
	gg.setValues(x);
	gg.clearList();
	gg.clearResults();
	gg.setVisible(false);
	gg.alert([[
Works only if you are invited to race
Activate the button to transport the car]], "⟬Oke⟭");
end
function hw()
	DPR_LynX("MultiDragRacingControll", "0x70", false, false, gg.TYPE_FLOAT);
	gg.getResults(50);
	local t = gg.getResults(50);
	gg.addListItems(t);
	t = nil;
	gg.clearResults();
	local copy = false;
	local t = gg.getListItems();
	if not copy then
		gg.removeListItems(t);
	end
	for i, v in ipairs(t) do
		v.address = v.address + 8;
		if copy then
			v.name = v.name .. " #2";
		end
	end
	MAMPUSTOLOL = t;
	gg.addListItems(t);
	t = nil;
	copy = nil;
	gg.loadResults(MAMPUSTOLOL);
	x = gg.getResults(1);
	gg.clearResults();
	NGENTOT = x[1].value;
	x[1].freeze = true;
	gg.setValues(x);
	gg.sleep(200);
	local copy = false;
	local t = gg.getListItems();
	if not copy then
		gg.removeListItems(t);
	end
	for i, v in ipairs(t) do
		v.address = v.address + 18446744000000000000;
		if copy then
			v.name = v.name .. " #2";
		end
	end
	MAMPUSTOLOL = t;
	gg.addListItems(t);
	t = nil;
	copy = nil;
	gg.loadResults(MAMPUSTOLOL);
	x = gg.getResults(1);
	gg.clearResults();
	if (NGENTOT == 0) then
		MAMPUS = 555.5;
	else
		MAMPUS = NGENTOT;
	end
	x[1].value = MAMPUS;
	x[1].freeze = true;
	gg.setValues(x);
	gg.sleep(333);
	x[1].value = MAMPUS;
	x[1].freeze = true;
	gg.setValues(x);
	gg.clearList();
	gg.clearResults();
	gg.setVisible(false);
	gg.alert([[
Works only if you are invited to race
Activate the button to transport the car]], "⟬Oke⟭");
end
function b1(on)
	gg.setVisible(false);
	LibStart = gg.getRangesList("libil2cpp.so")[2].start;
	DPRLynX = nil;
	DPRLynX = {};
	DPRLynX[1] = {};
	DPRLynX[2] = {};
	DPRLynX[1].address = LibStart + 32785332;
	DPRLynX[1].value = "hE0E184D2";
	DPRLynX[1].flags = 4;
	DPRLynX[2].address = LibStart + 32785332 + 4;
	DPRLynX[2].value = "hC0035FD6";
	DPRLynX[2].flags = 4;
	gg.setValues(DPRLynX);
	gg.clearResults();
end
function b2(off)
	gg.setVisible(false);
	LibStart = gg.getRangesList("libil2cpp.so")[2].start;
	DPRLynX = nil;
	DPRLynX = {};
	DPRLynX[1] = {};
	DPRLynX[2] = {};
	DPRLynX[1].address = LibStart + 32785332;
	DPRLynX[1].value = "hFF0301D1";
	DPRLynX[1].flags = 4;
	DPRLynX[2].address = LibStart + 32785332 + 4;
	DPRLynX[2].value = "hF65701A9";
	DPRLynX[2].flags = 4;
	gg.setValues(DPRLynX);
	gg.clearResults();
end
function instan()
	gg.setVisible(false);
	gg.setRanges(gg.REGION_ANONYMOUS);
	gg.searchNumber("4552454670983385580", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0);
	revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil);
	revert = gg.getValues(revert);
	gg.editAll("hF0237449", gg.TYPE_QWORD);
	gg.toast("⚠ Click The GG Logo Again When You Are Finished ⚠");
	while true do
		if gg.isVisible() then
			break;
		else
			gg.sleep(100);
		end
	end
	gg.setVisible(false);
	if (revert ~= nil) then
		gg.setValues(revert);
	end
	gg.clearResults();
	gg.toast("SCRIPT OFF✓");
end
function tires()
	gg.setVisible(false);
	Tester = gg.getRangesList("libil2cpp.so")[1].start;
	Lua = 90058396;
	setvalue(Tester + Lua, 16, 99);
	Tester = gg.getRangesList("libil2cpp.so")[2].start;
	Lua = 90058396;
	setvalue(Tester + Lua, 16, 99);
	gg.toast(" DONE ☑️ ");
end
function Exit()
	print("××× KONTOL ×××");
	os.exit();
end
function DPR_LynX(class, offset, tryHard, bit32, valueType)
	Get_user_input = {};
	Get_user_input[1] = class;
	Get_user_input[2] = offset;
	Get_user_input[3] = tryHard;
	Get_user_input[4] = bit32;
	Get_user_type = valueType;
	start();
end
function loopCheck()
	if (userMode == 1) then
		UI();
	elseif (error == 3) then
		stopClose();
	end
end
function found_(message)
	if (error == 1) then
		found2(message);
	elseif (error == 2) then
		found3(message);
	elseif (error == 3) then
		found4(message);
	else
		found(message);
	end
end
function found(message)
	if (count == 0) then
		gg.clearResults();
		gg.clearList();
		first_error = message;
		error = 1;
		second_start();
	end
end
function found2(message)
	if (count == 0) then
		gg.clearResults();
		gg.clearList();
		second_error = message;
		error = 2;
		third_start();
	end
end
function found3(message)
	if (count == 0) then
		gg.clearResults();
		gg.clearList();
		third_error = message;
		error = 3;
		fourth_start();
	end
end
function found4(message)
	if (count == 0) then
		gg.clearResults();
		gg.clearList();
		gg.alert("Only 64Bit Version ✘\nNot Support 32Bit Version ✔");
		gg.setVisible(true);
		loopCheck();
	end
end
function user_input_taker()
	::stort::;
	gg.clearResults();
	if (userMode == 1) then
		if (Get_user_input == nil) then
			default1 = "KONTOL";
			default2 = "NGENTOT";
			default3 = false;
			default4 = false;
		else
			default1 = Get_user_input[1];
			default2 = Get_user_input[2];
			default3 = Get_user_input[3];
			default4 = Get_user_input[4];
		end
		if (Get_user_type == 1) then
			Get_user_type = gg.TYPE_BYTE;
		elseif (Get_user_type == 2) then
			Get_user_type = gg.TYPE_DWORD;
		elseif (Get_user_type == 3) then
			Get_user_type = gg.TYPE_QWORD;
		elseif (Get_user_type == 4) then
			Get_user_type = gg.TYPE_FLOAT;
		elseif (Get_user_type == 5) then
			Get_user_type = gg.TYPE_DOUBLE;
		end
		if (Get_user_type ~= gg.TYPE_BYTE) then
			if ((Get_user_input[2] % 4) ~= 0) then
				gg.alert("IDK️");
				goto stort;
			end
		end
	end
	error = 0;
end
function O_initial_search()
	gg.setVisible(false);
	user_input = ":" .. Get_user_input[1];
	if Get_user_input[3] then
		offst = 25;
	else
		offst = 0;
	end
end
function O_dinitial_search()
	if (error > 1) then
		gg.setRanges(gg.REGION_C_ALLOC);
	else
		gg.setRanges(gg.REGION_OTHER);
	end
	gg.searchNumber(user_input, gg.TYPE_BYTE);
	count = gg.getResultsCount();
	if (count == 0) then
		found_("O_dinitial_search");
		return 0;
	end
	Refiner = gg.getResults(1);
	gg.refineNumber(Refiner[1].value, gg.TYPE_BYTE);
	count = gg.getResultsCount();
	if (count == 0) then
		found_("O_dinitial_search");
		return 0;
	end
	val = gg.getResults(count);
	gg.addListItems(val);
end
function CA_pointer_search()
	gg.clearResults();
	gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER);
	gg.loadResults(gg.getListItems());
	gg.searchPointer(offst);
	count = gg.getResultsCount();
	if (count == 0) then
		found_("CA_pointer_search");
		return 0;
	end
	vel = gg.getResults(count);
	gg.clearList();
	gg.addListItems(vel);
end
function CA_apply_offset()
	if Get_user_input[4] then
		tanker = 18446744000000000000;
	else
		tanker = 18446744000000000000;
	end
	local copy = false;
	local l = gg.getListItems();
	if not copy then
		gg.removeListItems(l);
	end
	for i, v in ipairs(l) do
		v.address = v.address + tanker;
		if copy then
			v.name = v.name .. " #2";
		end
	end
	gg.addListItems(l);
end
function CA2_apply_offset()
	if Get_user_input[4] then
		tanker = 18446744000000000000;
	else
		tanker = 18446744000000000000;
	end
	local copy = false;
	local l = gg.getListItems();
	if not copy then
		gg.removeListItems(l);
	end
	for i, v in ipairs(l) do
		v.address = v.address + tanker;
		if copy then
			v.name = v.name .. " #2";
		end
	end
	gg.addListItems(l);
end
function Q_apply_fix()
	gg.setRanges(gg.REGION_ANONYMOUS);
	gg.loadResults(gg.getListItems());
	gg.clearList();
	count = gg.getResultsCount();
	if (count == 0) then
		found_("Q_apply_fix");
		return 0;
	end
	yy = gg.getResults(1000);
	gg.clearResults();
	i = 1;
	c = 1;
	s = {};
	while (i - 1) < count do
		yy[i].address = yy[i].address + 12970367000000000000;
		gg.searchNumber(yy[i].address, gg.TYPE_QWORD);
		cnt = gg.getResultsCount();
		if (0 < cnt) then
			bytr = gg.getResults(cnt);
			n = 1;
			while (n - 1) < cnt do
				s[c] = {};
				s[c].address = bytr[n].address;
				s[c].flags = 32;
				n = n + 1;
				c = c + 1;
			end
		end
		gg.clearResults();
		i = i + 1;
	end
	gg.addListItems(s);
end
function A_base_value()
	gg.setRanges(gg.REGION_ANONYMOUS);
	gg.loadResults(gg.getListItems());
	gg.clearList();
	gg.searchPointer(offst);
	count = gg.getResultsCount();
	if (count == 0) then
		found_("A_base_value");
		return 0;
	end
	tel = gg.getResults(count);
	gg.addListItems(tel);
end
function A_base_accuracy()
	gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC);
	gg.loadResults(gg.getListItems());
	gg.clearList();
	gg.searchPointer(offst);
	count = gg.getResultsCount();
	if (count == 0) then
		found_("A_base_accuracy");
		return 0;
	end
	kol = gg.getResults(count);
	i = 1;
	h = {};
	while (i - 1) < count do
		h[i] = {};
		h[i].address = kol[i].value;
		h[i].flags = 32;
		i = i + 1;
	end
	gg.addListItems(h);
end
function A_user_given_offset()
	local old_save_list = gg.getListItems();
	for i, v in ipairs(old_save_list) do
		v.address = v.address + Get_user_input[2];
		v.flags = Get_user_type;
	end
	gg.clearResults();
	gg.clearList();
	gg.loadResults(old_save_list);
	count = gg.getResultsCount();
	if (count == 0) then
		found_("Q_apply_fix++");
		return 0;
	end
	gg.setVisible(false);
end
function start()
	user_input_taker();
	O_initial_search();
	O_dinitial_search();
	if (error > 0) then
		return 0;
	end
	CA_pointer_search();
	if (error > 0) then
		return 0;
	end
	CA_apply_offset();
	if (error > 0) then
		return 0;
	end
	A_base_value();
	if (error > 0) then
		return 0;
	end
	if (offst == 0) then
		A_base_accuracy();
	end
	if (error > 0) then
		return 0;
	end
	A_user_given_offset();
	if (error > 0) then
		return 0;
	end
	loopCheck();
	if (error > 0) then
		return 0;
	end
end
function second_start()
	O_dinitial_search();
	if (error > 1) then
		return 0;
	end
	CA_pointer_search();
	if (error > 1) then
		return 0;
	end
	CA_apply_offset();
	if (error > 1) then
		return 0;
	end
	Q_apply_fix();
	if (error > 1) then
		return 0;
	end
	if (offst == 0) then
		A_base_accuracy();
	end
	if (error > 1) then
		return 0;
	end
	A_user_given_offset();
	if (error > 1) then
		return 0;
	end
	loopCheck();
	if (error > 1) then
		return 0;
	end
end
function third_start()
	O_dinitial_search();
	if (error > 2) then
		return 0;
	end
	CA_pointer_search();
	if (error > 2) then
		return 0;
	end
	if (offst == 0) then
		CA2_apply_offset();
	end
	if (error > 2) then
		return 0;
	end
	A_base_value();
	if (error > 2) then
		return 0;
	end
	if (offst == 0) then
		A_base_accuracy();
	end
	if (error > 2) then
		return 0;
	end
	A_user_given_offset();
	if (error > 2) then
		return 0;
	end
	loopCheck();
	if (error > 2) then
		return 0;
	end
end
function fourth_start()
	O_dinitial_search();
	CA_pointer_search();
	CA2_apply_offset();
	Q_apply_fix();
	if (offst == 0) then
		A_base_accuracy();
	end
	A_user_given_offset();
	loopCheck();
end
function stopClose()
	while true do
		gg.setVisible(false);
		Menu();
		gg.setVisible(false);
		while gg.isVisible() == false do
		end
	end
end
if (DPRLynX == 2) then
	stopClose();
else
	UI();
end
