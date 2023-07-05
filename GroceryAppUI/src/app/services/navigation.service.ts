import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable, map } from 'rxjs';
import {
  Category,
  NewProductt,
  Order,
  Payment,
  PaymentMethod,
  Product,
  User,
} from '../models/models';

@Injectable({
  providedIn: 'root',
})
export class NavigationService {
  baseurl = 'https://localhost:7149/api/Shopping/';

  constructor(private http: HttpClient) {}

  getCategoryList() {
    let url = this.baseurl + 'GetCategoryList';
   
    return this.http.get<any[]>(url).pipe(
      map((categories) =>
        categories.map((category) => {
          let mappedCategory: Category = {
            id: category.id,
            category: category.category,
            subCategory: category.subCategory,
          };
          return mappedCategory;
        })
      )
    );
  }

  getProducts(category: string, subcategory: string, count: number) {
    return this.http.get<any[]>(this.baseurl + 'GetProducts', {
      params: new HttpParams()
        .set('category', category)
        .set('subcategory', subcategory)
        .set('count', count),
    });
  }

  getProduct(id: number) {
    let url = this.baseurl + 'GetProduct/' + id;
    return this.http.get(url);
  }

  registerUser(user: User) {
    let url = this.baseurl + 'RegisterUser';
    return this.http.post(url, user, { responseType: 'text' });
  }

  loginUser(email: string, password: string) {
    let url = this.baseurl + 'LoginUser';
    return this.http.post(
      url,
      { Email: email, Password: password },
      { responseType: 'text' }
    );
  }

  submitReview(userid: number, productid: number, review: string) {
    let obj: any = {
      User: {
        Id: userid,
      },
      Product: {
        Id: productid,
      },
      Value: review,
    };

    let url = this.baseurl + 'InsertReview';
    return this.http.post(url, obj, { responseType: 'text' });
  }

  getAllReviewsOfProduct(productId: number) {
    let url = this.baseurl + 'GetProductReviews/' + productId;
    return this.http.get(url);
  }

  addToCart(userid: number, productid: number) {
    let url = this.baseurl + 'InsertCartItem/' + userid + '/' + productid;
    console.log(url);
    return this.http.post(url, null, { responseType: 'text' });
  }

  getActiveCartOfUser(userid: number) {
    let url = this.baseurl + 'GetActiveCartOfUser/' + userid;
    return this.http.get(url);
  }

  getAllPreviousCarts(userid: number) {
    let url = this.baseurl + 'GetAllPreviousCartsOfUser/' + userid;
    return this.http.get(url);
  }

  getPaymentMethods() {
    let url = this.baseurl + 'GetPaymentMethods';
    return this.http.get<PaymentMethod[]>(url);
  }

  insertPayment(payment: Payment) {
    console.log(payment);
    console.log((this.baseurl + 'InsertPayment'+ payment))
    return this.http.post(this.baseurl + 'InsertPayment', payment, {
      responseType: 'text',
    });
  }
  
  deleteFromCart(userid: number,productid:number): Observable<void>{

    return this.http.delete<void>(this.baseurl + 'DeleteCartItem/' + Number(userid) + '/' + Number(productid));

  }

  insertOrder(order: Order) {
    return this.http.post(this.baseurl + 'InsertOrder', order);
  }

  deleteProduct(id: number) {
    let url = this.baseurl + 'DeleteProduct/' + id;
    return this.http.delete(url);
  }

  addProduct(newProduct: NewProductt)
  {
    return this.http.post(this.baseurl + 'NewProduct', newProduct);
  }

  updateProduct(product: Product): Observable<Product> {

    // const url = `${this.baseurl}${UpdateProduct}${product.id}`;

    const url = this.baseurl + 'UpdateProduct/' + product.id;

    console.log(url);

    return this.http.put<Product>(url, product);

  }

 

}
