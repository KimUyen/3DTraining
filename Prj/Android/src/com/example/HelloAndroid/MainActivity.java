package com.example.HelloAndroid;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
				TextView tx = new TextView(this);
				HelloJNI hl = new HelloJNI();
				tx.setText(hl.stringFromJNI());
        setContentView(tx);
    }
}
