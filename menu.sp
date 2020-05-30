#include <sourcemod>

public void OnPluginStart()
{	
	RegConsoleCmd("sm_menu",Command_Menu);
	AddCommandListener(F3bind, "autobuy")
}

public Action Command_Menu(int client, int args)
{
	Menus_Showmain(client);
}
public int Handler_mianMenu(Menu menu, MenuAction action, int client,int itemNum)
{
	if (action == MenuAction_Select)
	{
	switch (itemNum)
		{
			case 0:
			{	
				FakeClientCommand(client, "sm_r"); 
			}
			case 1:
			{
				FakeClientCommand(client, "sm_b"); 
			}
			case 2:
			{
				FakeClientCommand(client, "sm_pause"); 
			}
			case 3:
			{
				FakeClientCommand(client, "sm_style"); 
			}
			case 4:
			{
				FakeClientCommand(client, "sm_nominate"); 
			}
		}
	}
	
}


void Menus_Showmain(int client)
{
	Menu menu = new Menu(Handler_mianMenu);
	menu.SetTitle("helpmenu[F3|F3]");
	menu.AddItem("sb", "回到起点[!r]");
	menu.AddItem("sb","回到奖励关[!b]");
	menu.AddItem("sb","暂停[!pause]");
	menu.AddItem("sb","切换模式[!style]");
	menu.AddItem("sb","预定菜单[!yd]");
	menu.Display(client, MENU_TIME_FOREVER);
	menu.ExitButton = true;
}

public Action F3bind(client, const String:command[], args)
{
	
} 