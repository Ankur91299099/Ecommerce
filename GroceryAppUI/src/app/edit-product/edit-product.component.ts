import { Component, OnInit } from '@angular/core';
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { User } from '../models/models';
import { NavigationService } from '../services/navigation.service';
import { ActivatedRoute, Router } from '@angular/router';
import { UtilityService } from '../services/utility.service';

 @Component({
   selector: 'app-edit-product',
   templateUrl: './edit-product.component.html',
   styleUrls: ['./edit-product.component.css']
 })
 export class EditProductComponent implements OnInit {




  productId: any;

  product: any;

  constructor(

    private route: ActivatedRoute,

    private router: Router,

    private navigationService: NavigationService,

    public utilityService : UtilityService




  ) { }




  ngOnInit(): void {

    // Get the product ID from the route parameters

    console.log("hello")

    this.product = this.utilityService.getProductById();

    console.log(this.product);

    this.route.params.subscribe(params => {

      this.productId = +params['id']; // Assuming the parameter is named 'id'

      this.getProduct();




    });

  }




  getProduct(): void {

    console.log("get Product");

    this.navigationService.getProduct(this.productId).subscribe(product => {

      this.product = product;

    });

  }




  updateProduct(): void {

    console.log("update Product");

    this.navigationService.updateProduct(this.product).subscribe(() => {
      this.router.navigate(['/home']);
    });
  }
}
 
