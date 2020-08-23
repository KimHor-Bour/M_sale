package protocoderspoint.com.cardviewrecycleviewandroid;

import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.testcode.R;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private static RecyclerView.Adapter adapter;
    private RecyclerView.LayoutManager layoutManager;
    private static RecyclerView recyclerView;
    private static ArrayList<protocoderspoint.com.cardviewrecycleviewandroid.DataModel> data;
    static View.OnClickListener myOnClickListener;
    private static ArrayList<Integer> removedItems;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        myOnClickListener = new MyOnClickListener(this);

        recyclerView = (RecyclerView) findViewById(R.id.my_recycler_view);
        recyclerView.setHasFixedSize(true);

        layoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(layoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());

        data = new ArrayList<protocoderspoint.com.cardviewrecycleviewandroid.DataModel>();
        for (int i = 0; i < protocoderspoint.com.cardviewrecycleviewandroid.MyData.nameArray.length; i++) {
            data.add(new protocoderspoint.com.cardviewrecycleviewandroid.DataModel(
                    protocoderspoint.com.cardviewrecycleviewandroid.MyData.nameArray[i],
                    protocoderspoint.com.cardviewrecycleviewandroid.MyData.versionArray[i],
                    protocoderspoint.com.cardviewrecycleviewandroid.MyData.id_[i],
                    protocoderspoint.com.cardviewrecycleviewandroid.MyData.drawableArray[i]
            ));
        }

        removedItems = new ArrayList<Integer>();

        adapter = new protocoderspoint.com.cardviewrecycleviewandroid.CustomAdapter(data);
        recyclerView.setAdapter(adapter);
    }


    private static class MyOnClickListener implements View.OnClickListener {

        private final Context context;

        private MyOnClickListener(Context context) {
            this.context = context;
        }

        @Override
        public void onClick(View v) {
            removeItem(v);
        }

        private void removeItem(View v) {
            int selectedItemPosition = recyclerView.getChildPosition(v);
            RecyclerView.ViewHolder viewHolder
                    = recyclerView.findViewHolderForPosition(selectedItemPosition);
            TextView textViewName
                    = (TextView) viewHolder.itemView.findViewById(R.id.textViewName);
            String selectedName = (String) textViewName.getText();
            int selectedItemId = -1;
            for (int i = 0; i < protocoderspoint.com.cardviewrecycleviewandroid.MyData.nameArray.length; i++) {
                if (selectedName.equals(protocoderspoint.com.cardviewrecycleviewandroid.MyData.nameArray[i])) {
                    selectedItemId = protocoderspoint.com.cardviewrecycleviewandroid.MyData.id_[i];
                }
            }
            removedItems.add(selectedItemId);
            data.remove(selectedItemPosition);
            adapter.notifyItemRemoved(selectedItemPosition);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        super.onOptionsItemSelected(item);
        if (item.getItemId() == R.id.add_item) {
            //check if any items to add
            if (removedItems.size() != 0) {
                addRemovedItemToList();
            } else {
                Toast.makeText(this, "Nothing to add", Toast.LENGTH_SHORT).show();
            }
        }
        return true;
    }

    private void addRemovedItemToList() {
        int addItemAtListPosition = 3;
        data.add(addItemAtListPosition, new protocoderspoint.com.cardviewrecycleviewandroid.DataModel(
                protocoderspoint.com.cardviewrecycleviewandroid.MyData.nameArray[removedItems.get(0)],
                protocoderspoint.com.cardviewrecycleviewandroid.MyData.versionArray[removedItems.get(0)],
                protocoderspoint.com.cardviewrecycleviewandroid.MyData.id_[removedItems.get(0)],
                protocoderspoint.com.cardviewrecycleviewandroid.MyData.drawableArray[removedItems.get(0)]
        ));
        adapter.notifyItemInserted(addItemAtListPosition);
        removedItems.remove(0);
    }
}