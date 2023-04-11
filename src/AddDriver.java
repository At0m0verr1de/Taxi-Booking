import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.*;

public class AddDriver implements ActionListener {
    JFrame f;
    JLabel l1, l2, l3, l4, l5;
    JTextField t1, t2, t3, t4, t5;
    JButton b1, b2;
    Utility util = new Utility();

    AddDriver() {

        f = new JFrame("Add Driver");
        f.setBackground(Color.white);
        f.setLayout(null);

        l1 = new JLabel("Email");
        l1.setBounds(40, 20, 1000, 30);
        f.add(l1);

        l2 = new JLabel("Name");
        l2.setBounds(40, 70, 1000, 30);
        f.add(l2);

        l3 = new JLabel("Phone No");
        l3.setBounds(40, 120, 1000, 30);
        f.add(l3);

        l4 = new JLabel("Plate");
        l4.setBounds(40, 170, 1000, 30);
        f.add(l4);

        l5 = new JLabel("Car Type");
        l5.setBounds(40, 220, 1000, 30);
        f.add(l5);

        t1 = new JTextField();
        t1.setBounds(150, 20, 150, 30);
        f.add(t1);

        t2 = new JTextField();
        t2.setBounds(150, 70, 150, 30);
        f.add(t2);

        t3 = new JTextField();
        t3.setBounds(150, 120, 150, 30);
        f.add(t3);

        t4 = new JTextField();
        t4.setBounds(150, 170, 150, 30);
        f.add(t4);

        t5 = new JTextField();
        t5.setBounds(150, 220, 150, 30);
        f.add(t5);

        b1 = new JButton("Back");
        b1.setBounds(40, 290, 120, 30);
        f.add(b1);

        b2 = new JButton("Register");
        b2.setBounds(200, 290, 120, 30);
        f.add(b2);

        b1.addActionListener(this);
        b2.addActionListener(this);

        f.getContentPane();
        f.setVisible(true);
        f.setSize(400, 400);
    }

    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == b2) {
            String email = t1.getText();
            String name = t2.getText();
            String phone = t3.getText();
            String plate = t4.getText();
            String carType = t5.getText();

            try {
                if (util.RegisterDriver(Integer.parseInt(carType), name, email, phone, plate) == 1) {
                    JOptionPane.showMessageDialog(null, "Driver Added");
                    f.dispose();
                    new AdminHome();
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        } else if (ae.getSource() == b1) {
            f.dispose();
        }
    }
}
