package de.waksh.crm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import de.waksh.crm.dao.KampagnenDAO;
import de.waksh.crm.model.WerbekampagnenEntity;

public class KampagnenService implements KampagnenDAO{

	@Autowired
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}



	@Override
	public void insertKampagne(WerbekampagnenEntity k) {
		Connection conn = null;
		
		String sql = "INSERT INTO `werbekampagnen_tabelle`(`name`,"
				+ " `art_id`,`startdatum`,`enddatum`, `grund_id`, `beilage_bei_id`, "
				+ " `zielgruppen_id`, `zielgruppen_notizen`, `anzahl_exemplare`,"
				+ " `geschenk`, `budget`, `plankosten`, `werbemittel_id`, `notizen`)"
				+ " VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, k.getKampagnenBez());
			ps.setInt(2, k.getArtId());
			ps.setDate(3, k.getDateBeginn());
			ps.setDate(4, k.getDateUntil());
			ps.setInt(5, k.getGrundId());
			ps.setInt(6, k.getBeilageBeiId());
			ps.setInt(7, k.getZielgruppeId());
			ps.setString(8, k.getZielgruppenNotiz());
			ps.setInt(9, k.getAnzahlExemplare());
			ps.setString(10, k.getGeschenk());
			ps.setDouble(11, k.getBudget());
			ps.setDouble(12, k.getPlankosten());
			ps.setInt(13, k.getWerbemittelId());
			ps.setString(14, k.getNotiz());
			
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



	@Override
	public ArrayList<WerbekampagnenEntity> getAllKampagnen() {
		// TODO Auto-generated method stub
		
		String sql = "SELECT * FROM `werbekampagnen_tabelle`  LEFT JOIN `grund_f_werbekampagnen_tabelle` ON werbekampagnen_tabelle.grund_id = `grund_f_werbekampagnen_tabelle`.grund_id"
				+ "	LEFT JOIN `werbekampagnen_art_tabelle` ON werbekampagnen_tabelle.art_id = `werbekampagnen_art_tabelle`.art_id "
				+ " LEFT JOIN `beilage_bei_tabelle` ON werbekampagnen_tabelle.beilage_bei_id = `beilage_bei_tabelle`.beilage_bei_id "
				+ " LEFT JOIN `zielgruppen_tabelle` ON werbekampagnen_tabelle.zielgruppen_id = `zielgruppen_tabelle`.zielgruppen_id "
				+ ";";
		
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ArrayList<WerbekampagnenEntity> kampagnenList = new ArrayList<WerbekampagnenEntity>();
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				
				kampagnenList.add(new WerbekampagnenEntity(
						rs.getInt("werbekampagnen_id"),
						rs.getString("name"), 
						rs.getDate("startdatum"), 
						rs.getDate("enddatum"), 
						rs.getInt("art_id"), 
						rs.getString("art"), 
						rs.getInt("grund_id"),  
						rs.getString("grund"), 
						rs.getInt("beilage_bei_id"),  
						rs.getString("beilage_bei"), 
						rs.getInt("zielgruppen_id"),
						rs.getString("zielgruppe"), 
						rs.getString("zielgruppen_notizen"),
						rs.getString("thema"), 
						rs.getInt("anzahl_exemplare"), 
						rs.getInt("anzahl_verkaeufe"), 
						rs.getInt("anzahl_inserate"), 
						rs.getString("geschenk"), 
						rs.getDouble("kosten"), 
						rs.getDouble("umsatz"), 
						rs.getInt("resonanz"),
						rs.getDouble("plankosten"),
						rs.getDouble("budget"),
						rs.getInt("werbemittel_id"),
						rs.getString("notizen")));

			}
			
			rs.close();
			ps.close();
			return kampagnenList;
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
	public WerbekampagnenEntity getKampagneById(int id) {

		String sql = "SELECT * FROM `werbekampagnen_tabelle`  LEFT JOIN `grund_f_werbekampagnen_tabelle` ON werbekampagnen_tabelle.grund_id = `grund_f_werbekampagnen_tabelle`.grund_id"
				+ "	LEFT JOIN `werbekampagnen_art_tabelle` ON werbekampagnen_tabelle.art_id = `werbekampagnen_art_tabelle`.art_id "
				+ " LEFT JOIN `beilage_bei_tabelle` ON werbekampagnen_tabelle.beilage_bei_id = `beilage_bei_tabelle`.beilage_bei_id "
				+ " LEFT JOIN `zielgruppen_tabelle` ON werbekampagnen_tabelle.zielgruppen_id = `zielgruppen_tabelle`.zielgruppen_id "
				+ " WHERE `werbekampagnen_tabelle`.werbekampagnen_id = " + id + ";";
		
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			WerbekampagnenEntity kampagne = null;
			
			while (rs.next()) {
								
				 kampagne = new WerbekampagnenEntity(
						rs.getInt("werbekampagnen_id"),
						rs.getString("name"), 
						rs.getDate("startdatum"), 
						rs.getDate("enddatum"), 
						rs.getInt("art_id"), 
						rs.getString("art"), 
						rs.getInt("grund_id"),  
						rs.getString("grund"), 
						rs.getInt("beilage_bei_id"),  
						rs.getString("beilage_bei"), 
						rs.getInt("zielgruppen_id"),
						rs.getString("zielgruppe"), 
						rs.getString("zielgruppen_notizen"),
						rs.getString("thema"), 
						rs.getInt("anzahl_exemplare"), 
						rs.getInt("anzahl_verkaeufe"), 
						rs.getInt("anzahl_inserate"), 
						rs.getString("geschenk"), 
						rs.getDouble("kosten"), 
						rs.getDouble("umsatz"), 
						rs.getInt("resonanz"),
						rs.getDouble("plankosten"),
						rs.getDouble("budget"),
						rs.getInt("werbemittel_id"),
						rs.getString("notizen"));

			}
			rs.close();
			ps.close();
			
			return kampagne;
			
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
	public void updateKampagneById(WerbekampagnenEntity k) {

		String sql =" UPDATE `werbekampagnen_tabelle` "
			+ " SET	"
			+ "`name` = ?,	`art_id` = ?, `startdatum` = ?, `enddatum` = ?,	`grund_id` = ?,	"
			+ "`beilage_bei_id` = ?,`zielgruppen_id` = ?, `zielgruppen_notizen` = ?,  `anzahl_exemplare` = ?,	"
			+ "`geschenk` = ?,`budget` = ?, `plankosten` = ?,"
			+ "`werbemittel_id` = ?, `notizen` = ? "
			+ "WHERE `werbekampagnen_id` = " + k.getKampagnenId()+ ";";
		
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, k.getKampagnenBez());
			ps.setInt(2, k.getArtId());
			ps.setDate(3, k.getDateBeginn());
			ps.setDate(4, k.getDateUntil());
			ps.setInt(5, k.getGrundId());
			ps.setInt(6, k.getBeilageBeiId());
			ps.setInt(7, k.getZielgruppeId());
			ps.setString(8, k.getZielgruppenNotiz());
			ps.setInt(9, k.getAnzahlExemplare());
			ps.setString(10, k.getGeschenk());
			ps.setDouble(11, k.getBudget());
			ps.setDouble(12, k.getPlankosten());
			ps.setInt(13, k.getWerbemittelId());
			ps.setString(14, k.getNotiz());
			
			 // call executeUpdate to execute our sql update statement
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
