#include <stdio.h>
#include "HelloJNI.h"

extern "C"
JNIEXPORT jstring JNICALL Java_com_example_HelloAndroid_HelloJNI_stringFromJNI(JNIEnv *env, jobject)
{
	return env->NewStringUTF("UYEN KIM From JNI");
}