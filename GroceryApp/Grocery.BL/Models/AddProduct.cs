using GroceryApp.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Grocery.BL.Models
{
    public class AddProduct
    {
        public int ProductId { get; set; }
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public int CategoryId { get; set; }
        public int OfferId { get; set; } 
        public double Price { get; set; }
        public int Quantity { get; set; }
        public string ImageName { get; set; } = string.Empty;
    }
}
