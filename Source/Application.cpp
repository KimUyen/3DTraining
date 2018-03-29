#include "Application.h"
#include <stdio.h>

Application::Application()
{
}

bool Application::Init(void * window, int width, int height)
{
	printf("Application Init ..............\n");
	
	return nullptr;
}

void Application::Update()
{
	printf("Application Update ..............\n");
	
}

void Application::Pause()
{
}

void Application::Resume()
{
}

void Application::Exit()
{
	printf("Application Exit ..............\n");
}


Application::~Application()
{
}
