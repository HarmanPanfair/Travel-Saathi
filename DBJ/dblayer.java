package DBJ;
import java.sql.*;
public class dblayer
{
	public static String d="com.mysql.jdbc.Driver";
	public static String c="jdbc:mysql://localhost/travelsathi";
	public static String un="root";
	public static String pw="";
	public static boolean executeq(String q)
	{
		try    
		{
			Connection con;
			Class.forName(d);
			con=DriverManager.getConnection(c,un,pw);
			Statement s=con.createStatement();
			s.execute(q);
			con.close();
			return true;
		}
		catch(Exception ex)
		{
			return false;
		}
	}
	public static ResultSet getResult(String q)
	{
		try
		{
		    Connection con;
			Class.forName(d);
			con=DriverManager.getConnection(c,un,pw);
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery(q);
			return rs;
		}
		catch(Exception ex)
		{
			return null;
		}
	}
	public static String getScalar(String q)
	{
		try
		{
			ResultSet r=getResult(q);
			if(r.next()==false)
				return "";
			return r.getString(1);		
		}
		catch(Exception ex)
		{
			return null;
		}
			
	}
}