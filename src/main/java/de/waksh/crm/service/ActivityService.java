package de.waksh.crm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import de.waksh.crm.dao.ActivityDAO;
import de.waksh.crm.model.Activity;

public class ActivityService implements ActivityDAO{

	private DataSource dataSource;
	

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	
	@Override
	public ArrayList<Activity> getAllActivities() {
		String sql = "SELECT * FROM `bascrmdb`.`Aktivitaeten_Tabelle`;";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ArrayList<Activity> activityList = new ArrayList<Activity>();
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				activityList.add(new Activity(rs.getInt("AktivitaetenID"),
						rs.getInt("KundenID"),
						rs.getDate("Datum"),
						rs.getInt("MitarbeiterID"),
						rs.getInt("MedienID"),
						rs.getInt("GrundID"),
						rs.getString("Notiz")));
			}
			rs.close();
			ps.close();
			return activityList;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}


	@Override
	public String getMediumById(int id) {
		
		String sql = "SELECT * FROM bascrmdb.Medien_Tabelle WHERE MedienID = '"+id+"';";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			String strMedium = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				
				strMedium = rs.getString("Medium");

			}
			rs.close();
			ps.close();
			return strMedium;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}


	@Override
	public String getGrundById(int id) {
		
		String sql = "SELECT * FROM bascrmdb.Grund_f_Aktivitaeten_Tabelle WHERE GrundID ='" + id + "';";

		Connection conn = null;

		try {
			
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			String strGrund = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				
				strGrund = rs.getString("Grund");

			}
			rs.close();
			ps.close();
			return strGrund;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}


	@Override
	public void insertActivity(Activity activity) {
		
		String sql = "INSERT INTO `bascrmdb`.`Aktivitaeten_Tabelle`(`AktivitaetenID`, `KundenID`,`Datum`,`MitarbeiterID`, `MedienID`,	`GrundID`,`Notiz`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setInt(2, 321);
			ps.setDate(3, activity.getDate());
			ps.setInt(4, activity.getMitarbeiterId());
			ps.setInt(5, activity.getMedienId());
			ps.setInt(6, activity.getGrundId());
			ps.setString(7, activity.getNotiz());

			System.out.println("PS   _:   " + ps.toString());
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
		
	}
}
