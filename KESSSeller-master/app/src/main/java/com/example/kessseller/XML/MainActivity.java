package com.example.kessseller.XML;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;

import com.example.kessseller.Java.DataRecyclerView;
import com.example.kessseller.Java.RecyclerAdapter;
import com.example.kessseller.R;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
//    String user[],date[],filter,booking_date,code,type,payment,deposit;
//    Lis
//    DataRecyclerView.DataRecycler dataRecycler = new DataRecyclerView.DataRecycler(List);
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.booking_myorder);
        RecyclerView recyclerView = (RecyclerView)findViewById(R.id.my_rebooking);
        recyclerView.setHasFixedSize(true);
//        RecyclerAdapter recyclerAdapter = new RecyclerAdapter(this, dataRecyclerView)
        LinearLayoutManager llm = new LinearLayoutManager(this);
        llm.setOrientation(LinearLayoutManager.VERTICAL);
        recyclerView.setLayoutManager(llm);
//        RecyclerAdapter adapter = new RecyclerAdapter();
//        datas = new ArrayList<>();
//        recyclerView.setAdapter(adapter);

    }
}