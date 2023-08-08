package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Cart;
import entity.Category;
import entity.Item;
import entity.MyAccount;
import entity.Product;
import java.time.LocalDate;

public class DAO {

    Connection c = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    DBContext db = new DBContext();

    public List<Product> getAllProduct() {
        String sql = "select * from product";
        List<Product> list = new ArrayList();
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getInt(9)));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<Product> getAllByCateID(String id) {
        String sql = "select * from product\n"
                + "where cateID = ?";
        List<Product> list = new ArrayList();
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getInt(9)));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<Product> getAllByUserID(String id) {
        String sql = "select * from product\n"
                + "where sell_ID = ?";
        List<Product> list = new ArrayList();
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getInt(9)));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<Category> getAllCateGory() {
        String sql = "select * from category";
        List<Category> list = new ArrayList();
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public Product getProductByID(String id) {
        Product p = null;
        String sql = "select * from product\n"
                + "where id = ?";
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();
            while (rs.next()) {
                p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getInt(9));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public List<Product> searchProduct(String textSearch) {
        String sql = "select * from product\n"
                + "where name like ?";

        List<Product> list = new ArrayList();
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, "%" + textSearch + "%");
            rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getInt(9)));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public MyAccount checkLogin(String name, String pass) {
        MyAccount account = null;
        String sql = "select * from account\n"
                + "where [user] = ? and pass = ? ";
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            rs = st.executeQuery();
            while (rs.next()) {
                return new MyAccount(rs.getInt(1),rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void Register(String name, String pass) {
        String sql = "insert into account([amount],[user],pass,isSell,isAdmin)\n"
                + "values(?,?,?,?)";

        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setDouble(1, 0);
            st.setString(2, name);
            st.setString(3, pass);
            st.setInt(4, 0);
            st.setInt(5, 0);
            st.executeUpdate();
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public MyAccount checkRegister(String name) {
        MyAccount account = null;
        String sql = "select * from account\n"
                + "where user = ?";
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, name);
            rs = st.executeQuery();
            while (rs.next()) {
                return new MyAccount(rs.getInt(1),rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<MyAccount> getAllAccount() {
        String sql = "select * from account";
        List<MyAccount> list = new ArrayList();
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new MyAccount(rs.getInt(1),rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public void deleteProduct(String id) {

        String sql = "delete from product\n"
                + "where id = ?;";
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void AddProduct(String name, String image, String price, String title, String description, String CateID, String sellID,String quantity) {
        String sql = "insert into product(name,image,price,title,description,cateID,sell_ID,quantity)\n"
                + "values(?,?,?,?,?,?,?,?)";

        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, quantity);
            st.setString(2, name);
            st.setString(3, image);
            st.setString(4, price);
            st.setString(5, title);
            st.setString(6, description);
            st.setString(7, CateID);
            st.setString(8, sellID);

            st.executeUpdate();
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateProduct(String id, String name, String image, String price, String title, String description, String CateID, String sellID,String quantity) {
        String sql = "UPDATE product\n"
                + "SET [name] =?, [image]= ?, price =?,title=?,[description] =?,cateID=?,sell_ID=?,quantity=?\n"
                + "WHERE id = ?;";

        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2,image);
            st.setString(3, price);
            st.setString(4, title);
            st.setString(5, description);
            st.setString(6, CateID);
            st.setString(7, sellID);
            st.setString(8, quantity);
            st.setString(9, id);

            st.executeUpdate();
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void deleteAccount(String id) {

        String sql = "delete from account\n"
                + "where uID = ?;";
        try {
            c = db.getConnection();
            st = c.prepareStatement(sql);
            st.setString(1,id );
            st.executeUpdate();
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
     public int getCurentOrderid(Connection c) {

        String sql = "select top 1 id from [order] order by id desc";
        try {
            PreparedStatement stt = c.prepareStatement(sql);
            ResultSet rs = stt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return -1;
    }

    public void addOderdetail(Connection c, Cart cart) {
        int oid = getCurentOrderid(c);
        try {
            for (Item i : cart.getItems()) {
                String sqlll = "insert into [orderdetail] values(?,?,?,?)";
                PreparedStatement sttt = c.prepareStatement(sqlll);
                sttt.setInt(1, oid);
                sttt.setInt(2, i.getProduct().getId());
                int quantity = i.getQuantity();
                sttt.setInt(3, quantity);
                sttt.setDouble(4, i.getProduct().getPrice() * quantity);
                sttt.executeUpdate();

            }
        } catch (Exception e) {
        }
    }

    public void updateQuantity(Connection c, Cart cart) {
        String sql = "update product set quantity =quantity -? where id = ?";
        try {
            PreparedStatement st = c.prepareStatement(sql);
            for (Item i : cart.getItems()) {
                st.setInt(1, i.getQuantity());
                st.setInt(2, i.getProduct().getId());
                st.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }

    public void addOrder(MyAccount acc, Cart cart) {
        LocalDate currentDate = LocalDate.now();
        String date = currentDate.toString();
        c = db.getConnection();
        try {
            String sql = "insert into [order]  (date, cusid, totalmoney) values(?,?,?)";
            PreparedStatement st = c.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, acc.getId());
            st.setDouble(3, cart.gettTotalMoney());
            st.executeUpdate();
            addOderdetail(c, cart);
            updateQuantity(c, cart);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public double gettotalOrder(Connection c,int id) {
        String sql = "SELECT SUM(totalmoney) AS total_price FROM [order] where cusid =?;";
        try {
            PreparedStatement statement = c.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getDouble("total_price");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;

    }

    public void updateTotalCustomer(int id) {
        c = db.getConnection();
        String sql = "UPDATE account\n"
                + "SET amount = amount+?\n"
                + "WHERE uID = ?;";
        try {
            PreparedStatement statement = c.prepareStatement(sql);
            statement.setDouble(1, gettotalOrder(c,id));
            statement.setInt(2, id);
            statement.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        dao.Register("Huy", "1");
    }
}
