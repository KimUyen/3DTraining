class Application
{
public:
	Application();
	bool Init(void *window, int width, int height);
	void Update();
	void Pause();
	void Resume();
	void Exit();
	~Application();
};
