/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HuyHK
 */
public final class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList();
    }

    public List<Item> getItems() {
        return items;
    }

    public Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public void addItem(Product p, int id, int quantity) {
        if (p != null) {
            Item existingItem = getItemById(id);
            if (existingItem != null) {
                if (existingItem.getQuantity() >= existingItem.getProduct().getQuantity()) {
                    existingItem.setQuantity(existingItem.getProduct().getQuantity());
                } else {
                    existingItem.setQuantity(existingItem.getQuantity() + quantity);
                }

            } else {
                Item t = null;
                if (quantity >= p.getQuantity()) {
                    t = new Item(p, p.getQuantity(), p.getPrice());
                } else {
                    t = new Item(p, quantity, p.getPrice());
                }
                items.add(t);
            }
        }
    }

    public double gettTotalMoney() {
        double t = 0;
        for (Item i : items) {
            t += (i.getQuantity() * i.getPrice());
        }
        return t;
    }

    public Product getProductById(int id, List<Product> list) {
        for (Product p : list) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }

    public Cart(String txt, List<Product> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && !txt.isEmpty()) {
                String[] arr = txt.split("-");
                for (String i : arr) {
                    String[] arr2 = i.split(":");
                    int id = Integer.parseInt(arr2[0]);
                    int quantity = Integer.parseInt(arr2[1]);
                    Product p = getProductById(id, list);
                    addItem(p, id, quantity);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
