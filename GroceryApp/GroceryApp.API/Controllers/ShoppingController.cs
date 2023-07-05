using Grocery.BL.Models;
using GroceryApp.API.DataAccess;
using GroceryApp.API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace GroceryApp.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ShoppingController : ControllerBase
    {
        readonly IDataAccess dataAccess;
        private readonly string DateFormat;
        public ShoppingController(IDataAccess dataAccess, IConfiguration configuration)
        {
            this.dataAccess = dataAccess;
            DateFormat = configuration["Constants:DateFormat"];
        }

        [HttpGet("GetCategoryList")]
        public IActionResult GetCategoryList()
        {
            var result = dataAccess.GetProductCategories();
            return Ok(result);
        }

        [HttpGet("GetProducts")]
        public IActionResult GetProducts(string category, string subcategory, int count)
        {
            var result = dataAccess.GetProducts(category, subcategory, count);
            return Ok(result);
        }

        [HttpGet("GetProduct/{id}")]
        public IActionResult GetProduct(int id)
        {
            var result = dataAccess.GetProduct(id);
            return Ok(result);
        }

        [HttpPost("RegisterUser")]
        public IActionResult RegisterUser([FromBody] User user)
        {
            user.CreatedAt = DateTime.Now.ToString(DateFormat);
            user.ModifiedAt = DateTime.Now.ToString(DateFormat);

            var result = dataAccess.InsertUser(user);

            string? message;
            if (result) message = "Register Successfully";
            else message = "Email not available";
            return Ok(message);
        }

        [HttpPost("LoginUser")]
        public IActionResult LoginUser([FromBody] User user)
        {
            var token = dataAccess.IsUserPresent(user.Email, user.Password);
            if (token == "") token = "invalid";
            return Ok(token);
        }

        [HttpPost("InsertReview")]
        public IActionResult InsertReview([FromBody] Review review)
        {
            review.CreatedAt = DateTime.Now.ToString(DateFormat);
            dataAccess.InsertReview(review);
            return Ok("inserted");
        }

        [HttpGet("GetProductReviews/{productId}")]
        public IActionResult GetProductReviews(int productId)
        {
            var result = dataAccess.GetProductReviews(productId);
            return Ok(result);
        }

        [HttpPost("InsertCartItem/{userid}/{productid}")]
        public IActionResult InsertCartItem(int userid, int productid)
        {
            var result = dataAccess.InsertCartItem(userid, productid);
            return Ok(result ? "inserted" : "not inserted");
        }

        [HttpGet("GetActiveCartOfUser/{id}")]
        public IActionResult GetActiveCartOfUser(int id)
        {
            var result = dataAccess.GetActiveCartOfUser(id);
            return Ok(result);
        }

        [HttpGet("GetAllPreviousCartsOfUser/{id}")]
        public IActionResult GetAllPreviousCartsOfUser(int id)
        {
            var result = dataAccess.GetAllPreviousCartsOfUser(id);
            return Ok(result);
        }

        [HttpGet("GetPaymentMethods")]
        public IActionResult GetPaymentMethods()
        {
            var result = dataAccess.GetPaymentMethods();
            return Ok(result);
        }

        [HttpPost("InsertPayment")]
        public IActionResult InsertPayment(Payment payment)
        {
            payment.CreatedAt = DateTime.Now.ToString();
            var id = dataAccess.InsertPayment(payment);
            return Ok(id.ToString());
        }

        [HttpPost("InsertOrder")]
        public IActionResult InsertOrder(Order order)
        {
            order.CreatedAt = DateTime.Now.ToString();
            var id = dataAccess.InsertOrder(order);
            return Ok(id.ToString());
        }

       

        [HttpDelete("DeleteCartItem/{userId}/{productId}")]
        public void DeleteCartItem(int userId, int productId)
        {
            if (userId != null)
            {
                dataAccess.DeleteCartItem(userId, productId);
            }



        }



        [HttpDelete("DeleteProduct/{id}")]

        public void DeleteProduct(int id)
        {
            if (id != null)
            {
                dataAccess.DeleteProduct(id);
            }

        }

        [HttpPost("NewProduct")]
        public IActionResult NewProduct([FromBody] AddProduct product)
        {
            
            
            product.CategoryId = (int)product.CategoryId;
            product.OfferId = (int)product.OfferId;

            var result = dataAccess.newProduct(product);

            string? message;
            if (result) message = "inserted";
            else message = "email not available";
            return Ok(message);
        }

        [HttpPut("UpdateProduct/{productId}")]
        public IActionResult UpdateProduct(int productId, [FromBody] AddProduct updatedProduct)
        {
            var existingProduct = dataAccess.GetProduct(productId);
            if (existingProduct == null)
            {
                return NotFound(); // Product not found
            }
            // Update the existing product with the new data
            existingProduct.Title = updatedProduct.Title;
            existingProduct.Price = updatedProduct.Price;
            dataAccess.UpdateProduct(productId, updatedProduct); // Assuming you have a method to update the product in your data access layer
            return Ok(); // Return a success response
        }

    }
}
