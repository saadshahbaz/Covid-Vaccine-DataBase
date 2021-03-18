import java.sql.* ;
import java.sql.Date;
import java.util.*;

public class VaccineApp {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		 String tableName = "";
	        int sqlCode=0;      // Variable to hold SQLCODE
	        String sqlState="00000";  // Variable to hold SQLSTATE


	        // Register the driver.  You must register the driver before you can use it.
	        try { DriverManager.registerDriver ( new com.ibm.db2.jcc.DB2Driver() ) ; }
	        catch (Exception cnfe){ System.out.println("Class not found"); }

	        // This is the url you must use for DB2.
	        //Note: This url may not valid now !
	        String url = "jdbc:db2://winter2021-comp421.cs.mcgill.ca:50000/cs421";

	        //REMEMBER to remove your user id and password before submitting your code!!
	        String your_userid = null;
	        String your_password = null;
	        //AS AN ALTERNATIVE, you can just set your password in the shell environment in the Unix (as shown below) and read it from there.
	        //$  export SOCSPASSWD=yoursocspasswd 
	        if(your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null)
	        {
	          System.err.println("Error!! do not have a password to connect to the database!");
	          System.exit(1);
	        }
	        if(your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null)
	        {
	          System.err.println("Error!! do not have a password to connect to the database!");
	          System.exit(1);
	        }
	        Connection con = DriverManager.getConnection (url,your_userid,your_password) ;
	        Statement statement = con.createStatement ( ) ;
	        
	        
	        Scanner s = new Scanner(System.in);
	        
	        while(true) {
	        	System.out.println("VaccineApp Main Menu\n 1. Add a Person \n 2. Assign a slot to a Person \n 3. Enter Vaccination information \n 4. Exit Application");
	        	System.out.print("Please Enter Your Option: ");
				int current_command = s.nextInt();
				
				if(current_command == 1) {
					add_Person(statement);
				}
				else if(current_command == 2) {
					Assign_a_slot_to_Person(statement);
				}else if(current_command ==3){
					Enter_Vaccination_information(statement);
				}
				else if(current_command == 4) {
					statement.close () ;
			        con.close () ;
					System.out.println("Terminating the program!");
					break;
				}
	        }      
	        
	}
	
	
	// creating a person
	public static void add_Person(Statement statement) throws SQLException {
		int sqlCode=0;
		String sqlState="00000";
		String tableName = "Person";
		System.out.println();
		Scanner input = new Scanner(System.in);
		input.useDelimiter("\n");
		//hinsnum
		System.out.print("Enter the Health Insurance Number: ");
		int hinsnum = input.nextInt();
		
		//pname
		System.out.print("Please enter the patient's name: ");
		String pname = input.next();
		
		//DOB
		System.out.print("Enter the Date of birth: ");
		String str = input.next();
		Date DOB= Date.valueOf(str);
		
		// DOR
		System.out.print("Enter the Date of Registration: ");
		String str1 = input.next();
		Date DOR= Date.valueOf(str1);
		
		//Phone number
		System.out.print("Enter the patient's Phone Number in this format XXX-XXX-XXXX: ");
		String phone = input.next();
		
		//gender
		System.out.print("Please enter the patient's gender: ");
		String gender = input.next();
		
		//pstreet address
		System.out.print("Please enter the patient's street address: ");
		String pstreetaddress = input.next();
		
		//City
		System.out.print("Please enter the patient's City: ");
		String city = input.next();
		
		//Postal Code
		System.out.print("Please enter the patient's Postal Code in this format XXX-XXX: ");
		String pcode = input.next();
		
		//cname
		System.out.print("Please enter the patient's Category: ");
		String cname = input.next();
		

		//Inserting data
        try
        {
          String insertSQL = "INSERT INTO " + tableName + " VALUES ("  + hinsnum +  ", \'"+pname+"\' "+ ", \'"+DOB+"\' "+ ", \'"+DOR+"\' " + ", \'"+phone+"\' " + ", \'"+gender+"\' " + ", \'"+pstreetaddress+"\' " + ", \'"+city+"\' " + ", \'"+pcode+"\' " + ", \'"+cname+"\' )";
          //System.out.println ( insertSQL ) ;
          statement.executeUpdate ( insertSQL ) ;
          System.out.println ( "The person with name: "+ pname + " and health insurance number: "+ hinsnum + " has successfully been added" ) ;
        }catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Person with Health Insurance Number: "+ hinsnum + " already exists!! ");
            Scanner new_update = new Scanner(System.in);
            System.out.print("Do you want to update the existing information? : ");
            String yes = new_update.next();
            
            if(yes.equals("yes")) {
            	 try
                 {
                   String updateSQL = "UPDATE " + tableName + " SET pname = " + "\'"+pname+"\' "+ ", DOB = \'"+DOB+"\' " + ", DOR = \'"+DOR+"\' " + ", phone = \'"+phone+"\' " + ", gender = \'"+gender+"\' " + ", pstreetaddress = \'"+pstreetaddress+"\' "+ ", city = \'"+city+"\' "+ ", ppcode = \'"+pcode+"\' " + ", cname = \'"+cname+"\' "+ " WHERE hinsnum = "+hinsnum;
            //       System.out.println(updateSQL);
                   statement.executeUpdate(updateSQL);
                   System.out.println("The person with Health Insurance Number: " + hinsnum + " has been successfully updated!");
                 }
                 catch (SQLException c)
                 {
                   sqlCode = e.getErrorCode(); // Get SQLCODE
                   sqlState = e.getSQLState(); // Get SQLSTATE
                           
                   System.out.println("Sorry, the update was NOT successful! Please try again in a bit!");
                 }

            }
            
          }
        
        System.out.println();
        System.out.println();
	
	}
	
	public static void Assign_a_slot_to_Person(Statement statement) throws SQLException {
		int sqlCode=0;
		String sqlState="00000";
		String tableName = "Slot";
		Scanner input = new Scanner(System.in);
		input.useDelimiter("\n");
		
		System.out.print("Enter the Health Insurance Number of the person to be given the slot: ");
		int hinsnum = input.nextInt();
		
		System.out.print("Enter the Location of the slot: ");
		String lname= input.next();
		
		System.out.print("Enter the date: ");
		String str1 = input.next();
		Date sdate= Date.valueOf(str1);
		
		
		String s  = "2021-02-01";
		Date todays_date = Date.valueOf(s);
		
		if(todays_date.compareTo(sdate) > 0) {
			System.out.println("You have entered a date that has already been gone! Enter a correct date!");
			 System.out.println();
		     System.out.println();
			return;
		}
		
		System.out.print("Enter the time ");
		String tr = input.next();
		Time stime= Time.valueOf(tr);
		
		System.out.print("Enter the area of the slot in the format ward-X: ");
		String sarea= input.next();
		
		  try
	        {
	          String querySQL = "SELECT Count(*) from " + tableName + " WHERE hinsnum ="+hinsnum;
	          java.sql.ResultSet rs = statement.executeQuery ( querySQL ) ;
	          rs.next();
	            int id = rs.getInt ( 1 ) ;
	            if(id != 0) {
	            	try
	    	        {
	    	          String querySQLL = "SELECT VACCINE.doses FROM VACCINE WHERE Vaccine.company = ANY (SELECT company from slot where hinsnum="+hinsnum+")";
	    	          java.sql.ResultSet rss = statement.executeQuery ( querySQLL ) ;
	    	          rss.next();
	    	          int max_dozes = rss.getInt(1);
	    	          
	    	          if(id >= max_dozes) {
	    	        	  System.out.println("The person has already been given the full vaccine doze which was " + max_dozes + "!!!");
	    	        	  System.out.println("\n");
	    	        	  return;
	    	          }
	    	          
	    	        }catch(SQLException c) {
	    	        	sqlCode = c.getErrorCode(); // Get SQLCODE
	    		          sqlState = c.getSQLState(); // Get SQLSTATE
	    		          System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
	    		          System.out.println(c);
	    	        }
	            }
	            try
	            {
	              String insertSQL = "INSERT INTO " + tableName + " VALUES (\'"+lname+"\' "+ ", \'"+sdate+"\' "+ ", \'"+sarea+"\' " + ", \'"+stime+"\' , " + hinsnum+" , \'"+sdate+"\', NULL, NULL, NULL, NULL )";
	      //        System.out.println ( insertSQL ) ;
	              statement.executeUpdate ( insertSQL ) ;
	              System.out.println ( "The slot on date: "+ sdate + ", time: " + stime + " and area: " +sarea+ " for health insurance number: "+ hinsnum + " has successfully been added!" ) ;
	            }catch(SQLException f) {
	            	System.out.println("The slot has already been assigned to someone else! Please try another slot!");
	            }
	        }
	        catch (SQLException e)
	        {
	          System.out.println("Unkown Error!");
	        }
		
		
	}
	
	public static void Enter_Vaccination_information(Statement statement) throws SQLException {
		int sqlCode=0;
		String sqlState="00000";
		String tableName = "Slot";
		Scanner input = new Scanner(System.in);
		input.useDelimiter("\n");
		
		System.out.print("Enter the Location of the slot: ");
		String lname= input.next();
		
		System.out.print("Enter the date: ");
		String str1 = input.next();
		Date sdate= Date.valueOf(str1);
		
		
		System.out.print("Enter the time ");
		String tr = input.next();
		Time stime= Time.valueOf(tr);
		
		System.out.print("Enter the area of the slot in the format ward-X: ");
		String sarea= input.next();
		
		System.out.print("Enter the Health Insurance Number of the person to be given the slot: ");
		int hinsnum = input.nextInt();
		
		System.out.print("Enter the Vaccine Company: ");
		String company = input.next();
		
		System.out.print("Enter the Batch Number: ");
		int batchnum = input.nextInt();
		
		System.out.print("Enter the Vial Number: ");
		int vialnumber = input.nextInt();
		
		System.out.print("Enter the Canadian Lisence number of the nurse: ");
		int canlisnum= input.nextInt();
		
		 try
	        {
	          String querySQL = "SELECT DISTINCT Company from " + tableName + " WHERE hinsnum ="+hinsnum + " and company is not null";
	          java.sql.ResultSet rs = statement.executeQuery ( querySQL ) ;
	          rs.next();
	          String id = rs.getString(1) ;
	           if(!id.equals(company)) {
	            	System.out.println("The person has been given the "+ id + " vaccine before! Please use that!");
	            	return;
	            }
	            
	        } catch (SQLException c) {}
		 
		 try
         {
           String updateSQL = "UPDATE " + tableName + " SET CanLisNum = "+canlisnum + ", company = \'"+company+"\' " + ", batchnum = "+batchnum+ ", vialnum = " + vialnumber+  " WHERE lname = \'"+lname + "\' and sdate = \'"+sdate+"\' "+ " and sarea =  \'"+sarea+"\' " + " and stime = \'"+stime+"\'";
           statement.executeUpdate(updateSQL);
           System.out.println("The person with Health Insurance Number: " + hinsnum + " has been successfully updated!");
         }
         catch (SQLException e)
         {
                   
           System.out.println("Sorry, the update was NOT successful! Please try again in a bit!");
         }
		
	}
	
	

}

