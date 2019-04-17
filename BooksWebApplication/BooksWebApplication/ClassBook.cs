using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BooksWebApplication
{
    public class ClassBook
    {

        public ClassBook(String title, String publishDate, Decimal price, String saleDate, String category)
        {
            Title = title;
            PublishDate = publishDate;
            Price = price;
            SaleDate = saleDate;
            Category = category;
        }

        public ClassBook(int bookID, String title, String publishDate, Decimal price, String saleDate, String category)
        {
            BookID = bookID; 
            Title = title;
            PublishDate = publishDate;
            Price = price;
            SaleDate = saleDate;
            Category = category;
        }

        public int BookID { get; set; }
        public String Title {get;set;}
        public String PublishDate { get; set; }
        public Decimal Price { get; set; }
        public String SaleDate { get; set; }
        public String Category { get; set; }

    }
}