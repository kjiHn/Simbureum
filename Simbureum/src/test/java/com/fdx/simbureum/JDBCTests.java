/*
 * package com.fdx.simbureum;
 * 
 * import static org.junit.Assert.*;
 * 
 * import java.sql.Connection; import java.sql.DriverManager;
 * 
 * import org.junit.Test;
 * 
 * import lombok.extern.log4j.Log4j;
 * 
 * @Log4j public class JDBCTests {
 * 
 * static { try { Class.forName("oracle.jdbc.driver.OracleDriver");
 * 
 * } catch (Exception e) { e.printStackTrace(); } }
 * 
 * 
 * 
 * @Test public void testConnection() { try(Connection con =
 * DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:XE",
 * "haejwoHalge", "1234" )) { log.info(con); //INFO :
 * org.zerock.persistence.JDBCTests - oracle.jdbc.driver.T4CConnection@e580929 }
 * catch (Exception e) { fail(e.getMessage()); } }
 * 
 * }
 */