using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace BooksWebApplication
{
    public static class DataUtilityClass
    {

        static System.Data.SqlClient.SqlConnection conn = null;

        static void ConnectToDB()
        {
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\BooksDB.mdf;Integrated Security=True";
            conn.Open();
        }

        static public void CloseDBConn()
        {
            conn.Close();
        }

        public static List<ClassBook> SelectAllBooks()
        {
            List<ClassBook> booksToReturn = new List<ClassBook>();
            try
            {
                ConnectToDB();
                string sql = "SELECT * FROM Books";
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(sql, conn);
                System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    booksToReturn.Add(new ClassBook(
                        Convert.ToInt16(reader["BookID"]),
                        reader["Title"].ToString(),
                        reader["PublishDate"].ToString(),
                        Convert.ToDecimal(reader["Price"]),
                        reader["SaleDate"].ToString(),
                        reader["Category"].ToString()
                        )
                    );
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Debug.WriteLine("An error has occurred: {0}", ex);
                booksToReturn = null;
            }
            CloseDBConn();
            return booksToReturn;
        }

        public static ClassBook SelectBookByID(int id)
        {
            ClassBook bookToReturn = null;
            try
            {
                ConnectToDB();
                string sql = "SELECT * FROM Books where BookID=" + id;
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(sql, conn);
                System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    bookToReturn = new ClassBook(
                        Convert.ToInt16(reader["BookID"]),
                        reader["Title"].ToString(),
                        reader["PublishDate"].ToString(),
                        Convert.ToDecimal(reader["Price"]),
                        reader["SaleDate"].ToString(),
                        reader["Category"].ToString()
                    );
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Debug.WriteLine("An error has occurred: {0}", ex);
            }
            CloseDBConn();
            return bookToReturn;
        }

        public static void InsertBook(ClassBook book)
        {
            try
            {
                ConnectToDB();
                string sql = "insert into Books(Title,PublishDate,Price,SaleDate,Category) values('" 
                    + book.Title + "', '" 
                    + book.PublishDate + "', " 
                    + book.Price + ",'"
                    + book.SaleDate + "', '" 
                    + book.Category + "')";
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(sql, conn);
                command.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Debug.WriteLine("An error has occurred: {0}", ex);
            }
            CloseDBConn();
        }
    }
}