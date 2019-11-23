package common;

import java.sql.*;
import java.util.Enumeration;
import java.util.Properties;
import java.util.ResourceBundle;

public class DBManager {
    private static DBManager instance;
    private ResourceBundle properties;

    private DBManager() {
        properties = ResourceBundle.getBundle("common/config");

        try {
            Class.forName(properties.getString("DB_DRIVER"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static DBManager getInstance() {
        if (instance == null) {
            synchronized (DBManager.class) {
                instance = new DBManager();
            }
        }
        return instance;
    }

    /**
     * permet de tester la connexion à la DB
     *
     * @param args
     */
    public static void main(String[] args) {
        Connection c = DBManager.getInstance().getConnection();
        if (c != null) {
            try {
                System.out.println("Connection to db : " + c.getCatalog());
                Properties p = c.getClientInfo();
                Enumeration<Object> keys = p.keys();
                while (keys.hasMoreElements()) {
                    String key = (String) keys.nextElement();
                    System.out.println(key + ":" + p.getProperty(key));
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                DBManager.getInstance().cleanup(c, null, null);
            }
        }
    }

    public Connection getConnection() {

        Connection connection = null;
        try {
            connection = DriverManager.getConnection(properties.getString("JDBC_URL") + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", properties.getString("DB_LOGIN"),
                    properties.getString("DB_PASSWORD"));
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return connection;

    }

    public void cleanup(Connection connection, Statement stat, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stat != null) {
            try {
                stat.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}