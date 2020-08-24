package com.example.listview_1;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class Second extends Activity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second);
        TextView txtPro = (TextView) findViewById(R.id.txt);

        Intent i = getIntent();
        //getting attached intent data
        String product = i.getStringExtra("team");
        //displying selected product name
        txtPro.setText(product);
    }
}
