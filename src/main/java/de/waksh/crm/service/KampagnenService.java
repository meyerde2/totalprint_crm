package de.waksh.crm.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import de.waksh.crm.dao.KampagnenDAO;
import de.waksh.crm.model.ActivityEntity;
import de.waksh.crm.model.GeburtstageEntity;
import de.waksh.crm.model.SonderausgabeEntity;
import de.waksh.crm.model.WerbekampagnenEntity;

public class KampagnenService implements KampagnenDAO{

	@Autowired
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public ArrayList<SonderausgabeEntity> getAllSonderausgaben() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertSonderausgabe(SonderausgabeEntity sonderausgabe, int artId) {

		Connection conn = null;
		String sql = " INSERT INTO `bascrmdb`.`werbekampagnen_tabelle` "
				+ "(`werbekampagnen_id`, `name`, `art_id`, `startdatum`, `enddatum`, "
				+ "`grund_id`, `beilage_bei_id`, `zielgruppen_id`, `thema`, `anzahl_exemplare`, "
				+ "`anzahl_verkaeufe`, `anzahl_inserate`, `anzahl_beilagen`, `geschenkart_id`, "
				+ "`kosten`, `umsatz`, `resonanz`, `notizen`) "
				+ "VALUES "
				+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setString(2, sonderausgabe.getKampagnenBez());
			ps.setInt(3, artId);
			ps.setDate(4, sonderausgabe.getDateBeginn());
			ps.setDate(5, sonderausgabe.getDateUntil());
			ps.setInt(6, sonderausgabe.getGrundId());
			ps.setInt(7, sonderausgabe.getZielgruppeId());//beilage_bei_id??
			ps.setInt(8, sonderausgabe.getZielgruppeId());
			ps.setInt(9, sonderausgabe.getThemenId());
			ps.setInt(10, sonderausgabe.getAnzahlExemplare());
			ps.setInt(11, sonderausgabe.getAnzahlVerkaufteExemplare());
			ps.setInt(12, sonderausgabe.getAnzahlInserate());
			ps.setInt(13, 0);//anzahl_beilagen??
			ps.setInt(14, 1);//geschenkid??
			ps.setDouble(15, sonderausgabe.getKosten());
			ps.setDouble(16, sonderausgabe.getUmsatz());
			ps.setInt(17, sonderausgabe.getResonanz());
			ps.setString(18, sonderausgabe.getNotiz());
			
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
	public void insertGeburtstagsentity(GeburtstageEntity geburtstag) {
		
		Connection conn = null;
		String sql = " INSERT INTO `bascrmdb`.`werbekampagnen_tabelle` "
				+ "(`werbekampagnen_id`, `name`, `startdatum`, `enddatum`, "
				+ " `grund_id`, "
				+ " `geschenkart_id`, "
				+ " `kosten`, `resonanz`, `notizen`, `art_id`) "
				+ " VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setString(2, geburtstag.getKampagnenBez());
			ps.setDate(3, geburtstag.getDateBeginn());
			ps.setDate(4, geburtstag.getDateUntil());
			ps.setInt(5, geburtstag.getGrundId());
			ps.setInt(6, geburtstag.getGeschenkartId());
			ps.setDouble(7, geburtstag.getKosten());
			ps.setInt(8, geburtstag.getResonanz());
			ps.setString(9, geburtstag.getNotiz());
			ps.setInt(10, 3);
			
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
				+ " LEFT JOIN `geschenkart_tabelle` ON werbekampagnen_tabelle.geschenkart_id = `geschenkart_tabelle`.geschenkart_id "
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
						0, // themenId, 
						rs.getString("thema"), 
						rs.getInt("anzahl_exemplare"), 
						rs.getInt("anzahl_verkaeufe"), 
						rs.getInt("anzahl_inserate"), 
						rs.getInt("geschenkart_id"), 
						rs.getString("geschenkart"), 
						rs.getDouble("kosten"), 
						rs.getDouble("umsatz"), 
						rs.getInt("resonanz"),
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



}
