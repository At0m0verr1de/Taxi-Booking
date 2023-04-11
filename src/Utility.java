import javax.swing.*;
import java.sql.*;

public class Utility {

    ConnectionClass obj;

    Utility() {
        obj = new ConnectionClass();
    }

    public int Login(String email, String password, String authority) {
        try {
            String query = "select * from User where email = '" + email + "' and password = '" + password
                    + "' and authority = '" + authority + "';";
            ResultSet rs = obj.stm.executeQuery(query);
            if (rs.next()) {
                System.out.println("Login Successful");
                return 1;
            } else {
                JOptionPane.showMessageDialog(null, "Invalid Login Details");
                return 0;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public int RegisterUser(String email, String name, String password, String phone) {
        try {
            String q1 = "insert into user(name, password, email, phone_number) values('" + name + "','" + password
                    + "','" + email + "','" + phone + "');";
            int aa = obj.stm.executeUpdate(q1);
            if (aa == 1) {
                JOptionPane.showMessageDialog(null, "Account Created Successfully");
                return 1;
            } else {
                JOptionPane.showMessageDialog(null, "Please enter valid details");
                return 0;
            }
        } catch (SQLIntegrityConstraintViolationException e) {
            JOptionPane.showMessageDialog(null, "User already exists");
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public int RegisterAdmin(String email, String name, String password, String phone) {
        try {
            String q1 = "insert into user(name, password, email, phone_number, authority) values('" + name + "','"
                    + password
                    + "','" + email + "','" + phone + "', 'admin');";
            int aa = obj.stm.executeUpdate(q1);
            if (aa == 1) {
                JOptionPane.showMessageDialog(null, "Account Created Successfully");
                return 1;
            } else {
                JOptionPane.showMessageDialog(null, "Please enter valid details");
                return 0;
            }
        } catch (SQLIntegrityConstraintViolationException e) {
            JOptionPane.showMessageDialog(null, "User already exists");
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public int RegisterDriver(int type_id, String name, String email, String phone, String license_plate) {
        try {
            String q1 = "insert into driver(type_id, name, email, phone_number, license_plate, status) values("
                    + type_id + ",'" + name + "','" + email + "','" + phone + "','" + license_plate + "','available');";
            int aa = obj.stm.executeUpdate(q1);
            if (aa == 1) {
                JOptionPane.showMessageDialog(null, "Account Created Successfully");
                return 1;
            } else {
                JOptionPane.showMessageDialog(null, "Please enter valid details");
                return 0;
            }

        } catch (

        SQLIntegrityConstraintViolationException e) {
            JOptionPane.showMessageDialog(null, "Driver already exists");
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public int InsertCar(int type_id, String name, String email, String phone, String license_plate, String status) {
        try {
            String q1 = "insert into cab(type_id, name, email, phone_number, license_plate, status) values("
                    + type_id + ",'" + name + "','" + email + "','" + phone + "','" + license_plate + "','" + status
                    + "');";
            int aa = obj.stm.executeUpdate(q1);
            if (aa == 1) {
                JOptionPane.showMessageDialog(null, "Account Created Successfully");
                return 1;
            } else {
                JOptionPane.showMessageDialog(null, "Please enter valid details");
                return 0;
            }

        } catch (

        SQLIntegrityConstraintViolationException e) {
            JOptionPane.showMessageDialog(null, "Cab already exists");
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public void UpdateDriver(String name, String email, String phone, String plate, String status) {
        try {
            String q1 = "update driver set name = '" + name + "', email = '" + email + "', phone_number = '" + phone
                    + "', license_plate = '" + plate + "', status = '" + status + "' where phone_number = '" + phone
                    + "';";
            int aa = obj.stm.executeUpdate(q1);
            if (aa == 1) {
                JOptionPane.showMessageDialog(null, "Account Updated Successfully");
            } else {
                JOptionPane.showMessageDialog(null, "Please enter valid details");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
