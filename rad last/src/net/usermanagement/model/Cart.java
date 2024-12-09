package net.usermanagement.model;
import java.util.List;

public class Cart {
    private int id;
    private List<Item> items;

    public Cart(int id, List<Item> items) {
        this.id = id;
        this.items = items;
    }
    
    public Cart() {}
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
