#include <stdio.h>
#include "HelloJNI.h"

JNIEXPORT jstring JNICALL Java_com_example_HelloAndroid_HelloJNI_stringFromJNI(JNIEnv *env, jobject)
{
	return (*env)->NewStringUTF(env, "UYEN KIM From JNI");
}