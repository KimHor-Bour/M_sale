package com.example.kessseller.Java;

import java.util.ArrayList;
import java.util.List;

public class DataRecyclerView {
    public class  DataRecycler{
        String user;
        String date;
        String filter_type;
        String bookingdate;
        String booking_id;
        String type;
        String payment_method;
        String deposit_price;

        DataRecycler(String user,String date,String filter_type, String bookingdate, String booking_id,
                         String type, String payment_method, String deposit_price){
            this.user = user;
            this.date = date;
            this.filter_type = filter_type;
            this.bookingdate = bookingdate;
            this.booking_id = booking_id;
            this.type = type;
            this.payment_method = payment_method;
            this.deposit_price = deposit_price;
        }
    }
    private List<DataRecycler> data;
    private void  initData(){
        data = new ArrayList<>();
        data.add(new DataRecycler("Bour Kim Hor","Auguest 08 2020  11:30AM",
                "Pending","Auguest 09 2020  1:30 PM - 5:00 PM","#428567",
                "Table Number 09","KESS pay","10$"));
        data.add(new DataRecycler("Ly KimLeang","Auguest 09 2020  11:30AM",
                "Pending","Auguest 09 2020  1:30 PM - 5:00 PM","#420567",
                "Table Number 09","KESS pay","11$"));
        data.add(new DataRecycler("Songeam Sela","Auguest 01 2020  11:30AM",
                "Pending","Auguest 09 2020  1:30 PM - 5:00 PM","#420567",
                "Table Number 09","KESS pay","11$"));
    }
}

