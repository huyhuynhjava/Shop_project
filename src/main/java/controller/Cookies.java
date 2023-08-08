/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import entity.Item;
import java.util.List;
import javax.servlet.http.Cookie;

/**
 *
 * @author HuyHK
 */
public class Cookies {
    public static StringBuilder getCookies( Cookie[] arr ){
           StringBuilder cartContentBuilder = new StringBuilder();
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                   cartContentBuilder.append(o.getValue());
                }
            }
            return cartContentBuilder;
        }
        return new StringBuilder();
    }
    
     public static StringBuilder rewriteCookies(List<Item> listItem ){
         StringBuilder  cartContentBuilder = new StringBuilder();
            for (Item i : listItem) {
            cartContentBuilder.append(i.getProduct().getId()).append(":").append(i.getQuantity()).append("-");
        }
        if (!cartContentBuilder.isEmpty()) {
            cartContentBuilder.deleteCharAt(cartContentBuilder.length() - 1);
        }
        return cartContentBuilder;
    }
}
