;get width and heights of controls
getControlInfo(setd, type="button", text="", ret="w", fontsize="", fontmore=""){
	static test
	Gui, wasteGUI:New
	Gui, wasteGUI:Font, % fontsize, % fontmore
	Gui, wasteGUI:Add, % type, vtest, % text
	GuiControlGet, test, wasteGUI:pos
	Gui, wasteGUI:Destroy
	Gui, % setd ":Default"
	if ret=w
		return testw
	if ret=h
		return testh
}