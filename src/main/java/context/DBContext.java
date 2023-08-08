package context;


import java.sql.Connection;
import java.sql.DriverManager;

//package context;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//public class DBContext {
//
public class DBContext {
    
        public Connection getConnection() {
       String url = "jdbc:sqlserver://localhost:1433;encrypt=true;trustServerCertificate=true;databaseName=shop1";
        String user = "sa";
        String password = "12345";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection c = DriverManager.getConnection(url, user, password);
            return c;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    
}
    public static void main(String[] args) {
        DBContext db = new DBContext();
        System.out.println(db.getConnection());
    }
}