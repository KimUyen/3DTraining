#include <stdio.h>
#include "Application.h"
#include <Windows.h>
#include "CreateWindows\WindowsWin32.h"

int main()
{
	printf("Main");
	HWND * window;
	int width = 500;
	int height = 900;
	//// Init app
	window = (HWND*)WindowsWin32::GetInstance()->CreateWindows(width, height);

	Application newApp;
	newApp.Init(window, width, height);
	bool alive = true;
	while (alive)
	{
		alive = WindowsWin32::GetInstance()->Update();
		newApp.Update();
	}
	newApp.Exit();
}