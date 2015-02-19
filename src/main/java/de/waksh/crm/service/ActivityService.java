package de.waksh.crm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import de.waksh.crm.dao.ActivityDAO;
import de.waksh.crm.model.Activity;
import de.waksh.crm.model.ActivityEntity;

public class ActivityService implements ActivityDAO{

	private DataSource dataSource;
	

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	
	@Override
	public ArrayList<ActivityEntity> getAllActivities(int id) {
		String sql = "SELECT * FROM `aktivitaeten_tabelle` "
				+ " LEFT JOIN medien_tabelle ON aktivitaeten_tabelle.medien_id = medien_tabelle.medien_id "
				+ " LEFT JOIN grund_f_aktivitaeten_tabelle ON aktivitaeten_tabelle.grund_id = grund_f_aktivitaeten_tabelle.grund_id"
				+ " WHERE aktivitaeten_tabelle.datum = " + id + " ORDER BY aktivitaeten_tabelle.datum DESC;";
		
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			String kundenBez ="Test-Kunde";
			String mitarbeiterBez ="Test-MA";
			
			ArrayList<ActivityEntity> activityList = new ArrayList<ActivityEntity>();
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				
				//kundenBez = getWebserviceFromERP
				//mitarbeiterBez = getWebserviceFromERP
				
				activityList.add(new ActivityEntity(rs.getInt("aktivitaeten_id"),
						
						rs.getInt("kunden_id"),
						kundenBez,
						rs.getDate("datum"),
						rs.getInt("mitarbeiter_id"),
						mitarbeiterBez,
						rs.getInt("medien_id"),
						rs.getString("medium"),
						rs.getInt("grund_id"),
						rs.getString("grund"),
						rs.getString("notizen")));
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
		
		String sql = "INSERT INTO `aktivitaeten_tabelle` "
				+ "(`aktivitaeten_id`, `kunden_id`,`datum`,`mitarbeiter_id`, "
				+ "`medien_id`,	`grund_id`,`notizen`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, activity.getAktivitaetenId());
			ps.setInt(2, activity.getKundenId());
			ps.setDate(3, activity.getDate());
			ps.setInt(4, activity.getMitarbeiterId());
			ps.setInt(5, activity.getMedienId());
			ps.setInt(6, activity.getGrundId());
			ps.setString(7, activity.getNotiz());

			System.out.println("PS   _:   " + ps.toString());
			//ps.executeUpdate();
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


	@Override
	public int insertNewGrund(String grund) {


		String sql = "INSERT INTO `grund_f_aktivitaeten_tabelle`"
				+ "(`grund_id`,`grund`) VALUES "
				+ "(?, ?)";
		String sqlCountGrund = "SELECT COUNT(*) FROM grund_f_aktivitaeten_tabelle;";
		Connection conn = null;
		int count = 0;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setString(2, grund);

			ps.executeUpdate();
			ps.close();
			
			ps = conn.prepareStatement(sqlCountGrund);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				
				count = rs.getInt("COUNT(*)");
				System.out.println("COUNT:    " + count);
			}
			rs.close();
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
		return count;
		
	}
}
