import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.*;

public class AdminHome implements ActionListener {
    JFrame f;
    JButton b1, b2, b3, b4, b5, b6, b7, b8, b9;
    Utility util = new Utility();

    AdminHome() {
        f = new JFrame("Admin");
        f.setBackground(Color.WHITE);
        f.setLayout(null);

        b1 = new JButton("Customer Details"); // user details
        b1.setBounds(50, 50, 140, 120);
        f.add(b1);

        b2 = new JButton("Driver Details"); // driver details
        b2.setBounds(200, 50, 140, 120);
        f.add(b2);

        b3 = new JButton("Cab Type Details"); // Show number of rides of each cab type
        b3.setBounds(50, 180, 140, 120);
        f.add(b3);

        b4 = new JButton("Add Driver"); // Go back to App Home
        b4.setBounds(200, 180, 140, 120);
        f.add(b4);

        b5 = new JButton("Driver Update"); // Go back to App Home
        b5.setBounds(350, 50, 140, 120);
        f.add(b5);

        b6 = new JButton("Logout"); // Go back to App Home
        b6.setBounds(350, 180, 140, 120);
        f.add(b6);

        b1.addActionListener(this);
        b2.addActionListener(this);
        b3.addActionListener(this);
        b4.addActionListener(this);
        b5.addActionListener(this);
        b6.addActionListener(this);

        f.getContentPane();
        f.setVisible(true);
        f.setSize(550, 350);
    }

    public void actionPerformed(ActionEvent ee) {
        if (ee.getSource() == b1) {
            try {
                new CustomerDetails();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else if (ee.getSource() == b2) {
            try {
                new DriverDetails();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else if (ee.getSource() == b3) {
            try {
                new CabTypeDetails();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else if (ee.getSource() == b4) {
            new AddDriver();
        } else if (ee.getSource() == b5) {
            new DeleteDriver();
        } else if (ee.getSource() == b6) {
            f.dispose();
            new App();
        }
    }
}
