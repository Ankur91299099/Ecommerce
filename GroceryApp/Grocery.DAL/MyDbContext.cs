using GroceryApp.API.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using System.Xml;
using DocumentFormat.OpenXml.Spreadsheet;

namespace Grocery.DAL
{
    public class MyDbContext : DbContext
    {
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<User>().HasData(new User
            {
                Id = 1,
                FirstName = "Admin",
                LastName = "",
                Email = "admin@gmail.com",
                Mobile = "9129909929",
                Address = "Kanpur",
                Password = "admin@123",
                Role = "Admin",

            },
            new User
            {
                Id = 2,
                FirstName = "Admin1",
                LastName = "",
                Email = "admin1@gmail.com",
                Mobile = "9129909919",
                Address = "Delhi",
                Password = "admin1@123",
                Role = "Admin",

            });
        }
    }
}
