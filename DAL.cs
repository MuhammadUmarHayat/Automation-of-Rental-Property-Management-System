using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace MyPrototype
{
    public class DAL
    {
        private static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Moeedptdb;Integrated Security=True;Pooling=False";

        SqlConnection con = new SqlConnection(DAL.connectionString);


        public Boolean save(string tableName, string[] values)
        {
           
            

            string query = "";
            switch (tableName)
            {
                case "admins"://table_name
                    query = "insert into admins(username,password,status)  values('" + values[0] + "','" + values[1] + "','" + values[2] +  "')";
                    break;
                case "users":
                    query = "insert into users(name,sirname,username,password,email,language,usertype,status) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "')";
                    break;
                case "properties":
                    query = "insert into properties(title,description,category,type,area_size,location,address,city,amount,status,photo,remarks,owner) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "','" + values[8] + "','" + values[9] + "','" + values[10] + "','" + values[11] + "','" + values[12] + "')";
                    break;
                case "requests":
                    query = "insert into requests(tenant,property_no,req_date,status,owner) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] +  "')";
                    break;
                case "rental_contracts":
                    query = "insert into rental_contracts(owner,tentant,property_no,amount,doa,status,months,years,statement) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "','" + values[8] + "')";
                    break;
                case "transactions":
                    query = "insert into transactions(property_no,owner,tenant,contract_no,amont,dot,months,years,status,propertyTitle) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "','" + values[8] + "','" + values[9] + "')";
                    break;
                case "feedbacks":
                    query = "insert into feedbacks(landlord,tenant,rating,comment,dof,status,remarks,usertype)  values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "')";
                    break;
                default:
                    return false;

            }
            SqlCommand sqlCmd = new SqlCommand(query, con);
            con.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            con.Close();
            return true;
        }
        public DataTable show(string tableName)
        {
        
          
            string query = "";
            query = "select DISTINCT * from " + tableName + "";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;


        }


        
        public DataTable show(string tableName, string field1, string value)
        {
           
            string query = "";//select * from users where userid='ali'
            query = "select DISTINCT * from " + tableName + " where " + field1 + " = '" + value + "' ";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;


        }
        public Boolean isValidTransaction(string TenantName, string property_no,string month,string year  )
        {

            string query = "select * from transactions where property_no='"+property_no+"' and tenant='"+TenantName+"' and months='"+month+"' and years='"+year+"' ";
            //query = "";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count>0)
            {
                return false;
            }
            return true;


        }
        public DataTable bindProperty(string tenant)
        {


            
            string query = "SELECT rc.tentant AS TenantName, p.title AS PropertyTitle, p.description AS PropertyDescription FROM rental_contracts rc JOIN properties p ON rc.property_no = p.Id where rc.tentant = '" + tenant + "'";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;


        }

        public DataTable getRentalDetails(string proprtyTitle)
        {



            string query = "SELECT rc.tentant AS TenantName,rc.id AS contract_no,rc.owner AS Owner, rc.property_no As property_no, p.title AS PropertyTitle, p.description AS PropertyDescription FROM rental_contracts rc JOIN properties p ON rc.property_no = p.Id  where p.title = '"+proprtyTitle+"'";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;


        }




        public Boolean delete(string tableName, string tblID, string id)
        {
           
            string query = "";
            /// delete from users where userid='ali1'
            query = "delete from " + tableName + " where " + tblID + "=" + id + "";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            con.Open();
            sqlCmd.ExecuteNonQuery();// delete into db
            con.Close();
            return true;
        }

       
        public Boolean login(string username, string password,string userType)
        {
           
            string query = "";
            query = "select * from users where username='" + username + "' and password='" + password + "' and usertype='"+userType+"'";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }
        public Boolean isExist(string username, string email)
        {
           
            string query = "select * from users where username='" + username + "' or email='" + email + "'";
            DataTable dt = new DataTable();
           
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                return true;

            }
            return false;

        }
        public Boolean isAdmin(string username, string password)
        {
            
            string query = "select * from admins where username='" + username + "' and password='" + password + "'";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                return true;

            }
            return false;

        }

        public DataTable search(string type, string location,string size)
        {
           
            string query = "select DISTINCT * from properties where type='" + type + "' and location='"+location+"' and area_size='"+size+"'";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                return dt;

            }
            return null;

        }



        public string TotalMembers()
        {
            
            string totalMembers = "";
            string query = "select count(*) from users";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }
        //results for land lord
        public string TotalContracts(string username)
        {

            string totalContracts = "";
            string query = "select count(*) from rental_contracts where owner='"+username+"' and status='approved'";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalContracts = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalContracts;
        }
        public string TotalFeedbacks(string username)
        {

            string totalMembers = "";
            string query = "select count(*) from feedbacks where landlord='"+username+"'";

            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }
        public string TotalRevenue(string username)
        {

            string total = "";
            string query = "select sum(amont) from transactions where owner='"+username+"'";

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            total = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return total;



        }
        public string TotalProperties(string username)
        {

            string totalMembers = "";
            string query = "select count(*) from properties where owner='"+username+"'";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }

        public string TotalRequests(string username)
        {

            string total = "";
            string query = "select count(*) from requests where owner='" + username + "'";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            total= cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return total;



        }


        //results for admin
       
        public string TotalFeedbacks()
        {
            
            string totalMembers = "";
            string query = "select count(*) from feedbacks";

            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }
        public string TotalIncome()
        {
            
            string totalMembers = "";
            string query = "select sum(amont) from transactions";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }


        public string TotalProperties()
        {
            
            string totalMembers = "";
            string query = "select count(*) from properties";
           

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }
        public string TotalPropertyTypes()
        {
           
            string totalMembers = "";
            string query = "select count(type) from properties";

            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value
            con.Close();
            return totalMembers;



        }

      

        public DataTable RequestedProperties(string tenant)
        {
            string query = "SELECT p.id,p.title,p.owner,p.amount,r.tenant FROM properties AS p INNER JOIN requests AS r ON p.Id = r.property_no AND p.owner = r.owner And r.tenant = '"+tenant+"'";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                return dt;

            }
            return null;
        }

        public Boolean isRequestExist( string tenant, string property_no)
        {

            string query = "select * from requests where tenant='" + tenant + "' and property_no='" + property_no + "'";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)//  if request exists mean user already has been requested
            {
                return true;//yes

            }
            else
            {
                return false;//not
            }


        }

        public Boolean isContractExist(string tenant, string property_no)
        {

            string query = "select * from rental_contracts where tentant='" + tenant + "' and property_no='" + property_no + "'";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)//  if contract exists
            {
                return true;//yes

            }
            else
            {
                return false;//not
            }


        }

    }
}