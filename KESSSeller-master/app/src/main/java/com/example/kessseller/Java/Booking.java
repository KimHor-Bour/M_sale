package com.example.kessseller.Java;

import android.app.Activity;
import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.kessseller.R;

public class Booking extends Activity {
    private RecyclerView recyclerView;
    private LinearLayoutManager layoutManger;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // use this setting to improve performance if you know that chatnge in content do not change the layout size of the RecyclerView
        recyclerView.setHasFixedSize(true);
        
        //use a linear layout manager
        layoutManger = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(layoutManger);
        
        // specify an adapter (see also next example )

        
    }
}
