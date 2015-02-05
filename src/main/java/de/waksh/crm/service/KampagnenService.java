package de.waksh.crm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import de.waksh.crm.dao.KampagnenDAO;
import de.waksh.crm.model.SonderausgabeEntity;

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
	public void insertSonderausgabe(SonderausgabeEntity sonderausgabe) {

		String sql = "INSERT INTO `bascrmdb`.`Aktivitaeten_Tabelle`(`AktivitaetenID`, `KundenID`,`Datum`,`MitarbeiterID`, `MedienID`,	`GrundID`,`Notiz`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setInt(2, 321);
			//ps.setDate(3, sonderausgabe.getDate());
			//ps.setInt(4, sonderausgabe.getMitarbeiterId());
			//ps.setInt(5, sonderausgabe.getMedienId());
			ps.setInt(6, sonderausgabe.getGrundId());
			ps.setString(7, sonderausgabe.getNotiz());

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
	public void insertBeilage(SonderausgabeEntity beilage) {
		// TODO Auto-generated method stub
		
	}

}
