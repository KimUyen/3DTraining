package com.example.HelloAndroid;
public class HelloJNI
{
	static
	{
		System.loadLibrary("HelloJNI");
	}
	
	public native String stringFromJNI();
}