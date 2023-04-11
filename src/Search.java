import java.sql.*;
import javax.swing.*;

public class Search {
    // centralised searching for driver data
    private String name;
    private String email;
    private String phone;
    private String plate;
    private String status;

    Search(String Name, String Email, String Phone) {
        String query = "SELECT * FROM driver where Name like '" +
                Name + "' or email like '" +
                Email + "' or phone_number like '" +
                Phone + "';";
        ResultSet rs;
        try {
            ConnectionClass obj = new ConnectionClass();
            rs = obj.stm.executeQuery(query);
            if (rs.next()) {
                name = rs.getString("name");
                email = rs.getString("email");
                phone = rs.getString("phone_number");
                plate = rs.getString("license_plate");
                status = rs.getString("status");
            } else {
                JOptionPane.showMessageDialog(null, "No such driver found.");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public String getName() {
        return name;
    }

    public String getAadhaar() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getStatus() {
        return status;
    }

    public String getPlate() {
        return plate;
    }
}
