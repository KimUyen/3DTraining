#include <Windows.h>
class WindowsWin32
{
	HWND window;
	WindowsWin32();
	static WindowsWin32 * instance;
public:
	void * CreateWindows(int width, int heigh);
	int Update();
	static WindowsWin32 * GetInstance()
	{
		if (instance == nullptr)
		{
			instance = new WindowsWin32();
		}
		return instance;
	}
	~WindowsWin32();

};