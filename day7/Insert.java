import java.sql.*;
public class Insert {
    public static void main(String[] args) 
    {
        String url = "jdbc:mysql://localhost:3306/studentdb";
        String user = "root";
        String pass = "your_password";
        String sql = "INSERT INTO students (id, name, marks) VALUES (?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(url, user, pass);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, 101);
            stmt.setString(2, "Ravi");
            stmt.setInt(3, 85);
            int rows = stmt.executeUpdate();
            System.out.println(rows + " row(s) inserted.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
