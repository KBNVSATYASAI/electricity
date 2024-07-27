package com.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PaymentDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/project";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Balu@123";

    public Payment getPaymentByElectricID(String electricID) {
        Payment payment = null;

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            String query = "SELECT electricID, amountDue FROM payments WHERE electricID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, electricID);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                payment = new Payment();
                payment.setElectricID(resultSet.getString("electricID"));
                payment.setAmountDue(resultSet.getString("amountDue"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return payment;
    }
}